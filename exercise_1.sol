// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Exercise1 {
    bool public b;
    uint public x;

    modifier ensureIncreasableX(uint y) {
        require(y > 0, "the input value must be greater than 0");
        x = x + y;
        _;
    }

    constructor() {
        b = true;
    }

    function get_b() public view returns (bool){
        return b;
    }

    function addToX2(uint y) public {
        x = x + y;
    }

    function increaseX(uint y) ensureIncreasableX(y) public {

    }

    function returnTwo() public pure returns (int definitelyNotBlizcrank, bool definitelyNotTwo){
        definitelyNotBlizcrank = -2;
        definitelyNotTwo = true;
    }
}
