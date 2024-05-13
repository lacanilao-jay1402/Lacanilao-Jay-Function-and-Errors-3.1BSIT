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
