# Casper Delegation/staking FAQ

This is a community-provided collection of questions and answers to frequently asked questions about the delegation/staking process of Casper network. You may find the official docs here: https://docs.casperlabs.io/en/latest/staking/index.html

If you see anything incorrect, or something missing, plese feel free to create a pull request to contribute.

## What is delegation?
You can delegate your CSPR tokens to participate in the protocol on a validator node on the Casper network. This way, you help to improve decentralization and security of the network, and earn staking rewards in return.

## How frequently the staking rewards are paid?
They are paid to your account on a per ERA basis, which happens multiple times a day, currently.

## Is there a cool-down/lock period after delegation?
No. You can undelegate your tokens any time you like, irrelevant of when you delegated. After the undelegation, the network keeps the funds on hold for approximately 14 hours for security reasons, then returns the funds to your account automatically.

## Is there slashing? Can I lose my delegated tokens?
No. Slahing is not enabled on the Casper mainnet at the moment. If the validator you delegated on behaves poorly, it may get evicted from the network. In that case, you will lose the rewards which would be earned in that time period.

## What is the cost of delegation and undelegation?
The cost of the delegation process is ~3 CSPR. So make sure you have a bunch of extra CSPR on your account apart from the amount you are delegating. So if you are going to delegate 1000 CSPR, you should have at least 1003 CSPR in your wallet.The cost of the undelegate process is currently 0.00001 CSPR.

## What is the yearly reward rate for the delegated tokens?
APY is currently around 20% on the mainnet. This value is result of a rough calculation done on 2021-05-16, and may change over time.

## How can I delegate my tokens?
Currently, you need to go the command-line way for staking/delegation until the user-friendly UI is released. If you are familiar with the command-line, head over here: https://github.com/TestNetRun/CasperDelegate/blob/main/README.md
