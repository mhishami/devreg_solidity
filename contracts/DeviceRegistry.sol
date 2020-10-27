
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import '@openzeppelin/contracts/access/Ownable.sol';

contract DeviceRegistry is Ownable {

  mapping(address => mapping(bytes32 => bool)) private deviceList;

  event deviceAdded(address indexed user, bytes32 indexed deviceHash);
  event deviceRemoved(address indexed user, bytes32 indexed deviceHash);

  function addDevice(address user, string memory deviceId) public onlyOwner returns (bool) {
    bytes32 deviceHash = keccak256(abi.encodePacked(deviceId));
    deviceList[user][deviceHash] = true;

    return true;
  }
  
  function removeDevice(address user, string memory deviceId) public onlyOwner returns (bool) {
    bytes32 deviceHash = keccak256(abi.encodePacked(deviceId));
    deviceList[user][deviceHash] = false;

    return true;
  }

  function validate(string memory deviceId) public view returns (bool) {
    bytes32 deviceHash = keccak256(abi.encodePacked(deviceId));
    return deviceList[msg.sender][deviceHash];
  }
}
