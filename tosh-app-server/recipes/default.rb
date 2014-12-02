include_recipe "mongodb::10gen_repo"
include_recipe "mongodb::install"

package "tmux"

iptables_ng_rule '99-redirect' do
	chain 'PREROUTING'
	table 'nat'
	rule '-p tcp --dport 80 -j REDIRECT --to-ports 8000'
end

iptables_ng_rule '100-loopbackredirect' do
	chain 'OUTPUT'
	table 'nat'
	rule '-p tcp -o lo --dport 80 -j REDIRECT --to-ports 8000'
end
