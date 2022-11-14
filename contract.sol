// SPDX-License-Identifier: Unlicense
// This is a reference solidity doc

pragma solidity ^0.8.4;

contract Contract {
    // 1) Varibles 
        //  [DATA TYPE] [VISIBILITY] [NAME OF VARIBLE] = [VALUE];

        // Common Data Types:
            // string
            // bool
            // uint
            // int
            // address : Starts with 0x

        // Visibility:
            // public: it could be called from any other contract on the blockchain
            // private: can't be accessed or modified from other smart contracts

    string public myString = "String";
    bool public myBoolean = true;
    uint public myUint = 1;
    int public myInt = 1;
    address public myAddress = 0x6a2629adFAD6474b0660C05218DfABE5B68C19EE;

}

