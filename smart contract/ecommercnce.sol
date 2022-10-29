// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract ecommerence{

struct Product{
   uint idNumber;
   string item;
   string description;
    address payable seller;
    uint price;
    address buyer;
     bool delivered;

}

Product[] public products;

uint counter = 1;

event registered(string item, uint idNumber, address seller);
event  bought(uint idNumber, address buyer);
event delivered(uint idNumber);



function listing(string memory _item, string memory _description, uint _price) public   {
require(_price>0, " price should be non zero");
Product memory temProduct;

temProduct.idNumber = counter;
temProduct.item = _item;
temProduct.description = _description;
temProduct.seller = payable(msg.sender);
temProduct.price = _price*10**18;
products.push(temProduct);
counter++;

emit registered(_item, temProduct.idNumber, msg.sender);

}


function buy(uint _idNumber) payable public{
   require(products[_idNumber-1].price==msg.value, "please pay the exect price");
   require(products[_idNumber-1].seller!=msg.sender, "seller cannot be buyer");
products[_idNumber-1].buyer = msg.sender;
emit bought(_idNumber, msg.sender);

}


function delivery(uint _idNumber) public{
   require(products[_idNumber-1].buyer==msg.sender, "only buyer can confirm it");
   products[_idNumber-1].delivered == true;
   products[_idNumber-1].seller.transfer(products[_idNumber-1].price);
   emit delivered(_idNumber);
}








}