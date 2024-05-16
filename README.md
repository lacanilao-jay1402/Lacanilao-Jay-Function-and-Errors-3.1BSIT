# Functions And Errors

## Description

Creating a Smart Contract by processing the set amount of the three subjects to enroll.

## Getting Started

# Functionality

contract Enrollment {

    // State variables as Subjects
    uint256 public Math;
    uint256 public Science;
    uint256 public English;

    event Enrolled(address indexed participant, string message);
    event SubjectAdded(address indexed participant, string subject, uint256 amount);


These events will emit if the participants enrolls and set an amount in each state variables that serves as Subjects

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

These function will serve a user input to set amount in each subjects

 function assertTotal() public view returns (uint256) {
        assert(Math + Science + English > 0);
        return Math + Science + English;
    }

This function will assert the total amount of 3 subjects. If the participants enter an amount, it will return to the total amount

 function enroll() public {
        require(Math > 0 && Science > 0 && English > 0, "Please enter the amount per subject");
        emit Enrolled(msg.sender, "");
    }
}

This function is a revert function. If the participant didn't enter any amount in each subject, the error message will occur
if there's a set amount, it will emit the "Enrolled" Event

Here is the full code of my Project

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


## Authors

Jay Lacanilao
lacanilao_jay @ Discord


## License

This project is licensed under the MIT License
