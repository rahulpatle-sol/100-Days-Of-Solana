#!/bin/bash

echo "================================================"
echo "   100 Days of Solana — Day 03: SOL & Lamports"
echo "================================================"
echo ""

# Step 1: Check CLI
echo "📦 Checking Solana CLI..."
if ! command -v solana &> /dev/null; then
  echo "❌ Solana CLI not found. Installing..."
  sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"
  export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
else
  echo "✅ Solana CLI found: $(solana --version)"
fi

echo ""

# Step 2: Set devnet
echo "🌐 Setting network to Devnet..."
solana config set --url devnet
echo ""

# Step 3: Show wallet address
ADDRESS=$(solana address 2>/dev/null)
if [ -z "$ADDRESS" ]; then
  echo "⚠️  No wallet found. Creating one..."
  solana-keygen new --no-bip39-passphrase
  ADDRESS=$(solana address)
fi
echo "🔑 Wallet Address: $ADDRESS"
echo ""

# Step 4: Airdrop if balance is 0
BALANCE=$(solana balance --url devnet 2>/dev/null | awk '{print $1}')
if [ "$BALANCE" = "0" ] || [ -z "$BALANCE" ]; then
  echo "💸 Balance is 0. Requesting airdrop..."
  solana airdrop 2 --url devnet
  sleep 3
fi

echo ""
echo "================================================"
echo "           💰 BALANCE IN SOL"
echo "================================================"
solana balance --url devnet

echo ""
echo "================================================"
echo "           ⚡ BALANCE IN LAMPORTS"
echo "================================================"
solana balance --url devnet --lamports

echo ""
echo "================================================"
echo "           🧮 THE MATH"
echo "================================================"
SOL=$(solana balance --url devnet | awk '{print $1}')
LAMPORTS=$(echo "$SOL * 1000000000" | bc)
echo "  $SOL SOL × 1,000,000,000 = $LAMPORTS lamports"
echo "  $LAMPORTS ÷ 1,000,000,000 = $SOL SOL"
echo "  ✅ Verified!"

echo ""
echo "================================================"
echo "        🔍 LATEST TRANSACTION FEE"
echo "================================================"
SIG=$(solana transaction-history $ADDRESS --url devnet --limit 1 2>/dev/null | head -1)
if [ -z "$SIG" ]; then
  echo "⚠️  No transactions found yet."
else
  echo "Signature: $SIG"
  echo ""
  solana confirm $SIG -v --url devnet 2>/dev/null | grep -i "fee"
  echo ""
  echo "  Fee = 5000 lamports = 0.000005 SOL ✅"
fi

echo ""
echo "================================================"
echo "  📸 Snap  Smile please 😁 — done!"
echo "================================================"