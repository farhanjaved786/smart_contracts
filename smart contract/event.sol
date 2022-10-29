// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;


contract demo{

string public str;


event register(address manager, string char);

function setter(string memory _str) public{
str =_str;
emit register(msg.sender, str);

}





}