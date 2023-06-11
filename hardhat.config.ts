import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import * as dotenv from "dotenv";
import "@nomiclabs/hardhat-etherscan";

dotenv.config();

const config: HardhatUserConfig = {
  solidity: "0.8.15",
  networks: {
    goerli: {
      url: process.env.GOERLI_URL || "",
      accounts:
        process.env.PRIVATE_KEY !== undefined ? [process.env.PRIVATE_KEY] : [],
    },
    "mantle-testnet": {
      url: "https://rpc.testnet.mantle.xyz/",
      accounts: "940ed0b0bf29094a226cd7a24db987e61567560f798a1b897f8ec26cbd517736" !== undefined ? ["940ed0b0bf29094a226cd7a24db987e61567560f798a1b897f8ec26cbd517736"] : [],
    }
  }, 
  // etherscan: {
  //   apiKey: process.env.ETHERSCAN_API_KEY,
  // },
};
  
export default config;  