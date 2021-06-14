# Casper Delegation/staking FAQ

This is a community-provided collection of questions and answers to frequently asked questions about the delegation/staking process of Casper network. You may find the official docs here: https://docs.casperlabs.io/en/latest/staking/index.html

If you see anything incorrect, or something missing, plese feel free to create a pull request to contribute.

## What is delegation?
Delegation allocates your CSPR tokens to a chosen validator on the network who is participating in the Casper Network's Consensus Protocol. As a proof of stake network, node operators 'stake' their tokens to earn the elibility to propose new blocks for the network, but requiring constant uptime and monitoring of a server connected the Casper Network, instead of 'mining' like other tokens. 

Instead of having to operate and maintain a casper node (server that stores a copy of the blockchain), you can instead delegate your tokens to someone on the network who has indicated they intend to operate a server on the network. These server operators are called Validators, and they keep a certain percentage of rewards generated from your staked tokens, similar to a commission. Validators set their own fee, as well as earn rewards for their own staked tokens. By particitating in the protocol this way, you help to improve decentralization and security of the network, and earn  rewards in return.

## How frequently the staking rewards are paid?
Staking rewards are paid to your account on a per ERA basis. One Era is currently set to 2 hours, and each block is set for 65 seconds.

## Is there a cool-down/lock period after delegation?
While there is a delay before you can access your previously delegated tokens, there is no cool-down or lock period after you delegate tokens. You can undelegate any amount of tokens at any time. Upon undelegating tokens from a validator, the network puts funds on hold for 7 Eras, approximately 14 hours and then automatically returns the CSPR tokens to your account.

## Is there slashing? Can I lose my delegated tokens?
Currently, slashing is not enabled on the Casper MainNet. If a validator behaves poorly on the network they may be evicted from the auction and your rewards will be lost in the time period the validator is evicted. When slashing is enabled, tokens will be removed as penalty for poor behavior in the network. In that case, you will lose the rewards which would be earned in that time period.

## What is the cost of delegation and undelegation?
The cost of the delegation process is ~3 CSPR. So make sure you have a bunch of extra CSPR on your account apart from the amount you are delegating. So if you are going to delegate 1000 CSPR, you should have at least 1003 CSPR in your wallet.The cost of the undelegate process is currently ~0.5 CSPR.

## What is the yearly reward rate for the delegated tokens?
APY is currently around 20% on the mainnet. This value is result of a rough calculation done on 2021-05-16, and may change over time.

## I see some validators with big stake producing blocks, and some smaller ones not. Does that mean only the bigger ones are getting rewards?
No. On Casper Mainnet, everyone gets seigniorage according to their stake, regardless of whether you've produced blocks or not. The only thing a block proposer gets, is to keep the transaction fees associated with transfers and deploys in the block they proposed. As you know, transfers cost 10000 motes (0.00001 CSPR), so not huge amounts, these fees.

The block proposer is chosen also based on odds relative to stake, so if you have 0.1% of stake on the network, the odds that you'll get chosen as the block proposer are very small. This has nothing to do with seigniorage.

## Some top validators have a commission rate of 100%. What does that mean?
Validators with Delegation rate of 100 are ones that either don't want to or are restricted from acting as a staking service. You will earn nothing from them.

## How should I choose a validator? Why are many different commision rates?
Reasonable rates are 10% or less. The signalling there is that the 10% validator thinks they earn it, the lower one's are trying to attract people and get more delegation. Once there is sufficient analytics of node performance, décision making becomes **pick the best performing validator with the lowest delegation rate**.

## How can I delegate my tokens?
An easy, web-based staking UI is now available at https://cspr.live/delegate-stake.

For those using the Casper Signer browser plug-in, available for Chrome, Brave and all other Chromium based browsers, delegating your CSPR to a Validator is now as simple as a few clicks. In addition to delegation, CSPR.live today also offers the ability un-delegate stake, and to make account-to-account transfers via a simple web-based UI.

For the steps on installing the official Casper Signer extension and creating & funding your account, follow the `Prerequisites` part of our legacy instructions: https://github.com/TestNetRun/CasperDelegate#prerequisites
