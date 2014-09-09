include_recipe "mongodb::10gen_repo"

node.set['mongodb']['is_mongos'] = true
node.set['mongodb']['shard_name'] = node['mongodb']['shard_name']
node.override['mongodb']['instance_name'] = 'mongos'

include_recipe 'mongodb::install'
include_recipe 'mongodb::mongo_gem'

service node[:mongodb][:default_init_name] do
	  action [:disable, :stop]
end

configsrvs = search(
	:node,
	"mongodb_cluster_name:#{node['mongodb']['cluster_name']}"
)

Chef::Log.error("configsrvs cluster_name : #{node['mongodb']['cluster_name']}")
Chef::Log.error("configsrvs length: #{configsrvs.length}")


test1 = search(
	:node,
	"mongodb_cluster_name:#{node['mongodb']['cluster_name']}"
)
Chef::Log.error("test array : #{test1.length}")
test1.each{ |x|
	Chef::Log.error("fqdn for test : #{x['fqdn']}")
}

test2  = search(
	:node,
	"chef_environment:#{node.chef_environment}"
)
Chef::Log.error("test array : #{test2.length}")
test2.each{ |x|
	Chef::Log.error("fqdn for test : #{x['fqdn']}")
}

test3  = search(
	:node,
	"mongodb_is_configserver:true"
)
Chef::Log.error("test array : #{test3.length}")
test3.each{ |x|
	Chef::Log.error("fqdn for test : #{x['fqdn']}")
}

# mongodb_instance node['mongodb']['instance_name'] do
# 	mongodb_type 'mongos'
# 	port         node['mongodb']['config']['port']
# 	logpath      node['mongodb']['config']['logpath']
# 	dbpath       node['mongodb']['config']['dbpath']
# 	configservers	test
# 	enable_rest  node['mongodb']['config']['rest']
# 	smallfiles   node['mongodb']['config']['smallfiles']
# end
