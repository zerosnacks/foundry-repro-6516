# Foundry repro

WORK IN PROGRESS, NOT YET ABLE TO REPRODUCE BUG

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

We do know that the connection is opened to the Ledger as no other connection is accepted

```
2024-04-08T18:50:16.303677Z ERROR coins_ledger::transports::native::hid: error=Error opening device. hidapi error: hid_error is not implemented yet. Hint: This usually means that the device is already in use by another transport instance.
Error:
Could not connect to Ledger device.
Make sure it's connected and unlocked, with no other desktop wallet apps open.
```

We do know it is able to deploy a very simple program