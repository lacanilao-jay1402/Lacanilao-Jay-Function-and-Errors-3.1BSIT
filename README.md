# Functions And Errors

## Description

Creating a Smart Contract by processing the set amount of the three subjects to enroll.

## Getting Started

# Functionality

    // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enrollment {

    // State variables as Subjects
    uint256 public Math;
    uint256 public Science;
    uint256 public English;

    event Enrolled(address indexed participant, string message);
    event SubjectAdded(address indexed participant, string subject, uint256 amount);

    // require statements

    function setMathAmount(uint256 _amount) public {
        Math = _amount;
        emit SubjectAdded(msg.sender, "Math", _amount);
    }

    function setScienceAmount(uint256 _amount) public {
        Science = _amount;
        emit SubjectAdded(msg.sender, "Science", _amount);
    }

    function setEnglishAmount(uint256 _amount) public {
        English = _amount;
        emit SubjectAdded(msg.sender, "English", _amount);
    }

    // assert the total amount of all subjects

    function assertTotal() public view returns (uint256) {
        assert(Math + Science + English > 0);
        return Math + Science + English;
    }

    // revert function as enroll

    function enroll() public {
        require(Math > 0 && Science > 0 && English > 0, "Please enter the amount per subject");
        emit Enrolled(msg.sender, "");
    }
}

This code consists of require, assert and revert functions.

uint256 public Math;
uint256 public Science;
uint256 public English; - State variables as Subjects

event Enrolled() and event SubjectAdded() - emits if the participant set amount in each subject and if the participang enroll

require statements - function setMathAmount, setScienceAmount and setEnglishAmount is a user input where the participant will enter an amount

function assertTotal() - this function will assert the total amount of the 3 subject by adding it. It will also check if these subjects are greater than zero, if yes, it will return the total amount

function enroll() - it will revert the transaction if the participant did not enter any amount in each subject. The error message will occur, "Please enter the amount per subject"


## Authors

Jay Lacanilao
lacanilao_jay @ Discord


## License

This project is licensed under the MIT License
