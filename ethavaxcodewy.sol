// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionsandError {
    //public variables
    string public wy;
    string public ron;
    uint256 public wyron;
    //mapping
    mapping(address => uint256) public balances;


    event Mint(address indexed account, uint256 amount);
    event Burn(address indexed account, uint256 amount);

    constructor(string memory _wy, string memory _ron) {
        wy = _wy;
        ron = _ron;
    }

    function mint(uint256 amount) public {
        require(amount > 0, "Mint amount must be greater than 0");
        assert(wyron + amount >= wyron); // to ensure there is no overflow
        balances[msg.sender] += amount;
        wyron += amount;
        emit Mint(msg.sender, amount);
    }

    function burn(uint256 amount) public {
        if (amount > 200) {
            revert("Burn amount too high");
        }
        require(balances[msg.sender] >= amount, "Insufficient funds for burning");
        balances[msg.sender] -= amount;
        wyron -= amount;
        emit Burn(msg.sender, amount);
    }
}
