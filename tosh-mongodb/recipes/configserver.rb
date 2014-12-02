include_recipe "mongodb::10gen_repo"
include_recipe "mongodb::configserver"

node['mongodb']['is_configserver'] = true
node['mongodb']['config']['port']  = 27019
