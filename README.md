magic_shell Cookbook
====================
[![Build Status](https://secure.travis-ci.org/customink-webops/magic_shell.png)](http://travis-ci.org/customink-webops/magic_shell)

Provides utility for adding some syntactic sugar to your shell.

Requirements
------------
None

Attributes
----------
None

Usage
-----
Include the recipe to use the resource in your cookbook.

```ruby
include_recipe 'magic_shell'
```

Use the `magic_shell_alias` resource to create a command alias.

```ruby
magic_shell_alias 'myrailsapp' do
  command 'cd /opt/myrailsapp/current'
end
```

You can also remove aliases:

```ruby
magic_shell_alias 'myrailsapp' do
  action :remove
end
```

This will alias `myrailsapp` to `cd /opt/myrailsapp/current`.

Contributing
------------
1. Fork the repo
2. Create a feature branch
3. Code, document, write specs, test
4. Submit a PR

License and Authors
-------------------
Author: [Nathen Harvey](https://github.com/nathenharvey) ([@nathenharvey](https://twitter.com/nathenharvey))

Copyright 2012, CustomInk, LLC
