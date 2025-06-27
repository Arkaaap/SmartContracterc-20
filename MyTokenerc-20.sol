// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.20;//verion of solidity 

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";//iMPORTING erc20 implementation from openzeppelin repo 
//declaring contract name as MyToken which inherits openzeppelin repo implementation
contract MyToken is ERC20 {
//declaring the constructor it executes automatically when contract is deployed 
    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {//taken initial supply as an input parameter token name is MyToken
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }
}
