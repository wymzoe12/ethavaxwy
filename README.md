# ethavaxwy
# Functions and Error Smart Contract

## Overview

Functions and error is the solidity smart contract which implements the basic funtionalities of the minting and burning token. The public variables, mapping structure and events for the token's minting and burning are the features of the solidity smart contract.

## Contract Details

### Public Variables

- `wy`: The name of the token.
- `ron`: The symbol of the token.
- `Wyron`: The total supply of the token.

### Mapping

- `balances`: A mapping that associates addresses with token balances.

## Functions

### Constructor

The constructor is the one that initializes "name" and "symbol" variables.


### Mint Function

Users can mint, or add new tokens, using the mint function. Additionally, it looks for positive sums and ought to prevent overflow.

### Burn Function

Tokens are burned by removing their value and checking for excess quantities using the burn function.
