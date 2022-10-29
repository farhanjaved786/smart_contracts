// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;



contract parent {

    mapping(uint=> string) public student;

    function input (uint roll, string memory name) public {
        student[roll] = name;

}

contract child is parent{
    
}