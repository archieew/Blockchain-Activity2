// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract KeccakHarshGenerator {

    function KECCAK256() public pure returns (bytes32) {
        string memory firstName = "Block";
        string memory lastName = "Chain";
        string memory code = "2224";
        string memory section = "WD401";
        string memory day = "Monday";
        string memory time = "10:00am";
        string memory room = "MGN 303";

        string memory inputString = string(
            abi.encodePacked(
                bytes(firstName)[0],
                bytes(lastName)[4],
                bytes(code)[1],
                bytes(section)[0],
                bytes(day)[5],
                bytes(time)[0],
                bytes(room)[2]
            )
        );

        return keccak256(abi.encodePacked(inputString));
    }

    function KECCAK()public pure returns (bytes32){
        return KECCAK256();
    }

  
}
