require 'json'
require 'open-uri'

def load_array(url, *vars)
  open(url) do |repos_json|
    repos = JSON.load(repos_json)
    repos.map{|repo|
      Hash[vars.map{|var| [var, repo[var]]}]
    }
  end
end

def update_file(file)
  text = File.read(file)
  text = yield text
  File.open(file, 'w') { |f| f.write(text) }
end

namespace :update do
  desc "Update list of contributors"
  task :contributors do
    data = load_array(
      'https://api.github.com/orgs/railsinstaller/repos', 'name', 'contributors_url'
    ).map{ |repo|
      puts "repository: #{repo['name']}"
      load_array(repo['contributors_url'], 'login', 'avatar_url', 'url', 'contributions')
    }.flatten.group_by {|c|
      c['login']
    }.map {|login, data|
      [login, {
        'avatar_url'    => data.first['avatar_url'],
        'url'           => data.first['url'],
        'contributions' => data.map{|repo| repo['contributions'].to_i}.inject(&:+)
      }]
    }.sort_by{|login,data|
      [1000000/data['contributions'], login]
    }.map {|login, data|
      title = "#{login} - #{data['contributions']}"
      puts "user: #{title}"
      %Q{<a href="#{data['url']}" title="#{title}"><img src="#{data['avatar_url']}" alt="#{title}"/></a>}
    }
    search = /<span class="contributors">.*<\/span>/
    data   = %Q{<span class="contributors">\n#{data.join("\n")}\n</span>}
    %w{
      public/index.html
      app/views/welcome/windows.html
      app/views/welcome/mac.html
    }.each{|file|
      puts "file: #{file}"
      update_file(file){ |text| text.sub(search, data) }
    }
  end
end
