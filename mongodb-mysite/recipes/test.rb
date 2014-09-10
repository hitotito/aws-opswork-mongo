test1 = search(
	:node,
	"mongodb_cluster_name:#{node['mongodb']['cluster_name']}"
)
Chef::Log.error("test1 array : #{test1.length}")
Chef::Log.error("test1 cluster_name : #{node['mongodb']['cluster_name']}")
test1.each{ |x|
	Chef::Log.error("test1: fqdn for test : #{x['fqdn']}")
}

test2  = search(
	:node,
	"chef_environment:#{node.chef_environment}"
)
Chef::Log.error("test2 array : #{test2.length}")
Chef::Log.error("test2 env: #{node.chef_environment}")
test2.each{ |x|
	Chef::Log.error("test2: fqdn for test : #{x['fqdn']}")
}

test3  = search(
	:node,
	"mongodb_is_configserver:true"
)
Chef::Log.error("test3 array : #{test3.length}")
test3.each{ |x|
	Chef::Log.error("test3: fqdn for test : #{x['fqdn']}")
}
