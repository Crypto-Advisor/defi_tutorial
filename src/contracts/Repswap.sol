pragma solidity ^0.5.0;
import "../contracts/CreatorTokenv2.sol" as CreatorToken;

contract Repswap is CreatorToken {
  string public name = "Repswap";

  struct account{
    string name;
    string ticker;
    string description;
    string twitterHandle;
    address payable creator;
  }

  event createToken(
    string name,
    string ticker,
    string description,
    string twitterHandle,
    address payable creator
  );

  function createToken(string memory _name, string memory _ticker){
    require(_name).length > 0);
    require(_ticker).length > 0);

    CreatorToken(_name, _ticker);

  }


}
