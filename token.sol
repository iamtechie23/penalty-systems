// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConferenceAttendance {
    address public organizer;
    mapping(address => bool) private isParticipantRegistered;

    event ParticipantRegistered(address indexed participant);
    event SessionMissed(address indexed participant);

    constructor() {
        organizer = msg.sender;
    }

    function calculatePenalty(uint256 sessionsMissed) external pure returns (uint256 penalty) {
        // Use assert() to set the range from 1 to 20
        assert(sessionsMissed >= 1 && sessionsMissed <= 20);

        // Use require() to set the range from 5 to 10
        require(sessionsMissed >= 5, "Penalty not applicable");
        // Apply penalty of 200
        penalty = 200;
    }

    function shouldBlacklist(uint256 sessionsMissed) external pure returns (bool blacklist) {
        // Use revert() to handle an exceptional case if the sessionsMissed is equal to 11 or more
        if (sessionsMissed >= 11) {
            revert("Sessions missed greater than or equal to 11 detected: Blacklisting the participant");
        }
        blacklist = false;
    }
}
