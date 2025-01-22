// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


contract simpleBank {
    // Project Goals
// Users can deposit Ether into the bank.
// Users can withdraw Ether from their account balance.
// Users can check their balance 

mapping (address => uint) private balances;
address public admin;
address[] private accountHolders;

constructor() {
    admin = msg.sender;
}

function deposit () public payable {
    require(msg.value > 0, "Deposit more than 0 wei");
    balances[msg.sender] += msg.value;
     if (! isAccountHolder(msg.sender)){
        accountHolders.push(msg.sender);
     }
  
}

function withdraw (uint amount) public {
    require(amount <= balances[msg.sender], "insufficient balance");
    require(amount > 0, "Amount must be more than 0");
    balances[msg.sender] -= amount;
    payable (msg.sender).transfer(amount);
}

function isAccountHolder (address _address) private view returns (bool){
    for (uint i  = 0; i <accountHolders.length; i++){
        if (accountHolders[i] == _address ){
            return true;
        }

    }
    return false;
} 



}

