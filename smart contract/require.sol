// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;


contract friends{

address public owner;

constructor (){
owner = msg.sender;

}


modifier onlyOwner(){

 require(owner==msg.sender, "you are not the owner");
 _;

}


function set(uint a) public onlyOwner view returns(uint){
   
    return a;
}


}






