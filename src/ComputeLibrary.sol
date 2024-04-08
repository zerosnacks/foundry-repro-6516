// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import {AddLibrary} from "./AddLibrary.sol";
import {SubtractLibrary} from "./SubtractLibrary.sol";

library ComputeLibrary {
    using AddLibrary for uint256;
    using SubtractLibrary for uint256;

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a.add(b);
    }

    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        return a.subtract(b);
    }
}
