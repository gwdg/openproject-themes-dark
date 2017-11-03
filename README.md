OpenProject GWDG-Theme Plugin
=============================

This Plugin adds the GWDG theme to OpenProject which provides an alternative to the default OpenProject theme. The theme can be activated in the account settings for each individual user.

A more detailed description can be found on [GWDG](https://www.gwdg.de).


Requirements
------------

The OpenProject GWDG-Theme plugin requires the [OpenProject Core](https://github.com/opf/openproject/) in the same version.


Installation
------------

For OpenProject GWDG-Theme plugin you need to add the following line to the `Gemfile.plugins` of OpenProject (if you use a different OpenProject version than OpenProject 7.0, adapt `:branch => "release/7.0"` to your OpenProject version):

`gem "openproject-themes-gwdg", git: "https://github.com/gwdg/openproject-themes-gwdg.git", :branch => "release/7.0"`

Afterwards, run:

`bundle install`


Deinstallation
--------------

Remove the line

`gem "openproject-themes-gwdg", git: "https://github.com/gwdg/openproject-themes-gwdg.git", :branch => "release/7.0"`

from the file `Gemfile.plugins` and run:

`bundle install`


Bug Reporting
-------------

If you find any bugs, you can create a bug ticket at

https://www.gwdg.de


Development
-----------

To contribute, you can create pull request on the official repository at
`https://github.com/gwdg/openproject-themes-gwdg`


Licence
-------

Copyright (C) 2013 - 2015 the OpenProject Foundation (OPF)

This plugin is licensed under the GNU GPL v3. See doc/COPYRIGHT.md and doc/GPL.txt for details.
