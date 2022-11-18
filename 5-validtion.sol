// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Validtions {
    // require: validate inputs + access control, note: the longer the error massage the more gas it use
    // revert: validate inputs + access control for nested conditions
    // assert: checkes for value if always equals true, otherwise they might be a bug

    // - gas refund, state updates are reverted
    // cutome error - save gas

    uint public num = 0;
    function testRequire(uint _i) public {
        num += 1;
        require(_i <= 10, "validation error: i > 10");      // in this case the change to num will be undone.
        // code

    }

    // revert is better that "require" for nested conditions
    function testRevert(uint _i) public pure {
        if (_i > 10) {
            revert("validation error: i > 10");
        }
    
        // code    
    }

    function testAssert(uint _i) public pure {
        assert(_i > 10);
        // code 
    }

    // defining custom error, logging the address of the sender and the input passed in
    error MyError(address caller, uint i);
    function testCustomError(uint _i) public view {
        if (_i > 10) {
            revert MyError(msg.sender, _i);
        }
    
        // code    
    }

}