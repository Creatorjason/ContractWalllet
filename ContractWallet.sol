//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StoreEther{
    // an address that can withdraw the stored ether
    address payable public owner;
    
    constructor(){
        owner = payable(msg.sender);
    }
    receive() external payable{}
    function withdraw(uint _amount) external {
        owner.transfer(_amount);
    }
    function getBalance() external view returns(uint , uint ){
        return (owner.balance,  address(this).balance);
       
    }

}
