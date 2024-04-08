# Foundry repro

## Usage

```
cp .env.template .env
```

Fill out `.env` and run:

```
source .env
forge script script/Counter.s.sol --rpc-url $ETH_RPC_URL --broadcast --ledger -vvvv
```

Where `ETH_RPC_URL` is recommended to be any Ethereum testnet or mainnet.

## Output

## Notes

I'm able to replicate the stalling issue, given the repro linked in the comment: https://github.com/bgd-labs/v2-stable-debt-offboarding/blob/main/scripts/Deploy.s.sol#L7

Also able to replicate that on commit `60ec00296f00754bc21ed68fd05ab6b54b50e024` it does work.

A simple default repo Counter deploy however does work on the latest version of Forge.

Combination tested:
- macOS (latest)
- Ledger Nano S Plus (latest)
- Both firmware versions 1.1.10 and 1.1.11 (latest), no changes

Appears to be a combination between program complexity (?), a regression of some kind.
Next steps are replicating behavior across operating system.
It also appears to be connected to the Ledger Nano S specifically as the Nano X does work (?)