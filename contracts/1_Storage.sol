// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Data  includes:
// String = unfixed array of character Uthman,hey
// int = hold negative and  positive number 1,,2,3,
// uint = hold only positive numbers   -1,-2,2 ,3
// address = holds ethereum address which are 20 bytes
// bool= holds  a true or false value true or false
// bytes = fixed or unfixed length or array of bytes


contract setValue{
// 3 types of variables Variables 
// state variable = declared outside of the function and stored permanently on the blockchain
// local variable = declared inside of the function
// global variable = provide information about the blockchain and transactions
uint256 private  newValue;
 
 function setNewValue(uint256 _newValue) public {
    newValue = _newValue;
 }

 function getValue () public view returns (uint256) {
    return newValue;

 }

     function resetValue () external  {
        newValue  = 0;
     }



}
