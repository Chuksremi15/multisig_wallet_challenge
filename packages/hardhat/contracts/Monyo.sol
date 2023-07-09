pragma solidity >=0.8.0 <0.9.0; //Do not change the solidity version as it negativly impacts submission grading
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// learn more: https://docs.openzeppelin.com/contracts/4.x/erc20

contract Monyo is ERC20 {
    constructor(
        address payable _multisigwallet,
        uint256 totalSupply
    ) ERC20("Monyo", "MNY") {
        // 100 supply of gold minted to multisig wallet
        _mint(_multisigwallet, totalSupply);
    }
}
