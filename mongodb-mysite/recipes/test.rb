configsrvs = search(
	:node,
	'recipe:configserver'
)


log "message" do
	message "length: #{configsrvs.length}"
	level :debug
end
