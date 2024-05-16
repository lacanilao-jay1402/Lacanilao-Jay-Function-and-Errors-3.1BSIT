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
