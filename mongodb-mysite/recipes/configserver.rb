include_recipe "mongodb::10gen_repo"
include_recipe "mongodb::configserver"

default['mongodb']['is_configserver'] = true
default['mongodb']['config']['port']  = 27019
