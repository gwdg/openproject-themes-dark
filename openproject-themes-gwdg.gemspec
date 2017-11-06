# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "open_project/themes/gwdg/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject-themes-gwdg"
  s.version     = OpenProject::Themes::GWDG::VERSION
  s.authors     = ["GWDG"]
  s.email       = ["support@gwdg.de"]
  s.homepage    = "https://www.gwdg.de"
  s.summary     = "OpenProject GWDG Theme"
  s.description = "Theme with GWDG image for OpenProject."
  s.license     = "Apache License, Version 2.0"

  s.files = Dir["{app,lib}/**/*"] + %w(CHANGELOG.md README.md)

  s.add_dependency 'rails', '~> 5.0.4'
end
