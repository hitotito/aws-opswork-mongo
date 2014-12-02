default[:mongodb][:dbconfig_file] = '/etc/mongod.conf'
default[:mongodb][:cluster_name]      = "KL3"
default['mongodb']['is_configserver'] = true
default['mongodb']['config']['port']  = 27019
