// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Fundraising {
    address public owner;
    uint256 public totalFunds;

    mapping(address => uint256) public contributions;

    constructor() {
        owner = msg.sender;
    }

    function contribute() public payable {
        require(msg.value > 0, "Contribution must be greater than 0");
        contributions[msg.sender] += msg.value;
        totalFunds += msg.value;
    }

    function withdrawFunds() public {
        require(msg.sender == owner, "Only the owner can withdraw funds");
        payable(owner).transfer(address(this).balance);
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
