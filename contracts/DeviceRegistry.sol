
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import '@openzeppelin/contracts/access/Ownable.sol';

contract DeviceRegistry is Ownable {

  mapping(address => mapping(bytes32 => bool)) private deviceList;

  /**
   * Through abi.encodePacked(), Solidity supports a non-standard packed mode
   * where:
   * - types shorter than 32 bytes are neither zero padded nor sign extended and
   * - dynamic types are encoded in-place and without the length.
   *
   */
  function addDevice(address user, string memory deviceId) public onlyOwner returns (bool) {
    bytes32 deviceHash = keccak256(abi.encodePacked(deviceId));
    deviceList[user][deviceHash] = true;

    return true;
  }
  
  function removeDevice(address user, string memory deviceId) public onlyOwner returns (bool) {
    return true;
  }

  function validate(string memory deviceId) public view returns (bool) {
    return true;
  }
}
