const {ethers} = require("hardhat")

async function main(){
  const whiteListContract = await ethers.getContractFactory("Whitelist");

  const deployedWhitelistContract = await whiteListContract.deploy(10);

   await deployedWhitelistContract.deployed();
}
