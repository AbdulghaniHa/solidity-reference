// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Modifier {
    // Function modifier
    // Basic, input, sandwich


    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "paused");
        _;  // this means the rest of the injected code will be executed
    }

    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        _;
    }

    function inc() external whenNotPaused {
        // we have injected the "whenNotPaused" logic into this function
        count += 1;
    }

    function dec() external whenNotPaused {
        // we have injected the "whenNotPaused" logic into this function
        count -= 1;
    }

    function incBy(uint _x) external whenNotPaused cap(_x) {
        // the increament will happen when only if whenNotPaused && cap
        count += _x;
    }


    modifier sandwich() {
        count += 10;
        _;

        count *=2;
    }

    // by calling this the execution will as follows:
        // 1- count + 10
        // 2- count + 1
        // 3- count * 2

    function foo() external sandwich {
        count += 1;
    }
}