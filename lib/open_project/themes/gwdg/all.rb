require 'open_project/themes/theme'

module OpenProject::Themes::GWDG
  class GWDGTheme < OpenProject::Themes::Theme

    def name
      'GWDG Theme'
    end

    def assets_path
      OpenProject::Themes::GWDG.assets_path
    end
  end
end
