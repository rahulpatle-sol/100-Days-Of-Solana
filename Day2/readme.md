## Day 02 — Persistent Wallet with Balance Check

### What I built
A script that generates a Solana keypair once, saves it to wallet.json,
and reloads it on every subsequent run — solving the persistence problem
from Day 1.

### Run it
node persistent-wallet.mjs

### Key Learnings
- generateKeyPair(true) makes keys extractable for file storage
- Ed25519 private key export requires pkcs8 format in Node.js
- Solana keypair = 64 bytes (32 private + 32 public)
- Never store private keys in plain JSON in production