#
# Cookbook:: .
# Recipe:: userdatabag
#
# Copyright:: 2018, The Authors, All Rights Reserved.
search("users", "*:*").each do |user_data|     #####searching for a databaga called users and search for every data bag item and do the user resource creation
      comment user_data['comment']              ###calling each key value as loop
      uid user_data['uid']
      gid user_data['gid']
      home user_data['home']
      shell user_data['shell']
      password user_data['password']
      action :create
end
    