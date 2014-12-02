default[:mongodb][:dbconfig_file]	= '/etc/mongod.conf'
default[:mongodb][:cluster_name]    = "KL3"

node.default['mongodb']['config']['port']  = 27017
node.default['mongodb']['replicaset_name'] = 'rs_KL3_stage1'
node.default[:mongodb][:config][:replSet] = 'rs_KL3_stage1'
