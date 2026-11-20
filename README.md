# milkyCronos (MCRO)

Official smart contract repository and technical documentation for the **milkyCronos (MCRO)** token on the Cronos blockchain.

## Token Specifications

* **Name:** milkyCronos
* **Symbol:** MCRO
* **Network:** Cronos Mainnet (EVM Compatible)
* **Standard:** CRC-20 / ERC-20
* **Decimals:** 18
* **Total Supply:** 10,000,000 MCRO (Fixed Supply)
* **Contract Address:** `[Insert 0x... Contract Address here after deployment]`

## Key Smart Contract Features

* **Fixed Supply:** The entire supply of 10,000,000 MCRO is minted once upon initial deployment. There is no minting function to create additional tokens in the future.
* **Industry Standard:** Built using standard ERC-20/CRC-20 interfaces, ensuring seamless compatibility with Web3 wallets and DeFi protocols across the Cronos ecosystem.

## How to Add MCRO to Your Wallet (MetaMask / Crypto.com Onchain)

1. Ensure your wallet network is set to **Cronos Mainnet** (Chain ID: `25`).
2. Select **Import Tokens** or **Custom Token**.
3. Paste the official MCRO **Contract Address** into the designated field.
4. The Token Symbol (`MCRO`) and Decimals (`18`) should populate automatically.
5. Click **Add Custom Token** to view your balance.

## Repository Structure

```text
├── contracts/
│   └── MilkyCronos.sol    # Main smart contract source code for MCRO
└── README.md              # Project documentation
```

## Official Links

* **Block Explorer:** [View on Cronoscan](https://cronoscan.com) *(Replace with your direct contract URL)*
* **Website / Socials:** `[Add links to your X/Twitter, Telegram, or Website]`

## Disclaimer

The information provided in this repository is strictly for technical documentation and development purposes. Digital assets carry significant risk; always Do Your Own Research (DYOR) and verify the official contract address before interacting with any smart contract.
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
