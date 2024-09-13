// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract BlockNumber {
    /**
     * In this exercise the function lastCaller stores the address of the caller of the function in the lastCaller stateVariable
     * The task is to make this function only callable once per block.
     * If it is called more than once per block, the second and later calls revert.
     * To pass the test, it needs a storage variable that stores the last blocknumber where it was accessed.
     */

    address public lastCaller;
    uint256 public lastBlockNumber;

    function callMe() external {
        /// your code here
        // On vérifie que la fonction n'a pas déjà été appelée dans le bloc courant
        require(block.number != lastBlockNumber, "BlockNumber: callMe can only be called once per block");
        // On stocke l'appelant de la fonction
        lastCaller = msg.sender;
        // On stocke le numéro du bloc courant
        lastBlockNumber = block.number;
    }
}
