#!/bin/bash

# Configuration
MINT_ADDRESS="9bQ4dhCpUm7vsBGt5JC7vhK25hqSa9Dp4TTas7fhuqvt"
CHUNK_AMOUNT=1000000000000  # 1,000,000 tokens (1M * 10^9 for 9 decimals)
CHUNKS=100                  # 100 chunks = 100 million total tokens
LOG_DIR="./logs"
DATE_TAG=$(date +"%Y%m%d_%H%M%S")
LOG_FILE="${LOG_DIR}/mint_log_${DATE_TAG}.log"
REPORT_FILE="${LOG_DIR}/mint_report_${DATE_TAG}.json"

# Ensure log directory exists
mkdir -p "$LOG_DIR"

# Rainbow header
echo -e "\n🌈==============================="
echo -e "🚀 QNTR TOKEN MINTING INITIATED"
echo -e "📍 Mint: $MINT_ADDRESS"
echo -e "📦 Chunk Size: $CHUNK_AMOUNT"
echo -e "🔁 Chunks: $CHUNKS"
echo -e "🌈===============================\n"

echo "🔧 Minting started at $(date)"
echo "🔑 Using Solana default keypair: $(solana config get | grep 'Keypair Path' | cut -d ':' -f2 | xargs)"
echo "----------------------------------------"

# JSON Report prep
echo "[" > "$REPORT_FILE"
SUCCESS_COUNT=0
FAIL_COUNT=0

# Loop over each chunk
for ((i=1; i<=CHUNKS; i++)); do
    echo "[`date '+%F %T'`] 🔄 Minting chunk $i of $CHUNKS..."

    OUTPUT=$(spl-token mint "$MINT_ADDRESS" "$CHUNK_AMOUNT" 2>&1)
    echo "$OUTPUT" >> "$LOG_FILE"

    if echo "$OUTPUT" | grep -q "Signature:"; then
        SIG=$(echo "$OUTPUT" | grep "Signature:" | awk '{print $2}')
        echo "✅ Chunk $i minted successfully: $SIG"
        echo "  { \"chunk\": $i, \"status\": \"success\", \"signature\": \"$SIG\" }," >> "$REPORT_FILE"
        ((SUCCESS_COUNT++))
    else
        echo "❌ Chunk $i FAILED:"
        echo "$OUTPUT"
        echo "  { \"chunk\": $i, \"status\": \"failed\", \"error\": \"$(echo "$OUTPUT" | head -n 1 | sed 's/"/\\"/g')\" }," >> "$REPORT_FILE"
        ((FAIL_COUNT++))
    fi
done

# Close JSON (remove last comma safely)
sed -i '' '$ s/,$//' "$REPORT_FILE"
echo "]" >> "$REPORT_FILE"

# Summary
echo -e "\n📋 Summary:"
echo "✅ Successful mints: $SUCCESS_COUNT"
echo "❌ Failed mints: $FAIL_COUNT"
echo "⏱️ Total time: $(($(date +%s) - $(date -j -f "%Y%m%d_%H%M%S" "$DATE_TAG" +%s)))s"
echo "📁 Full log: $LOG_FILE"
echo "📊 JSON report saved to: $REPORT_FILE"
echo -e "\n🎉 Minting session complete."