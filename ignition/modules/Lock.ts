import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";
import { ethers } from "hardhat";

const FundraisingModule = buildModule("FundraisingModule", (m) => {
    const deployFundraising = m.contract("Fundraising", []);

    return { deployFundraising };
});

export default FundraisingModule;