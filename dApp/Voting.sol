// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.18;

contract votingsystem{

    struct candidate{
        string name;
        uint count;
    }
    candidate[] candidates;
    uint public numofcandidates;
    mapping(address => bool)public voter;

    function addcand(string memory _name) private{
        numofcandidates++;
        candidates.push(candidate(_name,0));  
    }
    
    function voting()public{
        addcand("Mark");
        addcand("Joe");
        addcand("Kesha");
    }

    function voting(uint candid)public{
        require(!voter[msg.sender]);
        voter[msg.sender]=true;
        candidates[candid].count++;
    }
