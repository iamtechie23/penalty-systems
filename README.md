# Conference Attendance Smart Contract

This Solidity smart contract, `ConferenceAttendance`, manages participant registrations and penalties for missing sessions in a conference setting. 

## Features

- **Participant Registration**: The contract keeps track of registered participants.
- **Penalty Calculation**: Calculates penalties based on the number of missed sessions.
- **Blacklist Management**: Determines if a participant should be blacklisted based on missed sessions.

## Functions

### 1. `calculatePenalty(uint256 sessionsMissed)`

- **Description**: Calculates the penalty for a participant based on the number of sessions missed.
- **Parameters**:
  - `sessionsMissed`: The number of sessions missed by the participant (must be between 1 and 20).
- **Returns**: The penalty amount if the participant missed 5 or more sessions.

### 2. `shouldBlacklist(uint256 sessionsMissed)`

- **Description**: Determines if a participant should be blacklisted based on the number of sessions missed.
- **Parameters**:
  - `sessionsMissed`: The number of sessions missed by the participant.
- **Returns**: A boolean indicating whether the participant should be blacklisted.
- **Behavior**: Reverts the transaction if `sessionsMissed` is 11 or more, indicating blacklisting.

## Events

- **ParticipantRegistered**: Emitted when a participant is registered.
- **SessionMissed**: Emitted when a participant misses a session.

## Usage

1. Deploy the contract.
2. Register participants using the appropriate function (not included in the provided code).
3. Call `calculatePenalty` with the number of missed sessions to determine if a penalty applies.
4. Call `shouldBlacklist` to check if the participant should be blacklisted based on missed sessions.

## Contact 

iamtechie871@gmail.com

## License

This contract is licensed under the MIT License.
