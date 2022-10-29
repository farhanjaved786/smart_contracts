// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;
struct instructor{
   uint age;
    string name;
    address addr;
}

contract acdemy {

instructor public acdemyInstructor;


address public owner = msg.sender;

constructor (uint _age, string memory _name){
    acdemyInstructor.age = _age;
    acdemyInstructor.name = _name;
    acdemyInstructor.addr = msg.sender;

}



// modifier require ownerself{
//      owner = msg.sender;
//     _;
// }

function setInstructure(uint _age, string memory _name, address _addr) public  {
instructor memory myInstructor = instructor({
    age : _age,
    name :_name,
    addr : _addr

});
acdemyInstructor = myInstructor;

}





}
