#
# Cookbook:: .
# Recipe:: secretdata
#
# Copyright:: 2018, The Authors, All Rights Reserved.
apt_update 'updating the packages' do
  action :update
end
apt_package 'apache2' do
  action :install
end
search('secretd', 'id:newsecret').each do |file_item|  ####search for a databag which contains key and value as id and newsecretkey using data bags for static content of apache2
    file file_item['path'] do          ###looping for each and every key in databag
      content file_item['content'] 
      action :create
    end
    
end

    


