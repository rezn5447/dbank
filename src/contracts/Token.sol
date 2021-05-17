// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
  string public name = "MyName";
  //add minter variable
  address public minter;

  //add minter changed event

  constructor() public payable ERC20("Name", "Symbol") {
    //asign initial minter
    minter = msg.sender;
  }

  //Add pass minter role function

  function mint(address account, uint256 amount) public {
    //check if msg.sender have minter role
		_mint(account, amount);
	}
}