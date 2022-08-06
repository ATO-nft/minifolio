# Minifolio

Helps you create an NFT that can hold both a native currency (ETH) and ERC20s (e.g. wBTC). Only the current holder is allowed to reddem these assets.

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

- Copy the `.env.example` file, rename it `.env`, then add one of your wallets' private key (with 0x at the beginning of the string), your own [Infura](https://infura.io/) project ID (full url) and a [Web3.Storage](https://web3.storage/tokens/) API token.
- Make sure you have a handful of Goerli ETH in this wallet.

```
npx hardhat run scripts/deploy.ts --network goerli
```

## Example

You can check this NFT on [Āto NFT viewer](https://ato.network/Goerli/0xFC90B79e7cF85DDcf0F885337C8B8ffa693B1407/1) or on [Etherscan](https://goerli.etherscan.io/address/0xFC90B79e7cF85DDcf0F885337C8B8ffa693B1407#tokentxns). Only the holder can redeem ([using Etherscan](https://goerli.etherscan.io/address/0xFC90B79e7cF85DDcf0F885337C8B8ffa693B1407#writeContract)) the BTC and ETH held in the NFT.

## Contact

- Email: [julien@ato.network](mailto:julien@ato.network)
- Discord: [https://discord.gg/2sFr3dqvfg](https://discord.gg/xw9dCeQ94Y)
- Twitter: [https://twitter.com/julienbrg](https://twitter.com/julienbrg)
