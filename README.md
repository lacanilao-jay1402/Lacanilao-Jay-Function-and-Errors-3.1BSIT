# Functions And Errors

In this project, it aims to create a smart contract that implements require(), assert(), and revert() statements.

## Description

This repository shows the implementation of a smart contract that is a requirement for IT Elective 2 in National Teachers College under Bachelor of Science in Information Technology. 

## Getting Started

For the execution of this project, I used remix.ethereum.org as my workplace. This was my online IDE that provides compiling functionalities, deployment and transactions.
Here is the full source code of my project.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract {
    uint256 constant MAX_VALUE = 30;
    uint256 public a;
    uint256 public b;

    constructor(uint256 _a, uint256 _b) {
        a = _a;
        b = _b;
    }

    function requireState(uint256 _value) public pure returns (uint256) {
        require(_value <= MAX_VALUE, "Value exceeds maximum allowed");
        return _value;
    }

    function assertState() public view returns (uint256) {
        uint256 result = a + b;
        assert(result == 15);
        return result;
    }

    function revertState(uint256 _dividend, uint256 _divisor) public pure returns (uint256) {
        require(_divisor != 0, "Zero is not allowed");
        return _dividend / _divisor;
    }
}
This code represents a smart contract that implemented by require, assert and revert statements. This code shows the precise and smooth transactions on making a smart contract. 


## Help

I collected bunch of help by my classmates and colleagues..

## Authors

Jay Lacanilao
lacanilao_jay @ Discord


## License

This project is licensed under the MIT License
