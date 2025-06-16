#!/bin/bash

LOG_DIR="./logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/log_$(date '+%Y-%m-%d_%H-%M-%S').txt"

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

log() {
  echo -e "$1"
  echo -e "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

check() {
  if ! command -v $1 &> /dev/null; then
    log "${RED}❌ Required tool '$1' not found. Install it first.${NC}"
    exit 1
  else
    log "${GREEN}✅ $1 found.${NC}"
  fi
}

log "${BLUE}Starting Solana Token Launch Script${NC}"

# 1. Check requirements
check solana
check spl-token

# 2. Set network to devnet
solana config set --url https://api.devnet.solana.com &> /dev/null
log "${GREEN}✔ Solana set to devnet.${NC}"

# 3. Check/create keypair
if [ ! -f ~/.config/solana/id.json ]; then
  solana-keygen new --no-bip39-passphrase --force
  log "${YELLOW}🆕 Created new wallet keypair.${NC}"
else
  log "${GREEN}✅ Wallet keypair found.${NC}"
fi

# 4. Airdrop devnet SOL
solana airdrop 2 &> /dev/null && \
log "${GREEN}💧 Airdropped 2 SOL to devnet wallet.${NC}" || \
log "${RED}⚠ Airdrop failed (may be rate limited).${NC}"

# 5. Create token
TOKEN_OUTPUT=$(spl-token create-token 2>&1)
if [[ $? -ne 0 ]]; then
  log "${RED}❌ Token creation failed: $TOKEN_OUTPUT${NC}"
  exit 1
else
  TOKEN_ADDRESS=$(echo "$TOKEN_OUTPUT" | grep -oE "Creating token.*" | awk '{print $3}')
  log "${GREEN}🎉 Token created: $TOKEN_ADDRESS${NC}"
fi

# 6. Create token account
ACCOUNT_OUTPUT=$(spl-token create-account "$TOKEN_ADDRESS" 2>&1)
if [[ $? -ne 0 ]]; then
  log "${RED}❌ Token account creation failed: $ACCOUNT_OUTPUT${NC}"
  exit 1
else
  TOKEN_ACCOUNT=$(echo "$ACCOUNT_OUTPUT" | grep -oE "Creating account.*" | awk '{print $3}')
  log "${GREEN}📦 Token account created: $TOKEN_ACCOUNT${NC}"
fi

# 7. Mint tokens
MINT_OUTPUT=$(spl-token mint "$TOKEN_ADDRESS" 1000000 "$TOKEN_ACCOUNT" 2>&1)
if [[ $? -ne 0 ]]; then
  log "${RED}❌ Minting failed: $MINT_OUTPUT${NC}"
else
  log "${GREEN}💰 Minted 1,000,000 tokens to $TOKEN_ACCOUNT${NC}"
fi

log "${BLUE}Token launch steps complete. Next step: Multisig setup.${NC}"
log "${YELLOW}Run: spl-token authorize \$TOKEN_ADDRESS mint <MULTISIG_ADDRESS>${NC}"