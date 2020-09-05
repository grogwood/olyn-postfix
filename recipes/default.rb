# Grab the server information from a data bag
server_item = data_bag_item('servers', node[:hostname])

# Set the postfix mail relay server from the data bag item
node.override['postfix']['main']['relayhost'] = server_item[:options][:postfix][:relayhost]

# Run the postfix configuration recipe
include_recipe 'postfix'
