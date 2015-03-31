name             'mysql_replication'
maintainer       'Ovais Tariq'
maintainer_email 'me@ovaistariq.net'
license          'All rights reserved'
description      'Installs/Configures mysql_replication'
long_description 'Installs/Configures mysql_replication'
version          '0.1.0'

recipe "mysql_replication::master",             "Installs and configures a MySQL server as a replication master"
recipe "mysql_replication::slave",             "Installs and configures a MySQL server as a replication slave"
recipe "mysql_replication::replication_user",   "Configures replication users that are used by slaves to connect to master"
recipe "mysql_replication::_server",            "Installs and configures the MySQL server, should not be added to the runlist directly"

depends "mysql"
depends "database"
depends "mysql2_chef_gem"

supports "centos"
supports "redhat"