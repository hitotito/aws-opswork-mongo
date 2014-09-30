script "iptables" do
	interpreter "bash"
	user "root"
	cwd "/tmp"
	code <<-EOH
		iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 5000
		iptables -t nat -I OUTPUT -p tcp -o lo --dport 80 -j REDIRECT --to-ports 5000
		service iptables save
	EOH
end

script "iptables" do
	interpreter "bash"
	user "root"
	cwd "/tmp"
	code <<-EOH
		mongos --configdb configdb1:27019 --fork --logpath /var/log/mongodb/mongod.log
	EOH
end

directory "/var/log/node" do
	owner "root"
	group "root"
	recursive true
end
