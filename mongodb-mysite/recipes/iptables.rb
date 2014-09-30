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
