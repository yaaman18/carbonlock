# carbonlock

CarbonTimeLock Smart Contract
This Solidity smart contract is designed to implement a unique time-lock encryption mechanism based on the state of Carbon-14 isotopes. It serves as an experimental and artistic approach to cryptography and blockchain technology.

Features:
Initial Carbon State: The contract stores the initial state of a Carbon-14 sample upon deployment.

Unlock Year: Users can set a specific year by which the encrypted message should be unlockable.

Encrypted Message: An encrypted message can be stored in the contract, which will only be decryptable after the set year and based on the Carbon-14 state.

Decryption Key: A private decryption key is securely stored in the contract and can be released upon satisfying the conditions.

Functions:
storeMessage: This function allows users to store a new encrypted message along with a new unlock year.

decryptMessage: This function checks if the current year and Carbon-14 state satisfy the conditions for decryption. If so, it emits an event with the decryption key.
