require File.expand_path("../boot", __FILE__)

require "rails/all"

Bundler.require(:default, Rails.env) if defined?(Bundler)

module RailsinstallerWeb
  class Application < Rails::Application

    config.action_view.javascript_expansions[:defaults] = %w(jquery rails)
    config.encoding = "utf-8"
    config.filter_parameters += [:password]

  end
end
