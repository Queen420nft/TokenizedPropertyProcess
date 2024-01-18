// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

interface NFTMinterInterface {
    function mintFrom(address to, uint256 amountNFT, uint256 sourceId) external payable;
}

contract NFTShop {
    AggregatorV3Interface internal priceFeed;
    NFTMinterInterface public nftMinter;
    uint256 public nftPrice = 200; // 2.00 USD with 2 decimal places
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

    function calculateTotalCost(uint256 amountNFT) public view returns (uint256) {
        return amountNFT * nftPrice;
    }

    // Receive function to mint NFTs when ETH is sent to the contract
    // receive() external payable {
    //     // Implementa la lógica necesaria, si es necesario, antes de llamar a mintFrom
    //     uint256 amountNFT = calculateTokenAmount(msg.value);
    //     nftMinter.mintFrom{value: msg.value}(msg.sender, amountNFT, getSourceId());
    // }

    function mintNFT(address to, uint256 amountNFT) external payable {
        // Verificar que se haya enviado suficiente Ether
        uint256 totalCost = calculateTotalCost(amountNFT);
        require(msg.value >= totalCost, "Ether insuficiente enviado"); //<-El problema parece estar aqui

        // Llamar a la función mintFrom del contrato NFTMinterInterface con la dirección del destinatario, la cantidad de NFTs y el sourceId
        nftMinter.mintFrom{value: msg.value}(to, amountNFT, getSourceId());
    }

    // Implementa la lógica para obtener el sourceId adecuado según tus requisitos
    function getSourceId() internal pure returns (uint256) {
        // Puedes implementar la lógica para obtener el sourceId según tus requisitos
        return 0; // Esto es un valor de ejemplo, ajusta según sea necesario
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "No es el propietario");
        _;
    }

    function withdraw() external onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}
