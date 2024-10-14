// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract atm {
    uint public balance;

    // Function to deposit ether
    function deposit(uint amount) public payable {
        require(amount > 0, "Deposit amount must be greater than zero.");
        assert(balance + amount > balance); 
        balance += amount;
    }

    // Function to withdraw ether
    function withdraw(uint amount) public payable{
        require(amount <= balance, "Insufficient balance for requested withdrawal.");
        if(amount > balance){
            revert("Not enough balance for requested withdrawal.");
        }
        balance -= amount;
    }
}
