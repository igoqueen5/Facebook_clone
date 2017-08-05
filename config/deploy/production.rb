server '13.114.99.22', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/home/vagrant/.ssh/id_rsa'
