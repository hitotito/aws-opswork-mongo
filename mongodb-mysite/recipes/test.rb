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


