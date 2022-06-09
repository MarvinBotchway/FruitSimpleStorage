// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FruitSimpleStorage{
    
    //Can be made public
    uint256 numberOfFruits;

    //Visibility Must be Set ie.public, private etc
    //No return value
    function addFruit(uint256 _numberOfFruits) public {
        numberOfFruits += _numberOfFruits;
    }

    //No return value
    function removeFruit(uint256 _numberOfFruits) public {
        if(_numberOfFruits > numberOfFruits){
            resetNumberOfFruits();
        }
        else{
            numberOfFruits -= _numberOfFruits;
        }
       
    }

    function resetNumberOfFruits() private {
        numberOfFruits = 0;
    }

    //view, pure = no gas and read only
    //returns(uint256) is the return value of the function
    function retrieveFruit() public view returns(uint256){
        return numberOfFruits;
    }

}