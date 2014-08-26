configsrvs = search(
	:node,
	'recipe:"configserver"'
)


log "message-length #{configsrvs.length}" do
	message "length: #{configsrvs.length}"
	level :debug
end
