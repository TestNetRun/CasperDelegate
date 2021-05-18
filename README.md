# Casper Delegate Scripts - the command-line way

These scripts are written to help CSPR token holders easily delegate their tokens on validators on the Casper mainnet until the full-featured UI solution arrives. Inspect the scipts and use at your own risk!

## Have questions about Casper delegation/staking?
See [Casper Delegation/staking FAQ](https://github.com/TestNetRun/CasperDelegate/blob/main/FAQ.md).

## Prerequisites
In order to delegate your tokens, you should have created a wallet for yourself, and transferred your tokens from the ecxhange to your wallet. If you don't have a wallet, you can create one, following these steps:
* Install Brave browser (recommended) or Chrome.
  * Brave: https://brave.com/
  * Chrome: https://www.google.com/intl/en/chrome/
* Go to Casper Explorer's login page: https://cspr.live/sign-in
* Click on the "Download Signer" button, and wait for the "CasperLabs Signer" extension page to open.
* Click on the "Add to Chrome" button and install the official extension (We will call it "Casper Signer". It is your wallet.)
* Click on the "Extensions" button (puzzle piece shaped icon) on top right, and select CasperLabs Signer
* Set the vault password, and create an account (make sure the `Download Key` box is selected)
* Save your key to a proper location. This is your account key. Whoever has this key owns the account. So make multiple copies of it (copy to a clean USB thum drive, print it on paper etc.) and store them safely. Do not ever share it with anyone.
* Now go to https://cspr.live/sign-in and click on the `Sign In` button under the `Casper Signer` section, and sign into the Casper explorer with your account. (This is the official explorer. It may ask for permission to view your account address. Approve and connect.)
* After signing in, you will see your account number on top right. (Next to the language flag.) Click on your account address, and then click `View account`.
* Your account details are shown here. If it is a new (empty) account, You will see `NA` in the `Account Balance` field.
* The `Public Key` shown here is your account number. You can use it to transfer funds to your account from the exchanges.
* Notes:
  * Always try transfer and delegation with a small amount first, and make sure everything works as expected.
  * Sometimes cspr.live or the brave browser might not update the account details page properly. So if you do a transfer and can't see the account balance after
    a long time, try closing the browser tab completely, opening it again, and signing back in.

## Installation
* Access an Ubuntu 20.04 environment (with at least 2GB of RAM for minimal, at least 3GB RAM for desktop intallations) as root. If you don't have access already, you can try one of the following ways:
  * You can do it by firing up a node on Digital Ocean (Ref link for free credits for new signups: https://m.do.co/c/0b83fa02ff5a), and accessing it through ssh (from MacOS terminal or from Windows Terminal)
    * **Notes on using a cloud VM/VPS:** If possible, go with a decent VPS with an hourly rate. You can quickly finish your job, then detroy the VPS. Once you are done with delegation, if you intend to keep it delegated for a long time, then you don't need the VPS anymore. Your delegation record is kept on the network, not on your VPS. Just make sure you safely backed up your wallet/private key beforehand!
  * Install VirtualBox or another VM solution on your PC and install Ubuntu 20.04 in it
  * Enable Windows Subsystem for Linux 2 and install Ubuntu 20.04 from the store
* Copy your account file into your home directory (`/root`) on Ubuntu with the name `privkey.pem`
* Install git and curl: `apt install -y git curl`
* Clone this repository: `git clone https://github.com/TestNetRun/CasperDelegate.git`
* Move into it: `cd CasperDelegate`
* Install the packages and build the smart contracts: `./setup.sh`

## Delegation
* Fund your account and check its balance with `./balance.sh ACCOUNT-ADDRESS`
* Make sure you have enough number of CSPR in it. You will need at least 3 additional CSPR which will be the cost of the delegation procedure.
* Find yourself a validator and note down their public key (You're welcome to delegate on our community node: 01c377281132044bd3278b039925eeb3efdb9d99dd5f46d9ec6a764add34581af7)
  * Make sure the validator you choose has an acceptable commision rate and is capable of keeping a high uptime.
  * Feel free to join our telegram group if you delegate on our validator node, to get updated on important changes: https://t.me/CasperDelegation
  * Otherwise, you can ask general questions on the official Casper discord server: https://discord.com/invite/Q38s3Vh
  * List of current validators: https://cspr.live/validators
* Start the delegation script and follow the instructions: `./delegate.sh`
* Take note of the `deployment hash`. If it all goes well, you can see the result of your delegation in a few minutes by copy-pasting your deployment hash on cspr.live.
