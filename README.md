# Minifolio

Helps you create an NFT that can hold both a native currency (ETH) and ERC20s (e.g. wBTC). Only the current holder is allowed to reddem these assets.

Minifolio uses the [NFT redeem extension](https://github.com/ATO-nft/redeemable).

## Install

```shell
npm i
```

## Deploy

- Copy the `.env.example` file, rename it `.env`, then add one of your wallets' private key (with 0x at the beginning of the string), your own [Infura](https://infura.io/) project ID (full url) and a [Web3.Storage](https://web3.storage/tokens/) API token.
- Make sure you have a handful of Goerli ETH in this wallet.

```
npx hardhat run scripts/deploy.ts --network goerli
```

## Example

You can check this NFT on [Āto NFT viewer](https://ato.network/Goerli/0x430f3E1b3F1458E2d94452e85113181e318Bcaf2/1) or on [Etherscan](https://goerli.etherscan.io/address/0x430f3e1b3f1458e2d94452e85113181e318bcaf2).

## Contact

- Email: [julien@ato.network](mailto:julien@ato.network)
- Discord: [https://discord.gg/2sFr3dqvfg](https://discord.gg/xw9dCeQ94Y)
- Twitter: [https://twitter.com/julienbrg](https://twitter.com/julienbrg)
