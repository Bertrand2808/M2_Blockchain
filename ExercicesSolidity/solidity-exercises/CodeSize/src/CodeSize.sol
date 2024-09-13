// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract CodeSize {
    /**
     * The challenge is to create a contract whose runtime code (bytecode) size is greater than 1kb but less than 4kb
     */
    uint256 [1024] public array;
    uint256 [1024] public array2;

    constructor() {
        for (uint256 i = 0; i < 1024; i++) {
            array[i] = i;
            array2[i] = i;
        }
    }

    function test() external {
        for (uint256 i = 0; i < 1024; i++) {
            array[i] = i;
            array2[i] = i;
        }
    }

    function test2() external {
        for (uint256 i = 0; i < 1024; i++) {
            array[i] = i;
            array2[i] = i;
        }
    }

    function test3() external {
        for (uint256 i = 0; i < 1024; i++) {
            array[i] = i;
            array2[i] = i;
        }
    }

    function test4() external {
        for (uint256 i = 0; i < 1024; i++) {
            array[i] = i;
            array2[i] = i;
        }
    }

    function test5() external {
        for (uint256 i = 0; i < 1024; i++) {
            array[i] = i;
            array2[i] = i;
        }
    }

    function testMultipleArrways() external {
        // multiplie les éléments de array par les éléments de array2
        for (uint256 i = 0; i < 1024; i++) {
            array[i] = array[i] * array2[i];
        }
    }

    function testAddition() external {
        // additionne les éléments de array et de array2
        for (uint256 i = 0; i < 1024; i++) {
            array[i] = array[i] + array2[i];
        }
    }

    function testSubstraction() external {
        // soustrait les éléments de array2 à ceux de array
        for (uint256 i = 0; i < 1024; i++) {
            array[i] = array[i] - array2[i];
        }
    }

    function testSquare() external {
        // élève au carré les éléments de array
        for (uint256 i = 0; i < 1024; i++) {
            array[i] = array[i] * array[i];
        }
    }
}
