#-- encoding: UTF-8
#-- copyright
# OpenProject is a project management system.
# Copyright (C) 2012-2017 the OpenProject Foundation (OPF)
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License version 3.
#
# OpenProject is a fork of ChiliProject, which is a fork of Redmine. The copyright follows:
# Copyright (C) 2006-2017 Jean-Philippe Lang
# Copyright (C) 2010-2013 the ChiliProject Team
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
# See doc/COPYRIGHT.rdoc for more details.
#++

module OpenProject
  class Design
    DEFAULTS = {
      #For header and main footer background, main body title fonts, menu item fonts
      'gwdg-dark-gray1'                                      => "#455761",
      #For main body fonts
      'gwdg-dark-gray2'                                      => "#333333",
      #For left main manu
      'gwdg-dark-gray3'                                      => "#2E3233",
      #For header menu fonts, background of main menu items
      'gwdg-light-gray1'                                     => "#F1F4F5",
      #For main body background
      'gwdg-light-gray2'                                     => "#F5F7F9",
      #For lower footer icons and text, upper footer background
      'gwdg-light-gray3'                                     => "#C8D2D7",

      'gwdg-light-gray4'                                     => "#E5E5E5",
      #For background of main menu
      'gwdg-light-gray5'                                     => "#E2E8EB",
      #For some backgrounds, font in links, hover fonts
      'gwdg-light-blue1'                                     => "#00AEEF",
      #For hover of some backgrounds
      'gwdg-light-blue2'                                     => "#2FA4F5",
      #For some buttons
      'gwdg-light-green1'                                    => "#009C96",
      #For some buttons hover
      'gwdg-light-green2'                                    => "#2F929C",


      'gwdg-header-background-color'                         => "$gwdg-dark-gray1",
      'gwdg-header-item-background-color'                    => "$gwdg-dark-gray1",
      'gwdg-header-item-background-hover-color'              => "$gwdg-dark-gray1",
      'gwdg-header-item-font-color'                          => "$gwdg-light-gray1",
      'gwdg-header-item-font-hover-color'                    => "$gwdg-light-blue1",
      'gwdg-header-drop-down-background-color'               => "$gwdg-dark-gray1",
      'gwdg-header-drop-down-background-hover-color'         => "$gwdg-dark-gray1",
      'gwdg-header-drop-down-font-color'                     => "$gwdg-light-gray1",
      'gwdg-header-drop-down-font-hover-color'               => "$gwdg-light-blue1",
      'gwdg-header-drop-down-item-background-color'          => "white",
      'gwdg-header-drop-down-item-background-hover-color'    => "white",
      'gwdg-header-drop-down-item-font-color'                => "$gwdg-dark-gray1",
      'gwdg-header-drop-down-item-font-hover-color'          => "$gwdg-light-blue1",

      'gwdg-body-background-color'                           => "$gwdg-light-gray2",
      'gwdg-body-title-font-color'                           => "$gwdg-dark-gray1",
      'gwdg-body-font-color'                                 => "$gwdg-dark-gray2",

      'gwdg-lower-footer-background-color'                   => "black",
      'gwdg-lower-footer-background-hover-color'             => "black",
      'gwdg-lower-footer-font-color'                         => "$gwdg-light-gray3",
      'gwdg-lower-footer-link-hover-color'                   => "white",

      'gwdg-main-menu-border-color'                          => "darken($gwdg-light-gray3, 10)",
      'gwdg-main-menu-background-color'                      => "$gwdg-light-gray3",
      'gwdg-main-menu-background-hover-selected-color'       => "$gwdg-light-gray3",
      'gwdg-main-menu-font-color'                            => "$gwdg-dark-gray1",
      'gwdg-main-menu-selected-font-color'                   => "$gwdg-light-blue1",
      'gwdg-main-menu-child-border-color'                    => "darken($gwdg-light-gray2, 10)",
      'gwdg-main-menu-child-background-color'                => "$gwdg-light-gray2",
      'gwdg-main-menu-child-background-hover-selected-color' => "$gwdg-light-gray2",
      'gwdg-main-menu-child-font-color'                      => "$gwdg-dark-gray1",
      'gwdg-main-menu-child-selected-font-color'             => "$gwdg-light-blue1",

      'gwdg-breadcrumb-bg-color'                             => "$gwdg-light-gray3",
      'gwdg-breadcrumb-border-color'                         => "darken($gwdg-light-gray3, 10)",
      'gwdg-breadcrumb-font-color'                           => "$gwdg-dark-gray1",
      'gwdg-breadcrumb-font-hover-selected-color'            => "$gwdg-light-blue1",




      'primary-color'                                        => "#3493B3",
      'primary-color-dark'                                   => "#06799F",
      'alternative-color'                                    => "#35C53F",
      'body-font-family'                                     => "'Lato', 'Lucida Grande', Helvetica, Arial, sans-serif",
      'gray'                                                 => "#EAEAEA",
      'gray-dark'                                            => "#878787",
      'gray-light'                                           => "#F8F8F8",
      'gray-lighter'                                         => "#E9E9E9",
      'light-gray'                                           => "#CCCCCC",
      'body-background'                                      => "#FFFFFF",
      'body-font-color'                                      => "#333333",
      'base-line-height'                                     => "1.5",
      'secondary-color'                                      => "#bfbfbf",
      'font-color-on-primary'                                => "#FFFFFF",
      'font-color-on-primary-dark'                           => "#FFFFFF",
      'font-color-on-secondary'                              => "#FFFFFF",
      'font-color-on-alternative'                            => "#FFFFFF",
      'h1-font-size'                                         => "2rem",
      'h1-font-color'                                        => "$body-font-color",
      'h2-font-size'                                         => "1.5rem",
      'h2-font-color'                                        => "$body-font-color",
      'h3-font-size'                                         => "1.125rem",
      'h3-font-color'                                        => "$body-font-color",
      'h4-font-size'                                         => "calc($h3-font-size * 0.75)",
      'h4-font-color'                                        => "$body-font-color",
      'header-logo-width'                                    => "54px",
      'header-height'                                        => "50px",
      'header-height-mobile'                                 => "45px",
      'header-bg-color'                                      => "$gwdg-header-background-color",
      'header-logo-bg-color'                                 => "$gwdg-header-background-color",
      'header-home-link-bg'                                  => '#{image-url("gwdg_logo_only_invert.svg") no-repeat 6px 0}',
      'header-border-bottom-color'                           => "$primary-color",
      'header-border-bottom-width'                           => "0",
      'header-item-font-size'                                => "14px",
      'header-item-font-color'                               => "$gwdg-header-item-font-color",
      'header-item-font-hover-color'                         => "$gwdg-header-item-font-hover-color",
      'header-item-bg-color'                                 => "$gwdg-header-item-background-color",
      'header-item-bg-hover-color'                           => "$gwdg-header-item-background-hover-color",
      'header-item-border-color'                             => "#E0E0E0",
      'header-drop-down-font-size'                           => "14px",
      'header-drop-down-font-color'                          => "$gwdg-header-drop-down-font-color",
      'header-drop-down-font-hover-color'                    => "$gwdg-header-drop-down-font-hover-color",
      'header-drop-down-bg-color'                            => "$gwdg-header-drop-down-background-color",
      'header-drop-down-bg-hover-color'                      => "$gwdg-header-drop-down-background-hover-color",
      'header-drop-down-border-color'                        => "#E0E0E0",
      'header-drop-down-item-font-size'                      => "14px",
      'header-drop-down-item-font-color'                     => "$gwdg-header-drop-down-item-font-color",
      'header-drop-down-item-font-hover-color'               => "$gwdg-header-drop-down-item-font-hover-color",
      'header-drop-down-item-bg-color'                       => "$gwdg-header-drop-down-item-background-color",
      'header-drop-down-item-bg-hover-color'                 => "$gwdg-header-drop-down-item-background-hover-color",
      'header-drop-down-projects-search-font-color'          => "$gwdg-header-drop-down-item-font-color",
      'header-drop-down-projects-search-font-hover-color'    => "$gwdg-header-drop-down-item-font-hover-color",
      'header-drop-down-projects-search-bg-color'            => "$gwdg-header-drop-down-item-background-color",
      'header-drop-down-projects-search-input-bg-color'      => "#F5F5F5",
      'header-drop-down-projects-search-input-border-color'  => "#D9D9D9",
      'header-search-field-bg-color'                         => "#FFFFFF",
      'header-search-field-font-color'                       => "#000000",
      'header-search-field-border'                           => "0",
      'footer-bg-color'                                      => "$gwdg-lower-footer-background-color",
      'footer-bg-hover-color'                                => "$gwdg-lower-footer-background-hover-color",
      'footer-font-color'                                    => "$gwdg-lower-footer-font-color",
      'footer-height'                                        => "32px",
      'footer-content-height'                                => "32px",
      'footer-content-line-height'                           => "32px",
      'footer-content-link-color'                            => "$gwdg-lower-footer-font-color",
      'footer-content-link-hover-color'                      => "$gwdg-lower-footer-link-hover-color",
      'main-menu-width'                                      => "230px",
      'main-menu-toggle-height'                              => "40px",
      'main-menu-folded-width'                               => "50px",
      'main-menu-border-color'                               => "$gwdg-main-menu-border-color",
      'main-menu-border-width'                               => "1px",
      'main-menu-item-height'                                => "40px",
      'main-menu-item-border-color'                          => "$gwdg-main-menu-border-color",
      'main-menu-item-border-width'                          => "1px",
      'main-menu-enable-toggle-highlighting'                 => "false",
      'main-menu-bg-color'                                   => "$gwdg-main-menu-background-color",
      'main-menu-bg-selected-background'                     => "$gwdg-main-menu-background-hover-selected-color",
      'main-menu-bg-hover-background'                        => "$gwdg-main-menu-background-hover-selected-color",
      'main-menu-font-color'                                 => "$gwdg-main-menu-font-color",
      'main-menu-selected-font-color'                        => "$gwdg-main-menu-selected-font-color",
      'main-menu-font-size'                                  => "15px",
      'main-menu-selected-indicator-color'                   => "$gwdg-main-menu-background-hover-selected-color",
      'main-menu-hover-indicator-color'                      => "$gwdg-main-menu-background-hover-selected-color",
      'main-menu-selected-hover-indicator-width'             => "4px",
      'main-menu-selected-hover-border-color'                => "$gwdg-main-menu-background-hover-selected-color",
      'main-menu-navigation-toggler-font-hover-color'        => "$gwdg-main-menu-selected-font-color",
      'main-menu-toggler-separator-color'                    => "$gwdg-main-menu-background-color",
      'main-menu-child-item-height'                          => "35px",
      'main-menu-child-menu-bg-color'                        => "$gwdg-main-menu-child-background-color",
      'main-menu-child-bg-selected-color'                    => "$gwdg-main-menu-child-background-hover-selected-color",
      'main-menu-child-bg-hover-color'                       => "$gwdg-main-menu-child-background-hover-selected-color",
      'main-menu-child-menu-border-color'                    => "$gwdg-main-menu-child-border-color",
      'main-menu-child-font-color'                           => "$gwdg-main-menu-child-font-color",
      'main-menu-child-font-size'                            => "13px",
      'main-menu-child-selected-font-color'                  => "$gwdg-main-menu-child-selected-font-color",
      'main-menu-sidebar-font-color'                         => "$gwdg-body-font-color",
      'main-menu-sidebar-h3-color'                           => "$gwdg-body-title-font-color",
      'main-menu-sidebar-link-color'                         => "$gwdg-light-blue1",
      'main-menu-sidebar-link-hover-color'                   => "$gwdg-body-title-font-color",
      'main-menu-sidebar-h3-border-top-color'                => "$gwdg-main-menu-background-color",
      'main-menu-sidebar-h3-font-size'                       => "15px",
      'toolbar-title-color'                                  => "#5F5F5F",
      'toolbar-item--bg-color'                               => "#F8F8F8",
      'toolbar-item--bg-color-pressed'                       => "$gray-lighter",
      'toolbar-item--border-color'                           => "#DDD",
      'breadcrumb-height'                                    => "40px",
      'breadcrumb-bg-color'                                  => "$gwdg-breadcrumb-bg-color",
      'breadcrumb-border-color'                              => "$gwdg-breadcrumb-border-color",
      'breadcrumb-font-size'                                 => "12px",
      'breadcrumb-highlighted-font-size'                     => "14px",
      'breadcrumb-font-color'                                => "$gwdg-breadcrumb-font-color",
      'breadcrumb-font-hover-selected-color'                 => "$gwdg-breadcrumb-font-hover-selected-color",
      'content-default-border-color'                         => "#EAEAEA",
      'content-default-border-width'                         => "1px",
      'content-link-color'                                   => "$primary-color-dark",
      'content-link-hover-active-color'                      => "$primary-color-dark",
      'content-icon-link-color'                              => "#4b4b4b",
      'content-icon-link-hover-color'                        => "$primary-color-dark",
      'content-icon-link-pressed-color'                      => "$gray-dark",
      'content-icon-color'                                   => "$primary-color-dark",
      'content-form-bg-color'                                => "#F8F8F8",
      'content-form-border'                                  => "1px solid $content-default-border-color",
      'content-from-input-width'                             => "300px",
      'content-form-input-border'                            => "1px solid #CACACA",
      'content-form-input-hover-border'                      => "1px solid #888888",
      'content-form-error-color'                             => "#9E2A1C",
      'content-form-separator-color'                         => "#DDDDDD",
      'content-form-danger-zone-bg-color'                    => "#CA3F3F",
      'content-form-danger-zone-font-color'                  => "#FFFFFF",
      'content-calendar-border-width'                        => "1px",
      'content-calendar-border-color'                        => "#D7D7D7",
      'content-calendar-head-cell-bg-color'                  => "#EEEEEE",
      'content-calendar-cell-border-width'                   => "1px",
      'content-calendar-cell-border-color'                   => "#D7D7D7",
      'content-calendar-cell-today-bg-color'                 => "#FFFFDD",
      'content-calendar-inactive-day-font-color'             => "#FFFFFF",
      'content-calendar-inactive-day-bg-color'               => "#4B4B4B",
      'context-menu-font-color'                              => "$main-menu-font-color",
      'content-box-border'                                   => "1px solid $content-default-border-color",
      'content-box-bg-color'                                 => "#FFFFFF",
      'my-page-edit-box-border-color'                        => "$primary-color-dark",
      'drop-down-unselected-font-color'                      => "$main-menu-font-color",
      'drop-down-selected-font-color'                        => "$font-color-on-primary",
      'drop-down-hover-font-color'                           => "$font-color-on-primary-dark",
      'drop-down-selected-bg-color'                          => "$primary-color",
      'drop-down-hover-bg-color'                             => "$primary-color-dark",
      'action-menu-bg-color'                                 => "#FFFFFF",
      'wiki-default-font-size'                               => "1rem",
      'wiki-toc-header-font-size'                            => "calc($wiki-default-font-size * 0.6)",
      'wiki-toc-ul-font-size'                                => "$wiki-default-font-size",
      'journal-attribute-font-size'                          => "11px",
      'repository-entry-filename-margin-left'                => "24px",
      'user-avatar-border-radius'                            => "50px",
      'user-avatar-width'                                    => "36px",
      'user-avatar-mini-border-radius'                       => "50px",
      'user-avatar-mini-width'                               => "20px",
      'select-element-padding'                               => "3px, 24px, 3px, 3px",
      'widget-box-content-bg-color'                          => "$body-background",
      'widget-box-block-bg-color'                            => "$body-background",
      'widget-box-block-border-color'                        => "$content-default-border-color",
      'homescreen-footer-bg-color'                           => "$gray-light",
      'homescreen-footer-icon-color'                         => "#7B827B",
      'inplace-edit--border-color'                           => "#ddd",
      'inplace-edit--dark-background'                        => "$gray-light",
      'inplace-edit--color--very-dark'                       => "#cacaca",
      'inplace-edit--color-highlight'                        => "$primary-color",
      'inplace-edit--selected-date-border-color'             => "$primary-color-dark",
      'inplace-edit--color--disabled'                        => "#4d4d4d",
      'inplace-edit--bg-color--disabled'                     => "#eee",
      'relations-save-button--disabled-color'                => "$gray-dark",
      'table-row-border-color'                               => "#E7E7E7",
      'table-row-highlighting-color'                         => "#e4f7fb",
      'table-header-border-color'                            => "#D7D7D7",
      'table-header-shadow-color'                            => "#DDDDDD",
      'loading-indicator-bg-color'                           => "$body-background",
      'loading-indicator-bg-opacity'                         => "0.8",
      'loading-indicator-spinner-color'                      => "$primary-color",
      'button--font-color'                                   => "#222222",
      'button--background-color'                             => "$gray-light",
      'button--background-hover-color'                       => "#ededed",
      'button--border-color'                                 => "#dddddd",
      'button--active-font-color'                            => "#bbbbbb",
      'button--active-background-color'                      => "#eeeeee",
      'button--active-border-color'                          => "#cacaca",
      'button--alt-highlight-background-color'               => "$alternative-color",
      'button--alt-highlight-background-hover-color'         => "#227d28",
      'button--highlight-font-color'                         => "$font-color-on-primary",
      'button--highlight-background-color'                   => "$primary-color",
      'button--highlight-background-hover-color'             => "$primary-color-dark",
      'button--alt-highlight-font-color'                     => "$font-color-on-alternative",
      'button--text-icon-spacing'                            => "0.65em",
      'generic-table--font-size'                             => '0.875rem',
      'generic-table--header-font-size'                      => '0.875rem',
      'generic-table--header-height'                         => '45px',
      'generic-table--footer-height'                         => '34px',
      'timeline--header-border-color'                        => '#aaaaaa',
      'timeline--grid-color'                                 => '#dddddd',
      'timeline--separator'                                  => '3px solid #E7E7E7',
      'table-timeline--row-height'                           => '41px'
    }.freeze

    ##
    # Returns the name of the color scheme.
    # To be overridden by a plugin
    def self.name
      'OpenProject Theme'
    end

    def self.identifier
      :core_design
    end

    def self.overridden?
      identifier == :core_design
    end

    ##
    # Path the favicon
    def self.favicon_asset_path
      'favicon.ico'.freeze
    end

    ##
    # Returns a reference to all defined colors
    # To be used in the sass variable definition file
    def self.variables
      DEFAULTS
    end

    ##
    # Returns the keys of variables that are customizable through the design
    def self.customizable_variables
      %w(primary-color primary-color-dark alternative-color)
    end
  end
end
