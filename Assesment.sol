// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
/* Project Requirements:
    Project must provide the following to be successfully completed:

    Contract successfully uses require()
    Contract successfully uses assert()
    Contract successfully uses revert() statements


*/

contract HitmanContract {
    address private  agent;
    uint public targets;
    uint public totalMoney;
    uint private valuePerTarget;

    constructor() {
        totalMoney = 100;
    }

    function createJob(uint _targets, uint _valuePerTarget) public {
        targets = _targets;
        valuePerTarget = _valuePerTarget;
    }

   function acceptJob(uint _agentId) public {
        require(_agentId == 47, "Only Agent 47 can accept the job");
        agent = msg.sender;
    }

    function completeMission() public {
        if (targets == 0) {
            revert("No targets to complete");
        }
        uint newTotalMoney = totalMoney + targets * valuePerTarget + 100;
        assert(newTotalMoney >= totalMoney);
        totalMoney = newTotalMoney;
        targets = 0;
        valuePerTarget = 0;
    }

    
    function abortMission() public {
        require(targets > 0, "No targets to abort");
        uint newTotalMoney = totalMoney - 100;
        if (newTotalMoney < 0) {
            revert("Total money cannot be negative");
        }
        totalMoney = newTotalMoney;
        targets = 0;
        valuePerTarget = 0;
    }
}
