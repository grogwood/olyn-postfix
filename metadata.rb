name 'olyn_postfix'
maintainer 'Scott Richardson'
maintainer_email 'dev@grogwood.com'
chef_version '~> 15'
license 'GPL-3.0'
supports 'debian', '>= 10'
source_url 'https://gitlab.com/olyn/olyn_postfix'
description 'Installs and configures postfix'
version '1.0.0'

provides 'olyn_postfix::default'
recipe 'olyn_postfix::default', 'Installs and configures postfix'

depends 'postfix', '~> 5'