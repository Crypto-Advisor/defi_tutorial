pragma solidity ^0.5.0;

import "./DappToken.sol";
import "./DaiToken.sol";

contract TokenFarm {
    string public name = "Dapp Token Farm";
    DappToken public dapptoken;
    DaiToken public daitoken;

    constructor(DappToken _dappToken, DaiToken _daiToken) public {
      dapptoken = _dappToken;
      daitoken = _daiToken;
    }
}
