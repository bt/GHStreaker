# GitHub Streaker
A automated GitHub committer for Unix-based operating systems to achieve a long commit streak.

## Why?

As a challenge proposed by @mnt, we decided to go for our long journey of attempting to make a total of *1,337 consecutive days of commit streak* which, although incredibly corny, it'll make our GitHub profile look nice!

This script will make a simple README.md file in a proposed Git repository, then commit and push it on a daily basis (achieved through setting up a cronjob).

## WARNING

I do not recommend using this script just to impress employers; Git commits with real content will bring more value to your CV.

## Installation

1. Clone this repository.
2. Create a new repository in GitHub; call it whatever you'd like. This will be the repository that will be automatically commited to.
3. Clone the new repository to a local folder.
4. Update the ghstreaker.conf file to contain your the local folder from step 3.
5. Run the script to ensure it works; it should automatically generate a README.md file with some text, then push it to GitHub.
6. Set up a cronjob to run it on a daily basis at whatever time suits you. An example cronjob line could be:
`` TODO ``