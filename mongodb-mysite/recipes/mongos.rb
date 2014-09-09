include_recipe "mongodb::10gen_repo"

include_recipe "mongodb::install"
include_recipe "mongodb::mongo_gem"

configsrvs = search(
	:node,
	"mongodb_cluster_name:#{node['mongodb']['cluster_name']}"
)

Chef::Log.error("configsrvs cluster_name : #{node['mongodb']['cluster_name']}")
Chef::Log.error("configsrvs length: #{configsrvs.length}")


test = search(
	:node,
	"role:mongodb-config"
)

Chef::Log.error("test array : #{test.length}")
