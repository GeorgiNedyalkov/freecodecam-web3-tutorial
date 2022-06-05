// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)
        public
    {
        // Address of the contract
        // ABI - Application Binary Interface
        // to call the store function of SimpleStorage.sol, we first need to get that contract object
        return
            simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber); // we are saving the simpleStorage object at the given index in our array of simple storages
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
