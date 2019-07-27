# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

package 'apache2' do
#	version '2.4.29.1ubuntu4.8'
	version node['tvxdemo']['apache2_version']
	action :install
end


service 'apache2' do
	action [:enable, :start]
end


#cookbook_file '/var/www/html/index.html' do
#	source 'index.html'
#	mode '0644'
#end

template '/var/www/html/index.html' do
        source 'index.html.erb'
        mode '0644'
end

# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html

