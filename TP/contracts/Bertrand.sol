// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BERTRAND is ERC20 {
    constructor() ERC20("BERTRAND", "BRT") {
        _mint(msg.sender, 10000*10**18);
    }
}
