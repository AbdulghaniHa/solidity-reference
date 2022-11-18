// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Loops {
    // 4) Loops: exacts C++, Javascript
        // Has to be in function, struct, variable
        // The bigger the number of loop the more gas it takes !

    function forLoop() external pure{
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to the next iteration
                continue;
            }
            if (i == 5) {
                // breaks out and stop the loop
                break;
            }
        }
    }

    function whileLoop() external pure{
        uint j = 0;
        while (j < 10) {
            // code
            j++;
        }
    }
}