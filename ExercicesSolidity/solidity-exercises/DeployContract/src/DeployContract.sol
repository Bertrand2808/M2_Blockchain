// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Deployer {
    /*
        This exercise assumes you know how to deploy a contract.

        1. Deploy `DeployMe` contract and return the address in `deployContract` function.
    */
    address public deployedContractAddress;
    function deployContract() public returns (address) {
        // your code here
        // return address of the contract
        deployedContractAddress = address(new DeployMe(1));
        return deployedContractAddress;
    }
}

contract DeployMe {
    uint256 public value;

    constructor(uint256 _value) {
        value = _value;
    }

    function setValue(uint256 _value) public {
        value = _value;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}

