script "mongos" do
	interpreter "bash"
	user "root"
	cwd "/tmp"
	code <<-EOH
		mongos --configdb configdb2:27019 --fork --logpath /var/log/mongodb/mongod.log
	EOH
end

directory "/var/log/node" do
	mode "0644"
	owner "root"
	group "root"
	recursive true
end

file "/var/log/node/stan.log" do
	mode  "0644"
	owner "root"
	group "root"
	action :create
end

