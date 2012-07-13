# <a name="title"></a> magic_shell [![Build Status](https://secure.travis-ci.org/customink-webops/magic_shell.png)](http://travis-ci.org/customink-webops/magic_shell)


Description
===========

Provides utility for adding some syntactic sugar to your shell.

Requirements
============

None

Attributes
==========

None

Usage
=====

Include the recipe to use the resource in your cookbook.

    include_recipe "magic_shell"

Use the `magic_shell_alias` resource to create a command alias.

    magic_shell_alias "myrailsapp" do
      command "cd /opt/myrailsapp/current"
      action :add
    end

This will alias `myrailsapp` to `cd /opt/myrailsapp/current`

