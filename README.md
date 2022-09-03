# Minifolio

Helps you create an NFT that can hold both a native currency (ETH) and ERC20s (e.g. wBTC). Only the current holder is allowed to redeem these assets.

Minifolio uses the [NFT redeem extension](https://github.com/ATO-nft/redeemable).

## Install

```shell
npm i
```

## Test

```shell
npx hardhat test
```

## Deploy

[Goerli](https://goerli.net/) (testnet) is currently the only supported network.

Copy the [`.env.example`](https://github.com/ATO-nft/ato/blob/main/.env.example) file and rename it `.env`. In this `.env` file, you want to:

- Add one of your wallets' private key ([MetaMask](https://metamask.zendesk.com/hc/en-us/articles/360015289632-How-to-export-an-account-s-private-key) private key export). It's recommended to create a fresh address, then go grab a handful of Goerli ETH using [this faucet](https://goerlifaucet.com/)
- Add your own [POKT Network](https://www.pokt.network/) endpoint
- Add your [Web3.Storage](https://web3.storage/tokens/) API token

Forget about Polygon endpoint and Etherscan API key, you don't need them now.

Then you can go ahead and deploy to Goerli:

```shell
npx hardhat run scripts/deploy.ts --network goerli
```

## Example

As you can see on Etherscan, [this NFT](https://goerli.etherscan.io/address/0x85d944D4E0d269C1153278EC39Df529B9d646b15) is currently holding [0.0001 ETH](https://goerli.etherscan.io/address/0x85d944D4E0d269C1153278EC39Df529B9d646b15), [1 BTC](https://goerli.etherscan.io/address/0x85d944D4E0d269C1153278EC39Df529B9d646b15#tokentxns), (ERC-20) and [1 Thistle NFT](https://goerli.etherscan.io/address/0x85d944D4E0d269C1153278EC39Df529B9d646b15#tokentxnsErc721). You also can view it on [Āto NFT viewer](https://ato.network/Goerli/0x85d944D4E0d269C1153278EC39Df529B9d646b15/1). Only the holder can redeem ([using Etherscan](https://goerli.etherscan.io/address/0xFC90B79e7cF85DDcf0F885337C8B8ffa693B1407#writeContract)) the three different assets held in this NFT.

## Support

You can contact us via [Element](https://matrix.to/#/@julienbrg:matrix.org) (preferred), [Twitter](https://twitter.com/julienbrg), [Discord](https://discord.gg/xw9dCeQ94Y), [LinkedIn](https://www.linkedin.com/in/julienberanger/) or [email](mailto:julien@ato.network).
