configsrvs = search(
	:node,
	mongodb_is_configserver:true
)


log "message" do
	message "length: #{configsrvs.length}"
	level :debug
end
