#THis is an installation guide for AWS server
### Log into AWS with the SPARTA credentials given by FIlipe on teams.
### Create an account
###Now start a new instance
#### important points for setup, allow subnet auto public ip
#### use the premade security groups eng-48
#### use ubuntu 16.04 server x86
### download the SSH key provided(if you already do not have one)
###the location of the ssh should be in your ~/.ssh
##after creating the server on bash copy the necessary folder to the VM
``scp -i ~/.ssh/rasmus_kilp_eng48_first_key.pem -r ~/projects/deployment-code ubuntu@34.241.166.199:/home/ubuntu/deployment-code
``
##the SCP is a command used to copy files or folders
## use -i for the key and then ssh -r (for folders) the folder/file the user@server:location where the folder/file
###after that try to login into the server using ssh -i provided_ssh.key user(ubuntu)@public_ip_of_vm
###go to the copied folder and install provision using ./provision_file.sh
#!/bin/bash
 scp -o "StrictHostKeyChecking=no" -r app ubuntu@52.209.218.70:/home/ubuntu/deployment-code/app
  scp -o "StrictHostKeyChecking=no" -r environment ubuntu@52.209.218.70:/home/ubuntu/deployment-code/environment
 scp -o "StrictHostKeyChecking=no" -r test ubuntu@52.209.218.70:/home/ubuntu/deployment-code/tests
 scp -o "StrictHostKeyChecking=no"packer.json ubuntu@52.209.218.70:/home/ubuntu/deployment-code/packer.json
sshpass -p password ssh -T root@$line
ssh -o "StrictHostKeyChecking=no" ubuntu@52.209.218.70<<EOF
echo ./deployment-code/environment/app/provision.sh
echo ./deployment-code/environment/db/provision.sh
echo cd app
echo sudo npm install
echo sudo npm test  
EOF
# rsync -avz -e "ssh -i /var/lib/jenkins/.ssh/rasmus_kilp_eng48_first_key.pem" ubuntu@52.209.218.70
ssh -o "StrictHostKeyChecking=no" ubuntu@52.209.218.70 /bin/bash <<'EOT'
echo cd app
echo sudo npm install
echo sudo npm test
EOT
