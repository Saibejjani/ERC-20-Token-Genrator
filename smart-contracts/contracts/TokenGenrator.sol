//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
import "./TokenContract.sol";

contract TokenGenrator {
    TokenContract[] public tokenContractArray;
    event TokenCreated(
        string tokenName,
        string tokenSymbol,
        uint256 tokenSupply
    );

    function genrateTokens(
        string memory tokenName_,
        string memory tokenSymbol_,
        uint256 tokenSupply_
    ) public {
        TokenContract token = new TokenContract(
            tokenName_,
            tokenSymbol_,
            tokenSupply_,
            msg.sender
        );
        tokenContractArray.push(token);

        emit TokenCreated(tokenName_, tokenSymbol_, tokenSupply_);
    }
}
