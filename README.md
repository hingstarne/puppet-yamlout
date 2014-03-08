puppet-yamlout
==============

Puppet ressource to easy write yaml file from hash

Dependencies: none

Usage:
------

Example for database.yml

$data = {
  'production' => {
    'adapter'           => 'mysql2',
    'encoding'          => 'utf8',
    'adapter'           => 'mysql2',
    'encoding'          => 'utf8',
    'reconnect'         =>  false,
    'database'          => 'gitlabhq_production',
    'pool'              => 10,
    'reaping_frequency' => 10,
    'username'          => 'git',
    'password'          => 'secure password',
  },
  'development' => {
    'adapter'           => 'mysql2',
    'encoding'          => 'utf8',
    'adapter'           => 'mysql2',
    'encoding'          => 'utf8',
    'reconnect'         => false,
    'database'          => 'gitlabhq_development',
  }
}


yamlout {'database.yml':
	data                => $data,
}

Test it:
--------

go to the test dir and run

puppet apply database_yaml.pp
