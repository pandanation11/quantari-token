# 🧬 Quantari (QNTR)

Quantari (QNTR) is a decentralized Solana-based token built for transparency, community governance, and zero-team control. It features a fair launch with no insider allocation, and its final state will be locked by revoking mint authority once the community-driven liquidity pool is established.

## 🔹 Token Details

- **Token Name:** Quantari
- **Symbol:** QNTR
- **Decimals:** 9
- **Mint Address:** [`9bQ4dhCpUm7vsBGt5JC7vhK25hqSa9Dp4TTas7fhuqvt`](https://solscan.io/token/9bQ4dhCpUm7vsBGt5JC7vhK25hqSa9Dp4TTas7fhuqvt)
- **Total Supply:** 100,000,000 QNTR
- **Deployer Mint Authority:** `89dJdU4RXxJe2vTpDvwEYyYN1K831uVVDBYBB5UZ8Y7E`
- **Multisig (unused):** `88QejiCvjYF4D5pM6qJeZ9zf9eE7SsV3Sfp9BCiKYQpw`

Mint authority will be **revoked** after liquidity and airdrop phases are complete.

## 🧪 Launch Philosophy

- ✅ **No presale**
- ✅ **No VC or team allocation**
- ✅ **100% community supply**
- ✅ **LP funded via community burn auction**
- ✅ **Mint authority revoked for trustless finality**

## 📦 Project Structure

- `/scripts`: Automation tools for minting, LP creation, airdrop distribution, and authority handling
- `/marketing`: Logos (light/dark/SVG), favicon, banners
- `/contracts`: On-chain programs for LP and airdrop (coming soon)

## 🪙 Liquidity Pool Design (Planned)

The **FairLP Burn Auction** model:
- Community sends SOL to a transparent burn address
- LP tokens are seeded proportionally into a pool
- No centralized fund custody; deployer has zero access to pooled funds
- Ownership of LP tokens can be burned or locked

## 🎁 Airdrop System (Planned)

- Custom contract to reward early supporters and burn participants
- Deterministic allocation based on wallet interactions
- Transparent and on-chain verifiable

## 🧰 Automation Scripts

- `mint_all.sh`: Mints total supply
- `set_authority.sh`: Transfers or revokes mint/burn authorities
- `airdrop_distribute.sh`: Sends tokens to wallets from a CSV
- `create_lp.sh`: Interacts with LP contract once deployed

> All scripts will be released in `/scripts` after testing.

## 🧠 Brand Assets

Located in `/marketing/`:
- `logo_light.png`
- `logo_dark.png`
- `quantari.svg`
- `favicon.ico`
- `logo@256.png`, `logo@512.png`, `logo@1024.png`

## 🛡️ Security Notice

Quantari is community-led. There are **no team-held mint keys** or **hidden backdoors**. All code and transactions will be **open-source and auditable**. We encourage the community to review all contracts before participating.

---

**Status:** Mainnet test phase complete. Scripts and contracts being finalized.