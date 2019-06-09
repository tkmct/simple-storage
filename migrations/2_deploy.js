const SimpleStorage = artifacts.require("SimpleStorage")
const KVS = artifacts.require("KVS")

module.exports = (deployer) => {
  deployer.deploy(SimpleStorage);
  deployer.deploy(KVS);
};