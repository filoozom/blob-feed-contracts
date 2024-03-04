// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract BlobFeed {
    address public owner;

    event Blob(uint256 timestamp);

    error NotOwner();
    error NoBlob();

    constructor() {
        owner = msg.sender;
    }

    function addBlob() public {
        if (msg.sender != owner) {
            revert NotOwner();
        }

        if (blobhash(0) == 0)  {
            revert NoBlob();
        }

        emit Blob(block.timestamp);
    }
}
