module OpenProject::Themes::GWDG
  class Engine < ::Rails::Engine
    engine_name :openproject_themes_gwdg

    initializer 'themes.gwdg.register_themes' do
      ActiveSupport.on_load(:themes) do
        require 'open_project/themes/gwdg/all'
      end
    end

    config.to_prepare do
      require 'redmine/plugin'
      require 'open_project/themes/gwdg/version'

      Redmine::Plugin.register 'GWDG-Theme' do
        name 'OpenProject GWDG Theme'
        author 'GWDG'
        description 'Custom GWDG theme for OpenProject'

        url 'https://github.com/gwdg/openproject-themes-gwdg'
        author_url 'https://www.gwdg.de'

        version OpenProject::Themes::GWDG::VERSION

        requires_openproject ">= 6.1.0"
      end
    end
  end
end
