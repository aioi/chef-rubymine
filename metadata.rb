name             'andia-rubymine'
maintainer       'Olivier Brisse'
maintainer_email 'obrisse@aioinissaydowa.com.au'
license          'All rights reserved'
description      'Installs/Configures andia-rubymine'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'
depends          'java'
depends          'sysctl', '~> 0.3.3'

attribute 'version',
  :display_name => 'Version',
  :description => 'RubyMine version to install',
  :default => '6.3'

attribute 'checksum',
  :display_name => 'Checksum',
  :description => 'RubyMine archive checksum',
  :default => '7cfce21f1c0cbdf83b9f0e6dbbd1d1f0'

attribute 'max_user_watches',
  :display_name => 'Max user watches',
  :description => 'Inotify Watches Limit',
  :default => '524288'
