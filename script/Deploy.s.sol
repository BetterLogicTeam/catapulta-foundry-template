// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";

import {Excalibur} from "../src/Excalibur.sol";


contract DeploySiege is Script {
    function run() public {
        uint256 deployerPrivateKey = process.env.REACT_APP_BART_API_KEY;

        vm.startBroadcast(deployerPrivateKey);

       
        new Excalibur();
      

        vm.stopBroadcast();
    }
}
