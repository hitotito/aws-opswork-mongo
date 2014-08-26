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

hostname = node[:opsworks][:instance][:hostname]

log "log-hostname: #{hostname}" do
	level :debug
end
