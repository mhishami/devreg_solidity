
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract DeviceRegistry {

  mapping(address => mapping(bytes32 => bool)) private deviceList;

  function addDevice(address user, string memory deviceId) public returns (bool) {
    bytes32 deviceHash = keccak256(abi.encodePacked(deviceId));
    deviceList[user][deviceHash] = true;

    return true;
  }
  
}
