# Prevent load-order problems in case openproject-plugins is listed after a plugin in the Gemfile
# or not at all
require 'open_project/plugins'
require 'open_project/themes/gwdg/version'

module OpenProject::Themes::GWDG
  class Engine < ::Rails::Engine
    engine_name :openproject_themes_gwdg

    include OpenProject::Plugins::ActsAsOpEngine

    register 'openproject-themes-gwdg',
      author_url: 'https://www.gwdg.de',
      requires_openproject: ">= 7.0.0"

  end
end
