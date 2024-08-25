const Explorer = artifacts.require("BlockchainExplorer");

module.exports = function(deployer) {
    deployer.deploy(Explorer);
}