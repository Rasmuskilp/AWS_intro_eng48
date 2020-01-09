#THis is an installation guide for AWS server
### Log into AWS with the SPARTA credentials given by FIlipe on teams.
### Create an account
###Now start a new instance
#### important points for setup, allow subnet auto public ip
#### use the premade security groups eng-48
#### use ubuntu 16.04 server x86
##after creating the server on bash copy the necessary folder to the VM
``scp -i ~/.ssh/rasmus_kilp_eng48_first_key.pem -r ~/projects/deployment-code ubuntu@34.241.166.199:/home/ubuntu/deployment-code
``
##the SCP is a command used to copy files or folders
## use -i for the key and then ssh -r (for folders) the folder/file the user@server:location where the folder/file
###after that try to login into the server using ssh -i provided_ssh.key user(ubuntu)@public_ip_of_vm
###go to the copied folder and install provision using ./provision_file.sh
