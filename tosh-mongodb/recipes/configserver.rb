include_recipe "mongodb::10gen_repo"
include_recipe "mongodb::configserver"

node.default['mongodb']['is_configserver'] = true
node.default['mongodb']['config']['port']  = 27019
