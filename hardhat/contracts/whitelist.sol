// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Whitelist{
    uint8 public maxWhitelistedAddresses;
    uint8 public numAddressesWhitelisted;
    mapping(address => bool) public whitelistedAddresses;

    //The max number of whitelisted will be set on deployment
    constructor(uint8 _maxWhitelistedAddresses){
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender], "This address is already in whitelist");
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "There is no more space available in the whitelist");

        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}