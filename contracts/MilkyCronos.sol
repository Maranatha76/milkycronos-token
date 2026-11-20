// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title milkyCronos (MCRO)
 * @dev Implementation of the fixed-supply CRC-20 / ERC-20 token on Cronos.
 */
contract MilkyCronos is ERC20 {
    uint256 private constant INITIAL_SUPPLY = 10_000_000 * 10**18;

    constructor() ERC20("milkyCronos", "MCRO") {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}

