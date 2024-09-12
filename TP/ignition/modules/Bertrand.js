const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const BertrandModule = buildModule("BertrandModule", (m) => {
  const bertrand = m.contract("BERTRAND");

  return { bertrand };
});

module.exports = BertrandModule;