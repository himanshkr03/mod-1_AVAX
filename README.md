
# Wallet Contract - Fund Transaction 

## Description

This Solidity program is a simple "Fund Transaction" contract that demonstrates the use of error handling mechanisms (`revert`, `require`, `assert`) in Solidity. It provides a basic wallet functionality with secure fund transfer operations while enforcing validation checks.

## License

This contract is licensed under the MIT license.

## Solidity Version

The contract uses Solidity version `0.8.18` or later.

## Contract Details

### Contract Variables

- **`totalAmount`**: A public unsigned integer variable representing the total balance of the wallet. It stores the amount of funds available in the wallet.

- **`owner`**: An address variable representing the owner of the wallet. It is set to the address of the contract deployer using `msg.sender`.

### Constructor

The constructor initializes the contract with a specified amount of funds.

- **Parameters**: 
  - `uint _totalAmount`: The initial amount of funds to be stored in the wallet.

- **Initialization**:
  - `totalAmount`: Set to the value passed as `_totalAmount`.
  - `owner`: Set to the address of the contract deployer.

### Function: `transfer`

This function allows the transfer of funds from the wallet to a specified recipient.

- **Parameters**:
  - `uint amount`: The amount of funds to be transferred.
  - `uint tax`: The tax or fee to be deducted from the transferred amount.
  - `address sendTo`: The address to which the funds will be transferred.

- **Operation**:
  - Calculates the total amount to be deducted (`amount + tax`).
  - Decreases the `totalAmount` by the deducted amount.
  - Includes error handling:
    - **`revert`**: Reverts the transaction if the tax is greater than or equal to the amount.
    - **`require`**: Ensures that the wallet has sufficient funds for the transfer.
    - **`assert`**: Ensures that the owner cannot transfer funds to themselves.

### Function: `getamount`

This function returns the current balance of the wallet.

- **Return Value**: 
  - The current value of `totalAmount`.

- **Note**: 
  - Marked as `view`, indicating it does not modify the contract's state.

## Summary

The Wallet Contract provides essential functionality for managing and transferring funds securely while showcasing Solidity's error-handling features. The contract ensures that all transactions are validated and that the wallet's integrity is maintained through the use of `revert`, `require`, and `assert` statements.
