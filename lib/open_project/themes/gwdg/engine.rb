# Prevent load-order problems in case openproject-plugins is listed after a plugin in the Gemfile
# or not at all
require 'open_project/plugins'
require 'open_project/themes/gwdg/version'
require 'fileutils'

module OpenProject::Themes::GWDG
  class Engine < ::Rails::Engine
    engine_name :openproject_themes_gwdg

    include OpenProject::Plugins::ActsAsOpEngine

    register 'openproject-themes-gwdg',
      author_url: 'https://www.gwdg.de',
      requires_openproject: ">= 7.0.0"

    #Overrides (replaces) the original files of OpenProject with the files from the plugin
    config.to_prepare do
      #Replaces desing.rb
      FileUtils.cp(File.join(Gem.loaded_specs['openproject-themes-gwdg'].full_gem_path, 'lib', 'open_project', 'design.rb'), Rails.root.join('lib', 'open_project', 'design.rb'))
      #Copies new logo
      FileUtils.cp(File.join(Gem.loaded_specs['openproject-themes-gwdg'].full_gem_path, 'app', 'assets', 'images', 'themes-gwdg', 'gwdg_logo_only_invert.svg'), Rails.root.join('app', 'assets', 'images', 'gwdg_logo_only_invert.svg'))
      #Replaces stylesheet files
      [
        'layout/_footer.sass', 'layout/_top_menu.sass', #Top menu (header) and footer
        'layout/_base.sass', 'layout/_breadcrumb.sass', 'layout/_main_menu.sass', #Main menu (left menu) and breadcrumb
        'content/_buttons.sass', 'layout/_toolbar.sass' #Buttons and toolbar
      ].each do |overriden_file|
        FileUtils.cp(File.join(Gem.loaded_specs['openproject-themes-gwdg'].full_gem_path, 'app', 'assets', 'stylesheets', overriden_file), Rails.root.join('app', 'assets', 'stylesheets', overriden_file))
      end
    end

  end
end
