# HitmanContract

Author: Ishan Kashyap

---

## Overview

The `HitmanContract` manages assassination jobs ("missions") by allowing agents to create and accept missions. It tracks the number of targets, payment per target, and total funds involved in the contract.

## Project Requirements

This contract fulfills the following requirements:

- Uses `require()` statements to enforce conditions.
- Uses `assert()` to validate internal state consistency.
- Uses `revert()` statements to handle exceptional conditions.

## Functions

### `constructor`

- Initializes the contract with an initial amount of total money (`100`).

### `createJob`

- Creates a new job with specified targets and payment per target.

### `acceptJob`

- Allows only Agent 47 (`_agentId == 47`) to accept the job.

### `completeMission`

- Completes the mission by adding rewards (`targets * valuePerTarget + 100`) to total money.
- Uses `assert()` to ensure total money is correctly updated.

### `abortMission`

- Aborts the mission, deducting a penalty (`100`) from total money if there are pending targets.
- Uses `revert()` to prevent total money from going negative.

## How to Run in Remix IDE

1. **Open Remix IDE**: Go to [Remix IDE](https://remix.ethereum.org/).
   
2. **Create New File**: 
   - Click on the "+" button in the file explorer.
   - Name the file `HitmanContract.sol`.
   
3. **Copy Contract Code**: 
   - Copy the Solidity code for `HitmanContract` into the newly created file.

4. **Compile Contract**:
   - Navigate to the "Solidity Compiler" tab on the left sidebar.
   - Select `HitmanContract.sol`.
   - Choose the appropriate compiler version .

5. **Deploy and Interact**:
   - Switch to the "Deploy & Run Transactions" tab.
   - Ensure the correct contract (`HitmanContract`) is selected.
   - Deploy the contract using a suitable environment (e.g., JavaScript VM for testing).
   
6. **Interact with Functions**:
   - Once deployed, interact with the contract by calling functions such as `createJob`, `acceptJob`, `completeMission`, and `abortMission`.
   - Use the provided UI in Remix IDE to input function parameters and execute transactions.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
