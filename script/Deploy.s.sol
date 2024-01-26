// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";

import {Excalibur} from "../src/Excalibur.sol";


contract DeploySiege is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

       
        new Excalibur();
      

        vm.stopBroadcast();
    }
}
