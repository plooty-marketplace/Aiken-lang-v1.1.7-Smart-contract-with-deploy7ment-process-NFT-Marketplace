import aiken/test
import aiken/builtin
import aiken/tx

test minting_nft {
  let
    redeemer = {id: b"nft123", metadata: b"metadata"}
    tx_context = test.mock_context(tx_info: test.mock_tx_info, policy_id: b"policy_id")
    result = mint(redeemer, tx_context)
  expect(result).to_be_true()
}
