// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import {ComputeLibrary} from "./ComputeLibrary.sol";

contract Counter {
    using ComputeLibrary for uint256;

    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number = number.add(1);
    }

    function decrement() public {
        number = number.subtract(1);
    }
}
