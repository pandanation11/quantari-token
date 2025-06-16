# Quantari (QNTR) — Solana Devnet Token

This repository contains all deployment scripts, logs, metadata, and branding assets for **Quantari (QNTR)** — a transparent, fair-launch token created on the Solana Devnet.

---

## 🧬 Token Details

- **Token Name:** Quantari
- **Symbol:** QNTR
- **Mint Address:** 9bQ4dhCpUm7vsBGt5JC7vhK25hqSa9Dp4TTas7fhuqvt
- **Mint Authority:** Multisig (2-of-3)
- **Initial Supply:** 1 QNTR (test mint)
- **Decimals:** 9
- **Network:** Solana Devnet  

---

## 🔖 Quantari Brand Assets

| Type            | Preview                                   | Link                                               |
|-----------------|--------------------------------------------|----------------------------------------------------|
| Logo (Light)    | ![Light](marketing/logo_light.png)         | [Download](marketing/logo_light.png)               |
| Logo (Dark)     | ![Dark](marketing/logo_dark.png)           | [Download](marketing/logo_dark.png)                |
| Favicon         | ![Favicon](marketing/favicon_32x32.png)    | [Download](marketing/favicon_32x32.png)            |
| SVG             | 📐                                          | [quantari.svg](assets/quantari.svg)                |
| Square Icon     | ![Square](assets/logo_square.png)          | [Download](assets/logo_square.png)                 |

---

## 🔐 Security Summary

- ✅ **Mint authority** assigned to a 2-of-3 multisig
- ✅ Verified that original deployer cannot mint new tokens
- ⚠️ **Liquidity not locked** (devnet token for testing purposes)
- 📁 Deployment logs and authority transfers are archived in this repository

---

## 📈 Project Goals

Quantari is a sandbox initiative to:

- Model transparent token launches
- Test governance via multisig
- Build a public DApp for community access
- Pilot a reward/tier system based on wallet activity
- Enable future migration to mainnet (optional)

---

## 📂 Repository Structure

- `launch_token.sh` — Automated token deployment + minting script  
- `logs/` — Deployment & authority transfer logs  
- `metadata/` — Token metadata + assets for DApps and explorers  

---

> **Disclaimer:**  
> Quantari is a non-transferable test token on Solana Devnet, created for educational and experimental use only.  
> No association with any mainnet token or financial product.