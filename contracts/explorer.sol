// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BlockchainExplorer {
    event TransactionLogged(address indexed from, address indexed to, uint value, uint timestamp);

    // Function to log transaction details
    function logTransaction(address to) external payable {
        emit TransactionLogged(msg.sender, to, msg.value, block.timestamp);
    }

    // Function to get block details
    function getBlockDetails(uint blockNumber) public view returns (uint, bytes32, address, uint, uint) {
        return (
            blockNumber,
            blockhash(blockNumber),
            block.coinbase,
            block.timestamp,
            block.difficulty  // Replaced difficulty with prevrandao
        );
    }

    // Function to get latest block details
    function getLatestBlockDetails() external view returns (uint, bytes32, address, uint, uint) {
        uint latestBlock = block.number;
        return getBlockDetails(latestBlock);
    }

     // Another function that uses getBlockDetails
    function logCurrentBlockDetails() public view returns (uint, bytes32, address, uint, uint) {
        return getBlockDetails(block.number);
    }
}
