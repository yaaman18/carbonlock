// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarbonTimeLock {

    uint public initialCarbonState;
    uint public unlockYear;
    string public encryptedMessage;
    string private decryptionKey;


    event MessageDecrypted(string decryptedMessage);
    event MessageStored(string newEncryptedMessage, uint newUnlockYear);


    constructor(uint _initialCarbonState, string memory _decryptionKey) {
        initialCarbonState = _initialCarbonState;
        decryptionKey = _decryptionKey;
    }

    function storeMessage(string memory _encryptedMessage, uint _unlockYear) public {
        encryptedMessage = _encryptedMessage;
        unlockYear = _unlockYear;
        emit MessageStored(_encryptedMessage, _unlockYear);
    }

    function decryptMessage(uint currentCarbonState, uint currentYear) public {

        require(currentYear >= unlockYear, "The specified number of years has not yet passed.");
        require(currentCarbonState <= initialCarbonState, "The current carbon state is not valid.");


        emit MessageDecrypted(decryptionKey);
    }
}
