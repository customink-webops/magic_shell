magic_shell CHANGELOG
=====================

1.0.0
-----
* Refactor providers to support whyrun mode
* Package custom ChefSpec matchers
* Add Test Kitchen integration test
* Update ChefSpec tests
* Expand environment variables (like `$PATH`)
* Add Rakefile for running tests
* Use the latest and greatest testing strategies

0.3.1, 0.3.2
------------

* **No changes** - chefigonre with `knife cookbook site share` was being ignored, so unnecessary artifacts were uploaded

0.3.0
----

* Full test suite
* Test with strainer
* Support for cross-Chef version default_action

0.2.0
----

* Add `magic_shell_environment`

0.1.5
----

* The default action for the alias resource is now :add

0.1.4
-----

* The default action for the alias resource is now :create
* Formatting changes to the metadata, README, and CHANGELOG

0.1.3
-----

* Address FC0016 - specify a default action
* Add integration with Travis CI

0.1.2
-----

* Update the README to indicate that you need to specify an action (:add or :remove)

0.1.1
-----

* Rename the resource and provider files

0.1.0
-----

* Initial release of magic_shell
