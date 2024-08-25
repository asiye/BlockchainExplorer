const BlockchainExplorer = artifacts.require("BlockchainExplorer");

contract("BlockchainExplorer", (accounts) => {
    it("should return the correct block details", async () => {
        const instance = await BlockchainExplorer.deployed();
        const blockdetails = await instance.getBlockDetails(1);

        console.log("Block Details: ", blockdetails);
        assert(blockdetails !== null, "Block detail should not be null!");
    });

    it("should log the current block details", async () => {
        const instance = await BlockchainExplorer.deployed();
        const currentBlockDetails = await instance.logCurrentBlockDetails();

        console.log("current block details: ", currentBlockDetails);
        assert(currentBlockDetails !== null, "current block detail should not be null!");
    });
})