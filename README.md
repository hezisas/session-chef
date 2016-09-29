# Chef Sessions

## Home Work 1 - Convert python script to a chef recipe
The python script `AARinstall.py` should be converted to a chef recipe, use the following steps:

1. cd into HomeWork1

2. start a local vm to develop on - `vagrant up`

3. ssh into local vm - `vagrant ssh`

4. update the default recipe in the cookbook `/etc/chef/my-first-cookbook/recipes/default.rb`

5. run chef - `chef-solo -o "recipe[my-first-cookbook]"`

6. verify the application is up at `http://localhost:8080/`

* you can always start over by destroying and creating the vm again - `vagrant destroy` && `vagrant up`

