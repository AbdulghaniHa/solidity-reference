// SPDX-License-Identifier: Unlicense
// This is a reference solidity doc

// This defines the compiler version
// ^0.8.4 or more (Not recommended in production)
// Specify a one version like 0.8.4
pragma solidity ^0.8.4;

// Defining contract
contract Contract {
    /* 1) Varibles 
        [DATA TYPE] [VISIBILITY] [NAME OF VARIBLE] = VALUE;

        Common Data Types:
            string
            bool
            
            uint: 0 to 2**256 - 1
            uint8: 0 to 2**8 - 1
            uint16: 0 to 2**16 - 1
            
            int: -2**255 to 2**255 - 1
            int128: -2**127 to 2**127 - 1
            address : Starts with 0x
            bytes32

        Visibility:
            public: it could be called from any other contract on the blockchain
            private: can't be accessed or modified from other smart contracts

        Types of Data Types:
            Values: bool, int ..
            Reference: Array
    */

    string public myString = "String";
    bool public myBoolean = true;
    uint public myUint = 1;
    int public myInt = 1;
    address public myAddress = 0x6a2629adFAD6474b0660C05218DfABE5B68C19EE;

    // To get range of datatype
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    /* 2) Functions
        function [FUNCTION_NAME()]
    */
}   

