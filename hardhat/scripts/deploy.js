const {ethers} = require("hardhat")

async function main(){
  const whiteListContract = await ethers.getContractFactory("Whitelist");
//create a instance of the contract
  const deployedWhitelistContract = await whiteListContract.deploy(10);
//value of the constructor arguments 
   await deployedWhitelistContract.deployed();
//deploy and print the address
   

  console.log("Whitelist contract address", deployedWhitelistContract.address);
}

main()
.then(() => { process.exit(0)})
.catch((error)=>{
 console.error(error);
 process.exit(1);
 //state wasn't successfully 
});
