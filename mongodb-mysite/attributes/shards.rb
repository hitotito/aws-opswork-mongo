default[:mongodb][:cluster_name] = 'KL3'
default[:mongodb][:shard_name]   = node[:opsworks][:instance][:hostname]
