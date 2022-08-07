const {ethers} = require("hardhat");

async function main(){
  const whitellistContracts = await ethers.getContractFactory("Whitelist");
  //to deploy the contract
  const deployedWhitelistContract = await whitellistContracts.deploy(10);

  //Wait the contract to finish deployment
  await deployedWhitelistContract.deployed();

  //To print the contract address
  console.log(`Whitelist contract Address: ${deployedWhitelistContract}`);
}

// To call the main function and see if there is any error
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
