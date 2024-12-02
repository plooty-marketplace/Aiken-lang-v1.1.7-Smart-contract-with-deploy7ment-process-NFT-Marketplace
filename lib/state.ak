type NFTState = {
    id: ByteArray,         // Unique identifier of the NFT
    owner: ByteArray,      // Current owner's address as a ByteArray (e.g., hash of the public key)
    price: Option<Int>,    // Listing price (if listed, otherwise None)
    metadata: ByteArray    // Metadata of the NFT
}
