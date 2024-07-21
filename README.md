# ExceptionHandling Smart Contract

## Metacrafters Project

This repository contains the source code for the `ExceptionHandling` smart contract. The contract is written in Solidity version 0.8.18 and demonstrates the usage of require, assert, and revert statements for exception handling.

## Prerequisites

Before running the smart contract, make sure you have the following prerequisites installed:

- Solidity compiler (version 0.8.18)
- Ethereum development environment (e.g., Remix, Truffle, Hardhat)

## Getting Started

Follow the steps below to get started with the `ExceptionHandling` smart contract:

1. Clone this repository to your local machine.
2. Open the project in your preferred Ethereum development environment.
3. Compile the smart contract using the Solidity compiler.
4. Deploy the contract to your preferred Ethereum network.
5. Interact with the contract using the provided functions.

## Contract Details

### Description

The `ExceptionHandling` contract allows the contract owner to perform various operations with exception handling. The contract owner is set during the contract deployment.

### Functions

#### requireFunction(uint x)

The `requireFunction` allows adding the given value to the `age` state variable. It uses a `require` statement to ensure the input value is greater than zero.

#### revertFunction(uint x)

The `revertFunction` adds the given value to the `age` state variable. It uses a `revert` statement to handle the exception if the input value is less than or equal to zero.

#### checkOwner()

The `checkOwner` function verifies that the owner address matches a predefined address using an `assert` statement.

#### getAge() public view returns (uint)

The `getAge` function is a view function that returns the current value of the `age` state variable.

## Usage

To use the `ExceptionHandling` smart contract, follow these steps:

1. Deploy the contract.
2. Call the `requireFunction` with a non-zero value to update the `age` state variable.
3. Call the `revertFunction` with a positive value to update the `age` state variable or with a zero/negative value to trigger the revert statement.
4. Use the `checkOwner` function to ensure the owner address is as expected.
5. Call the `getAge` function to retrieve the current value of the `age` state variable.

## Authors

Himanshu Rajak

## Credits

This project is a solution to the project task provided by MetaCrafters.
