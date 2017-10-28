pragma solidity ^0.4.15;

import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract PongToken is MintableToken {
  string public constant name = "PongTokenGold";
  string public constant symbol = "PTG";
  uint8 public constant decimals = 18;
}
