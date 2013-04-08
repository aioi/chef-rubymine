chef-rubymine Cookbook
=======================
Installs RubyMine and necessary packages.

Requirements
------------
Should work on any Debian-family Linux distribution.

#### cookbooks
- `java` - Rubymine requires the Sun Java SDK.

Attributes
----------
- `default['rubymine']['version']`  - the version number to install
- `default['rubymine']['checksum']` - the checksum of the tarball to install
- `default['rubymine']['user']`     - the user for which to install rubymine

Usage
-----
Just include `chef-rubymine` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef-rubymine]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: [Olivier Brisse](https://github.com/ouranos)

