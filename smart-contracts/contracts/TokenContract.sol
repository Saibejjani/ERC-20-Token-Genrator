// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenContract is ERC20 {
    constructor(
        string memory tokenName,
        string memory tokenSymbol,
        uint256 tokenSupply,
        address minter
    ) ERC20(tokenName, tokenSymbol) {
        _mint(minter, tokenSupply * 10**decimals());
    }
}
