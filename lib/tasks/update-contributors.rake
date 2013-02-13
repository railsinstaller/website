require 'gh_contributors'

namespace :update do
  desc "Update list of contributors"
  task :contributors do
    GhContributors.for_org('railsinstaller').to_urls.update_files(%w{
      public/index.html
      app/views/welcome/windows.html
      app/views/welcome/mac.html
    })
  end
end
