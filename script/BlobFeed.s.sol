// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {BlobFeed} from 'src/BlobFeed.sol';

contract BlobFeedScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
        new BlobFeed();
    }
}
