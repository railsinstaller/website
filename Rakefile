require 'rake'
require 'gh_contributors'

namespace :update do
  desc "Update list of contributors"
  task :contributors do
    data = GhContributors.for_org('railsinstaller').data
    File.open('source/_contributors.erb', 'w') do |file|
      data.each do |username, info|
        file.puts "<a href='https://github.com/#{username}' " +
        "title='#{username} - #{info['contributions']}'>\n" +
        "  <img alt='#{username} - #{info['contributions']}' " +
        "class='img-rounded' src='#{info['avatar_url']}' " +
        "width='29px' height='29px'>\n</a>"
      end
    end
  end
end
