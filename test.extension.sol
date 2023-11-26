// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.8.0;

contract Test {
    string private msg1;
    uint256 private num1;
    address private owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "only the owner can call this function");
        _;
    }

    constructor(string memory mesg, uint256 num) {
        msg1 = mesg;
        num1 = num;
        owner = msg.sender;
    }

    function showMsg() public view returns(string memory) {
        return msg1;
    }

    function showNum() public view returns(uint256) {
        return num1;
    }

    function updateMsg(string memory newMsg) public onlyOwner {
        msg1 = newMsg;
    }

    function updateNum(uint256 newNum) public onlyOwner {
        num1 = newNum;
    }
}