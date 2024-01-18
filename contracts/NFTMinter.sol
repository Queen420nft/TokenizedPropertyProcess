// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

interface NFTMinterInterface {
    function mint(address to) external;
}

contract NFTShop {
    AggregatorV3Interface internal priceFeed;
    NFTMinterInterface public nftMinter;
    uint256 public nftPrice = 2; // 2.00 USD with 2 decimal places
    address public owner;

    constructor(address _nftMinterAddress) {
        nftMinter = NFTMinterInterface(_nftMinterAddress);
        /**
        * Network: Sepolia
        * Aggregator: ETH/USD
        * Address: 0x694AA1769357215DE4FAC081bf1f309aDC325306
        */
        priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        owner = msg.sender;
    }

    function getChainlinkDataFeedLatestAnswer() public view returns (int) {
        (
            /*uint80 roundID*/,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed.latestRoundData();
        return price;
    }

    function calculateTokenAmount(uint256 amountETH) public view returns (uint256) {
        // Sent amountETH, calculate how many NFTs can be minted
        uint256 ethUsd = uint256(getChainlinkDataFeedLatestAnswer());
        uint256 amountUSD = amountETH * ethUsd / 10**18;
        uint256 amountNFT = amountUSD / nftPrice;
        return amountNFT;
    }

    // Receive function to mint NFTs when ETH is sent to the contract
    receive() external payable {
        uint256 amountNFT = calculateTokenAmount(msg.value);
        for (uint256 i = 0; i < amountNFT; i++) {
            nftMinter.mint(msg.sender);
        }
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function withdraw() external onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}
