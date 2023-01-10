const main = async () => {
  const GenratorFactory = await hre.ethers.getContractFactory("TokenGenrator");
  const GenratorContract = await GenratorFactory.deploy();

  await GenratorContract.deployed();

  console.log("Transactions address: ", GenratorContract.address);

  const tx = await GenratorContract.genrateTokens("sai", "skr", 1000);
  const recipet = await tx.wait();
  console.log(recipet);
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
};

runMain();
