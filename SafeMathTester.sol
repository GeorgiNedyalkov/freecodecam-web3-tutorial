// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SafeMathTester {
    uint8 public bigNumber = 255; // unchecked
    uint8 public zero = 0;

    function add() public {
        bigNumber++;
    }

    function sub() public {
        unchecked {
            zero--;
        }
    }
}
