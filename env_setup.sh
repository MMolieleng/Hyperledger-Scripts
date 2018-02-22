# Using Ubuntu
# Installing Nodejs v8.x
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs


## Run system refresh
## apt-get update
sudo apt-get update

## Download Hyperledger Client Tools
npm install -g composer-cli
npm install -g generator-hyperledger-composer

## composer-rest-server for REST Api Generation
npm install -g composer-rest-server

### Intstall Yeoman client dev stack
npm install -g yo

### Clean up docker machines
### WARNING -- Make sure you're not running any other Docker projects
### Otherwise they will all be removed as well

# Kill all docker running processes
docker kill $(docker ps -q) 

# 
docker rm $(docker ps -aq)

#
docker rmi $(docker images dev-* -q)


### Clean up any composer connections and credentials
### WARNING -- Be careful of you have any composer projects on your system
###	    -- This will delete all the previous projects

#
rm rf ~/.composer-connection-profiles
rm rf ~/.composer-credentials


### Run Hyperledger Fabric
### They help in linking the business network to running Docker containers

cd ~/
mkdir fabric-tools
cd fabric-tools
curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.zip
unzip fabric-dev-servers.zip

## Download all necessary files for fabric-tools
./downloadFabric.sh
./startFabric.sh
./createPEerAdminCard.sh

 





