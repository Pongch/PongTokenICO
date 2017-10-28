var PongCrowdsale = artifacts.require("./PongCrowdsale.sol");

module.exports = function(deployer, networks, accounts) {
  const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 10 // 10 seconds from now
  const endTime = startTime + (86400 * 20) // 20 days
  const rate = new web3.BigNumber(1000)
  const wallet = accounts[0] //make the 1st account on TESTRPC a default wallet for contract

  deployer.deploy(PongCrowdsale, startTime, endTime, rate, wallet, { gas: 4700000 });
};
