## Day 01 — Generate a Keypair & Get Devnet SOL

### What I built
A Node.js script that programmatically generates a Solana keypair
and verifies a devnet airdrop balance via RPC.

### Run it
npm install
node create-wallet.mjs

### Key Learnings
- Keypairs use Ed25519 algorithm, generated fully offline
- Public key = address (shareable), Private key = identity proof (secret)
- 1 SOL = 1,000,000,000 lamports
- Devnet SOL is free test currency, no real value