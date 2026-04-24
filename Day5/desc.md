# Browser-Based Wallet Setup (Devnet) – Research Notes

## Overview
This document outlines the complete setup of a browser-based cryptocurrency wallet using a Chrome extension, configured for Devnet usage. The process includes wallet creation, seed phrase management, account initialization, and funding via Devnet airdrop.

---

## Steps Performed

### 1. Extension Installation
- Installed a browser wallet extension on Google Chrome.
- Verified extension authenticity and source before installation.

### 2. Wallet Creation
- Initialized a new wallet within the extension.
- Generated a unique seed phrase (recovery phrase).

### 3. Seed Phrase Management
- Securely stored the seed phrase offline.
- Ensured no digital exposure (no screenshots, cloud storage, etc.).

### 4. Account Setup
- Created a primary wallet account.
- Verified public key generation and address usability.

### 5. Network Configuration
- Switched wallet network to **Devnet**.
- Ensured correct RPC endpoint and environment.

### 6. Airdrop (Devnet SOL)
- Requested Devnet tokens via airdrop.
- Confirmed transaction and wallet balance update.

---

## Why Use a Browser Wallet Over CLI?

### 1. Accessibility & UX
Browser wallets provide an intuitive UI, reducing friction for developers and users compared to CLI-based workflows.

### 2. Rapid Prototyping
Ideal for testing dApps and smart contracts quickly without writing scripts or managing CLI commands.

### 3. Built-in Key Management
Handles keypair generation and storage internally, minimizing manual errors common in CLI environments.

### 4. Integration with dApps
Seamless interaction with web-based decentralized applications via injected providers.

### 5. Lower Setup Overhead
No need for local environment configuration, dependencies, or toolchain setup.

---

## Trade-offs

| Browser Wallet | CLI Wallet |
|---------------|-----------|
| Easy to use   | More control |
| UI-driven     | Scriptable & automatable |
| Faster setup  | Better for production pipelines |
| Less flexible | Highly customizable |

---

## Conclusion
Browser wallets are optimal for development, testing, and onboarding, while CLI tools remain essential for automation, scripting, and advanced workflows.

---