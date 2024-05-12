# Functions And Errors

In this project, it aims to create a smart contract that implements require(), assert(), and revert() statements.

## Description

This repository shows the implementation of a smart contract that is a requirement for IT Elective 2 in National Teachers College under Bachelor of Science in Information Technology. 

## Getting Started

For the execution of this project, I used remix.ethereum.org as my workplace. This was my online IDE that provides compiling functionalities, deployment and transactions.
Here is the full source code of my project.

// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyContract {
    uint256 public value;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 _newValue) public {


        require(msg.sender == owner, "Only the owner can set the value");

        assert(_newValue != 0);

        if(_newValue < value) {
            revert("New value must be greater than or equal to current value");
        }

        value = _newValue;
    }
}

This code represents a smart contract that implemented by require, assert and revert statements. This code shows the precise and smooth transactions on making a smart contract. 


## Help

I collected bunch of help by my classmates and colleagues as well as in the metacrafters discord community
```

## Authors

Jay Lacanilao
lacanilao_jay @ Discord


## License

This project is licensed under the MIT License
