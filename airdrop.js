const web3 = require('@solana/web3.js');

const main = async () => {
  const connection = new web3.Connection(web3.clusterApiUrl('devnet'), 'confirmed');

  // Replace with your signer address
  const publicKey = new web3.PublicKey('GpAL3TcyXz8DeARHvQuCngR1dmV3wc3tiAFGhzj4hgev'); // signer1

  console.log(`Requesting airdrop for ${publicKey.toBase58()}...`);

  const signature = await connection.requestAirdrop(publicKey, web3.LAMPORTS_PER_SOL);

  await connection.confirmTransaction(signature, 'confirmed');

  console.log(`✅ Airdrop complete: ${signature}`);
};

main().catch((err) => {
  console.error('❌ Error requesting airdrop:', err);
});
