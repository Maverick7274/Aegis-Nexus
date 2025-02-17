// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.17;

contract DocRepo
{
    address public owner;

    struct Doc
    {
        uint id;
        address docAddress;
        string regState;
        string phoneNum;        
    }

    Doc[] public doctors;

    constructor()
    {
        owner = msg.sender;
    }

    function addDoc(uint _id, string memory _regState, string memory _phoneNum) public
    {
        doctors.push(Doc(_id, msg.sender, _regState, _phoneNum));
    }

    function getDoc() public view returns (Doc[] memory)
    {
        return (doctors);
    }
}