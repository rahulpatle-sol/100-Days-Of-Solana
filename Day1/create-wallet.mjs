// creating a wallet and importing the devnet sol


import { addCodecSentinel, address, createSolanaRpc, devnet, generateKeyPair, generateKeyPairSigner } from "@solana/kit";
//  generate new wallet
const Wallet=await generateKeyPairSigner();
console.log(`my  wallet address:${Wallet.address}`);
console.log(`\n This wallet address is my  public key `);
console.log(
  "The private key stays in memory. In a real app, you'd save it securely."
);

//my  wallet address:BZ42iQvBbxVL2dp3xQke6iq3Ktw6RQX39XzsGXFBS2py
//  creating a rpc connection  

const  rpc=createSolanaRpc(devnet("https://api.devnet.solana.com"));
const  {value:balance}=await rpc.getBalance(address("BZ42iQvBbxVL2dp3xQke6iq3Ktw6RQX39XzsGXFBS2py"));
//const { value: balance } = await rpc.getBalance(Wallet.address).send();
const balanceInSol = Number(balance) / 1_000_000_000;