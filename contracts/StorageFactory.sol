// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { StoreNum } from "./sample3.sol";

contract StorageFactory {
    StoreNum[] public listOfContracts;

    function createContract() public {
       listOfContracts.push(new StoreNum());
    }

    function AddToContract(uint256 _contractIndex, uint256 _favNumber) public {
       listOfContracts[_contractIndex].store(_favNumber);
    }

    function read(uint256 _Index) public view returns(uint256){
        return listOfContracts[_Index].retrieve();
    }
}