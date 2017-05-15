module OpenProject
  module Themes
    module GWDG
      require 'open_project/themes/gwdg/engine'

      def self.assets_path
        @assets_path ||= Engine.root.join('app/assets').to_s
      end
    end
  end
end
