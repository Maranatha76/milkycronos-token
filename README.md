// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MilkyCronos is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("MilkyCronos", "MCRO")
        Ownable(initialOwner)
    {
        // Mencetak 10.000.000 token awal ke dompet pemilik (dengan 18 desimal)
        _mint(initialOwner, 10_000_000 * 10 ** decimals());
    }

    // Fungsi opsional: Pemilik dapat mencetak token tambahan jika diperlukan
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
