# Casper Delegate Scripts - the command-line way

These scripts are written to help CSPR token holders easily delegate their tokens on validators on the Casper mainnet until the full-featured UI solution arrives. Inspect the scipts and use at your won risk!

## Installation
* Access an Ubuntu 20.04 environment as root. If you don't have access already, you can try one of the following ways:
  * You can do it by firing up a node on Digital Ocean (Ref link for free credits for new signups: https://m.do.co/c/0b83fa02ff5a), and accessing it through ssh (from MacOS terminal or from Windows Terminal)
  * Install VirtualBox or another VM solution on your PC and install Ubuntu 20.04 in it
  * Enable Windows Subsystem for Linux 2 and install Ubuntu 20.04 from the store
* Copy your account file into your home directory (`/root`) on Ubuntu with the name `privkey.pem`
* Clone this repository: `git clone https://github.com/TestNetRun/CasperDelegate.git`
* Move into it: `cd CasperDelegate`
* Install the packages and build the smart contracts: `./setup.sh`

## Delegation
* Fund your account and check its balance with `./balance ACCOUNT-ADDRESS`
* Make sure you have enough number of CSPR in it. You will need at least 3 additional CSPR which will be the cost of the delegation procedure.
* Find yourself a validator and note down their public key (You're welcome to delegate on our community node: 01c377281132044bd3278b039925eeb3efdb9d99dd5f46d9ec6a764add34581af7)
  * Make sure the validator you choose has an acceptable commision rate and is capable of keeping a high uptime.
  * Feel free to join our telegram group if you have questions: https://t.me/CasperDelegation
* Start the delegation script and follow the instructions: `./delegate`
* If all goes well, you can see the result of your delegation in a few minutes by copy-pasting your deployment hash on cspr.live
