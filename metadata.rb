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
  :description => 'The Version of Rubymine to install',
  :default => '5.0'

attribute 'checksum',
  :display_name => 'Checksum',
  :description => 'Checksum of the rubymine file',
  :default => 'ae3d997fcb79d7d5f462d71dfb675485'

attribute 'max_user_watches',
  :display_name => 'Max user watches',
  :description => 'Inotify Watches Limit',
  :default => '524288'