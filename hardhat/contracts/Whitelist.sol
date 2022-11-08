//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist {
    //max number of addresses
    uint8 public maxWhiteListAddresses;
 //uint8 because we dont expect a big number
    uint8 public numAddressesWhiteListed;

    //this a hashmap , map address to a value
    mapping(address => bool )public whiteListedAddresses;

    constructor(uint8 _maxWhiteListAddresses){
 maxWhiteListAddresses = _maxWhiteListAddresses;
 }

    function addAddressToWhiteList()public{
        require(!whiteListedAddresses(msg.sender),"sender already in the whitelist");
        require(numAddressesWhiteListed < maxWhiteListAddresses ,"Max Limit Reached");
        whiteListedAddresses[msg.sender] =true;
        numAddressesWhiteListed += 1;
    }




}
