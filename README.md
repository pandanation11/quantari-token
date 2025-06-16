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

## 🎨 Brand Assets

| Asset Type     | Preview                                   | Download Link                         |
|----------------|-------------------------------------------|----------------------------------------|
| Logo (Light)   | ![Light](assets/logo.png)                 | [Download](assets/logo.png)           |
| Logo (Dark)    | ![Dark](assets/logo_dark.png)             | [Download](assets/logo_dark.png)      |
| Square Icon    | ![Square](assets/logo_square.png)         | [Download](assets/logo_square.png)    |
| Favicon        | 🧠                                        | [favicon.ico](assets/favicon.ico)     |
| SVG Vector     | 📐                                        | [quantari.svg](assets/quantari.svg)   |
| Social Preview | ![OG](assets/opengraph_banner.png)        | [Download](assets/opengraph_banner.png) |

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