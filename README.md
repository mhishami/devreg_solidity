# devreg_solidity
Device Registration Solidity Smart Contract


## Running The Codes

These codes are broken down into sections:

- **step1a**: the initial codes, with just signatures
- **step1b**: completing the adding, removing device
- **step1c**: completing the validate function
- **step2a**: adding events
- **step2b**: emiting events

You may switch between branches to see the progress via:
```bash
git checkout step1b
```

# Compiling

`p.s.`: don't forget to change the blockchain network configuration under `truffle-config.js`.

```bash
git checkout step2a
npx oz compile --optimizer on
npx oz deploy
```
