pragma solidity ^0.4.15;

import './PongToken.sol';
import 'zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';


contract PongCrowdsale is Crowdsale {
  function PongCrowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet)
    Crowdsale(_startTime, _endTime, _rate, _wallet)
    {

    }

    //create crowdsale
    function createTokenContract() internal returns (MintableToken) {
      return new PongToken();
    }
  }
