// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract arrayExample{

    
    struct students {
        string name;
        uint scores;
        int age;
    }


    uint[4] arr = [2,4,5,5];

    function viewarr() public view returns (uint[4] memory){
        return arr;
    }
   
    // students public studentArray;

    // function setArray( string memory _students, uint _scores , int _age) public {
    //    students memory studentArrays = studentArray(_students,_scores,_age);
    //    studentArray.push(studentArrays);
    //}


    // else statement

    function checkAge (uint256 age) public pure returns (string memory){
        if (age >= 18){
            return "you be OG";
        }
        else {
            return "you be underage";
        }
    } 


    // for loop

    function sumArray (uint[] memory array ) public pure returns (uint){
        uint sum = 0;

        for (uint i = 0; i < array.length; i++){
            sum += array[1];
        }

        return sum ;
    }

   function returnNumbers () public pure returns(uint[] memory){
    uint[] memory numbers = new uint[](100);

    for (uint i = 0; i < numbers.length ; i++){
        numbers[i] = i;
    }

    return numbers;
   }

    // function returnNumbers() public pure returns (uint[] memory){
    //     uint[] memory numbers = new uint[] (150);

    //     for (uint i = 0; i < 100; i++){
    //         numbers[i] = i + 1;
    //     }

    //     return numbers;
    // }

    // while loop
function whileNumbers() public pure returns (uint[] memory) {
     // Declare array length 
   uint[] memory number = new uint[](100); // Declare and initialize empty "numbers" array
    
    uint index = 0;
    
    while(index < 100){
        number[index] = index +1 ;// Assign value to each element in the loop
        index++;
    }

    return number;
}

// mappings

mapping (address => uint) public balances;
function setBalance(uint amount) public {
    balances[msg.sender] = amount;
}

function getBalance (address user) public view returns (uint) {
return balances[user];
}
    
}