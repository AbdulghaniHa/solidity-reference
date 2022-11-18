// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Functions {
    /*  Functions
        function FUNCTION_NAME(DATATYPE VARIABLE_NAME) VISIBILITY READ/WRITE_TYPE returns(RETURNED_DATATYPE) {
            LOGIC
            return LOGIC
        }

        pure: read function + CAN NOT read data from blockchain and state variables or smart contracts
        view: read function + CAN read data from blockchain and state variables or smart contracts

    */

    function add(uint x, uint y) external pure returns(uint) {
        uint sum = x + y;   // Local variable 
        return sum;
    }

    function globalVars() external view returns(address, uint, uint) {
        // Global variables: stores data from blockchain
        address sender = msg.sender;            // The address of the caller
        uint timestamp = block.timestamp;       // Timestamp of the calling request of contract
        uint blockNum = block.number;           // Stores the block number
        return (sender, timestamp, blockNum);
    }

}