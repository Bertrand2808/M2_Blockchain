// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract BasicBank {
    /// @notice deposit ether into the contract
    /// @dev it should work properly when called multiple times
    function addEther() external payable {
        require(msg.value > 0, "You need to send some ether");
        
    }

    /// @notice used to withdraw ether from the contract (No restriction on withdrawals)
    function removeEther(uint256 amount) external payable {
        require(amount > 0, "You need to send some ether");
        require(address(this).balance >= amount, "Not enough balance");
        payable(msg.sender).transfer(amount);
    }
}
