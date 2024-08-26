# Functions and Errors - ETH + AVAX

This repository contains the source code for the `MyContract` smart contract, written in Solidity version 0.8.0. The contract includes essential features like a secure withdrawal function that utilizes `require`, `assert`, and `revert` statements for validation and error handling. Additionally, it provides a `getContractBalance` function for querying the contract's balance.

## Prerequisites

Before working with this smart contract, ensure that you have the following tools and environments set up:

- **Solidity Compiler**: Ensure you have Solidity compiler version 0.8.0 installed.
- **Ethereum Development Environment**: You can use environments like [Remix](https://remix.ethereum.org/), [Truffle](https://www.trufflesuite.com/), or [Hardhat](https://hardhat.org/) to interact with and deploy the smart contract.

## Getting Started

To get started with the `MyContract` smart contract, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/mycontract-project.git
   cd mycontract-project
   ```

2. **Open the Project**: Use your preferred Ethereum development environment (e.g., Remix, Truffle, Hardhat) to open the project files.

3. **Compile the Contract**: Use the Solidity compiler to compile the `MyContract` smart contract. Ensure that the compiler version is set to 0.8.0.

4. **Deploy the Contract**: Deploy the smart contract to your preferred Ethereum network (e.g., local, testnet, mainnet).

5. **Interact with the Contract**: After deployment, you can interact with the contract using the functions provided.

## Contract Details

### Description

The `MyContract` smart contract is designed to allow the contract owner (set during deployment) to withdraw funds from the contract's balance. The contract ensures that only the owner can perform withdrawals and includes several security checks to validate transactions.

### Functions

#### `constructor()`

- The constructor is executed only once during the deployment of the contract.
- It sets the contract owner to the address of the message sender (`msg.sender`), meaning the account that deployed the contract becomes the owner.

#### `withdraw(uint amount)`

- This function allows the contract owner to withdraw a specified amount from the contract's balance.
- **Conditions**:
  - The `amount` must be greater than zero (`require(amount > 0)`).
  - The contract's balance must be greater than or equal to the `amount` requested (`require(address(this).balance >= amount)`).
- **Execution**:
  - If the above conditions are met, the function attempts to transfer the funds to the owner using the `call` function.
  - The success of the transfer is checked using the `assert` statement, which verifies that the funds were successfully sent.
  - If the transfer fails, the transaction reverts with an error message using the `revert` statement.

#### `getContractBalance()`

- This is a `view` function that allows anyone to check the current balance of the contract.
- **Return Value**:
  - The function returns the contract's balance in wei (the smallest unit of Ether).

### Usage

To use the `MyContract` smart contract, follow these steps:

1. **Deploy the Contract**: Call the constructor function to deploy the contract. The account that deploys the contract will be set as the owner.

2. **Withdraw Funds**:
   - As the contract owner, you can call the `withdraw` function with a specified amount to withdraw funds from the contract.
   - Ensure that the withdrawal conditions are met (i.e., the amount is valid and the contract has sufficient funds).

3. **Check Contract Balance**: Call the `getContractBalance` function to check how much Ether is currently stored in the contract.

## Authors

Himanshu Rajak

## Credits

This project was created as a solution to a task provided by MetaCrafters, focusing on implementing and understanding secure smart contract functions.
