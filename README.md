# SeaMint (SMNT) — Solana Devnet Token

This repository contains all deployment scripts, logs, and configuration data related to the launch of **SeaMint (SMNT)**, a testnet token designed for fair-launch modeling and research on Solana.

---

## 🧬 Token Details

- **Token Name:** SeaMint
- **Symbol:** SMNT
- **Mint Address:** 6djLsDWhcH8UkE87pB6ZrvYVEBGuNU7imHq7n3nD547N
- **Mint Authority:** 88QejiCvjYF4D5pM6qJeZ9zf9eE7SsV3Sfp9BCiKYQpw *(Multisig)*
- **Initial Supply:** 1,000,000 SMNT
- **Decimals:** 9
- **Network:** Solana Devnet

---

## 🔐 Security Notes

- ✅ Mint authority transferred to 2-of-3 multisig
- ✅ Mint access tested — original deployer cannot mint
- ⚠️ Liquidity is not locked yet (testnet token)
- 📁 All logs and future transactions will be archived here

---

## 📈 Purpose

This token was created as part of a fair-launch token architecture experiment for Solana. Future steps will include:

- UI/DApp for the community
- Treasury reward system
- Transparent development logs
- Optionally upgrade to mainnet if model is viable

---

## 📂 Files

- `launch_token.sh` — token creation + mint script
- `logs/` — deployment and authority transfer logs (WIP)
- `metadata/` — token metadata and logo for DApp integration (WIP)

---

**Not affiliated with any mainnet token. For educational and experimental use only.**