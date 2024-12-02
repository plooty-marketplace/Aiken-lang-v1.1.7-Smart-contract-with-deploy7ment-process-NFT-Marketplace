import aiken/builtin
import aiken/tx
import state  -- Import the state module

-- Minting Validator
validator mint(
  redeemer: {id: ByteArray, metadata: ByteArray},
  tx_context: ScriptContext
) -> Bool {
  let
    tx_info = tx_context.tx_info
    policy_id = tx_context.policy_id
    asset_id = redeemer.id

    -- Check if the token is being minted in the transaction
    token_minted = tx.minted(
      tx_info,
      {policy_id: policy_id, asset_name: asset_id}
    )

    -- Validate metadata: Ensure metadata is not empty
    valid_metadata = builtin.length_of_byte_array(redeemer.metadata) > 0
  in
    token_minted && valid_metadata
}