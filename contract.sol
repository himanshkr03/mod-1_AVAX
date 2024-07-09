


// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ExceptionHamdling{
    
    address public Owner_Address = msg.sender;
    uint public age = 75;


    function requireFunction(uint x) public{
        require(x!=0,"The Required Age must be greater than 0");
        age += x;
    }


    function revertFunction(uint x) public{
        age += x;
        if(x<=0){

            revert("The Value of Age should be > 0");
        }
    }


    error throwError(string,address);


    function checkOwner() public view{
        assert(Owner_Address==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }

    function getAge() public view returns (uint){
        return age;
    }
}
