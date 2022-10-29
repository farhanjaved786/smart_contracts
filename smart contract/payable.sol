// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;


contract funds{

address payable user = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

function pay() public payable {

}

function balance() public view returns(uint) {

return address(this).balance;

}

function payEaterTOACC()public {
    user.transfer(10 ether);
}



}