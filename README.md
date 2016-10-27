# Chef Sessions

## Home Work 0 - Vagrant

1. cd into HomeWork0

2. change the VM's memory allocation to 2GB and host port to 8080

3. Bring up the local vm

4. Open a browser on your workstation and go to 'http://localhost:8080/'

5. You should be able to see a 'welcome to chef session' page.

6. Destroy the local VM.

## Home Work 1 - Convert python script to a chef recipe
The python script `AARinstall.py` (mysql password is 'root') should be converted to a chef recipe, use the following steps:
* AARinstall.py begins with a comment of the steps it executes

1. cd into HomeWork1

2. start the local vm to develop on - `vagrant up`

3. update the default recipe in the cookbook (cookbooks/my-first-cookbook/recipes/default.rb)

4. run the updated cookbook on the vm - `vagrant provision`

5. verify the application is up at `http://localhost:8080/` and you can log in

### Adding Tests -  Please read about ChefSpec before proceeding (links in moodle)

6. write the tests in cookbooks/my-first-cookbook/spec/default_spec.rb

7. run the tests (cd into cookbooks/my-first-cookbook and run `chef exec rspec`)


