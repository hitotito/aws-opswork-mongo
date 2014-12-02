node.default['mongodb']['dbconfig_file']   = '/etc/mongodb.conf'
node.default['mongodb']['config']['port']  = 27017
node.default['mongodb']['replicaset_name'] = 'rs_stan_stage1'
node.default['mongodb']['cluster_name']	   = 'rs_stan_stage1'

node.default[:mongodb][:config][:replSet] = 'rs_stan_stage1'
