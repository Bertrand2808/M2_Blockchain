const { expect } = require("chai");

describe("BERTRAND", function () {
  it("Should deploy the BERTRAND contract and issue tokens", async function () {
    const [owner] = await ethers.getSigners();

    const BERTRAND = await ethers.getContractFactory("BERTRAND");
    const bertrand = await BERTRAND.deploy();
    await bertrand.deployed();

    expect(await bertrand.name()).to.equal("BERTRAND");
    expect(await bertrand.symbol()).to.equal("BRT");

    await bertrand.issueToken();
    const ownerBalance = await bertrand.balanceOf(owner.address);
    expect(ownerBalance).to.equal(ethers.utils.parseUnits("10000", 18));
  });
});