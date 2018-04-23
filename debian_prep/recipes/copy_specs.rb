# Copy specs from bootstrap directory to chefspec directory

bash 'copy specs from bootstrap dir to chefspec dir' do 
  code <<-EOF
    mkdir -p /root/chef-repo/cookbooks/debian_prep/spec/unit/recipes
    cp -r /root/bootstrap-debian-9-dev-base/debian_prep/spec/* /root/chef-repo/cookbooks/debian_prep/spec/.
  EOF
end 
