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
