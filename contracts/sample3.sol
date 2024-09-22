// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract StoreNum {
    uint256 public  favNum;

    struct Person {
        uint256 number;
        string name;
    }

    Person[] listOfPple;
    mapping(string => uint256) public nameToFav;

    function store(uint256 _number) public{
        favNum = _number;
    }

    function retrieve() public view returns(uint256){
        return favNum;
    } 

    function addPeople(uint256 _num, string memory _name) public{
        listOfPple.push(Person(_num,_name));
        nameToFav[_name] = _num;
    }
}