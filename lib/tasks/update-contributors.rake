require 'gh_contributors'

namespace :update do
  desc "Update list of contributors"
  task :contributors do
    data = GhContributors.for_org('railsinstaller').data
    File.open('app/views/shared/_contributors.html', 'w') do |file|
      data.each do |row|
        username = row[0]
        info = row[1]
        file.puts "<a href='https://github.com/#{username}' " +
        "title='#{username} - #{info['contributions']}'>\n" +
        "  <img alt='#{username} - #{info['contributions']}' " +
        "class='img-rounded' src='#{info['avatar_url']}'>\n</a>"
      end
    end
  end
end
