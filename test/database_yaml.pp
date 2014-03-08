import "../manifests/*.pp"
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

yamlout{'/tmp/database.yml':
	data                => $data,
}
