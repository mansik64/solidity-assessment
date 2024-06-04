//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract MyToken {

    // public variables here
    string public tname="ETHEREUM";
    string public tabbrv="ETH";
    uint public tsupply=0;

    // mapping variable here
    mapping(address=>uint) public balances;

    // mint function
    function mint(address _add,uint _value) public {
        tsupply +=_value;
        balances[_add] +=_value;
    }

    // burn function
    function burn(address _add,uint _value) public {
        if(balances[_add] >= _value){
        tsupply -=_value;
        balances[_add] -=_value;
    }
}
}
