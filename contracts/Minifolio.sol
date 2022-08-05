// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Redeemable.sol";

/// @custom:security-contact julien@strat.cc
contract Minifolio is ERC721, ERC721URIStorage, ERC721Burnable, Ownable, Redeemable {

    address public btcAddress;

    constructor(
        string memory name, 
        string memory symbol, 
        string memory cid,
        address _btcAddress
    ) ERC721(name, symbol) {
        safeMint(msg.sender, 1, cid);
        renounceOwnership();
        btcAddress = _btcAddress;
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://ipfs.io/ipfs/";
    }

    function safeMint(
        address to,
        uint256 tokenId,
        string memory uri
    ) public onlyOwner {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }

    function _burn(uint256 tokenId)
        internal
        override(ERC721, ERC721URIStorage)
    {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function isRedeemable(uint256 tokenId) 
        public 
        view 
        virtual 
        override 
        returns (bool) 
    {
		require(_exists(tokenId), "ERC721Redeemable: Redeem query for nonexistent token");
		return super.isRedeemable(tokenId);
	}

	function redeem(uint256 tokenId) 
        public 
        virtual 
        override
    {
		require(_exists(tokenId), "ERC721Redeemable: Redeem query for nonexistent token");
		require(ownerOf(tokenId) == msg.sender, "ERC721Redeemable: You are not the owner of this token");
        ERC20(btcAddress).transfer(ownerOf(tokenId), ERC20(btcAddress).balanceOf(address(this)));
        payable(ownerOf(tokenId)).transfer(address(this).balance);
		super.redeem(tokenId);
	}

    receive() external payable {}

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, Redeemable) returns (bool) {
		return super.supportsInterface(interfaceId);
	}
}