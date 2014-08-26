# configsrvs = search(
# 	:node,
# 	'recipe:"configserver"'
# )
# 
# 
# log "message-length #{configsrvs.length}" do
# 	message "length: #{configsrvs.length}"
# 	level :debug
# end


include_recipe "aws"

hostname = node[:opsworks][:instance][:hostname]

log "log-hostname: #{hostname}" do
	level :debug
end
