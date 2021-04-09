pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title StandardERC20
 * @dev Implementation of the StandardERC20
 */
contract CreatorToken is ERC20{

    constructor (
        string memory name,
        string memory symbol
    )
        ERC20(name, symbol)
        payable
    {
        require(initialBalance > 0, "StandardERC20: supply cannot be zero");

        _setupDecimals(18);
        _mint(_msgSender(), 10000000000000000000000);
    }
}
