
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import '@openzeppelin/contracts/access/Ownable.sol';

contract DeviceRegistry is Ownable {

  mapping(address => mapping(bytes32 => bool)) private deviceList;

  function addDevice(address user, string memory deviceId) public onlyOwner returns (bool) {
    return true;
  }
  
  function removeDevice(address user, string memory deviceId) public onlyOwner returns (bool) {
    return true;
  }

  function validate(string memory deviceId) public view returns (bool) {    
    return true;
  }
}
