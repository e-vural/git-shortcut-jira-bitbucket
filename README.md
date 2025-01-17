# git-shortcut-jira-bitbucket
Create task on Jira, create branch from that task, add commit, push, and create pull request

## Scripts

### commit.sh
This file allows you to commit easily. You can make commits in a single step using an alias you specify.

### push.sh
With this file, you can quickly push to your current branch.

### after_pull_request_merge.sh
After merging your pull request, you can easily delete your local branch using this file.

## Usage

### Commit (`c`)
To make a commit, simply use the `c` alias:
```bash
c "your commit message"
```
This will stage all changes and create a commit with your message.

### Push (`p`) 
To push your changes to the remote repository:
```bash
p
```
This will push your current branch to the remote.

### After Pull Request Merge (`pr`)
After your pull request is merged, use this command to clean up:
```bash
pr
```
This will:
1. Switch to the main branch
2. Pull the latest changes
3. Delete your local feature branch

## Installation

### macOS & Linux

#### zsh

```bash
git clone https://github.com/e-vural/git-shortcut-jira-bitbucket.git ~/.my-git-automate &&
 
echo "alias c='bash ~/.my-git-automate/commit.sh'" >> ~/.zshrc &&

echo "alias p='bash ~/.my-git-automate/push.sh'" >> ~/.zshrc &&

echo "alias pr='bash ~/.my-git-automate/after_pull_request_merge.sh'" >> ~/.zshrc &&

source ~/.zshrc
```


#### bash
```bash
git clone https://github.com/e-vural/git-shortcut-jira-bitbucket.git ~/.my-git-automate &&

echo "alias c='bash ~/.my-git-automate/commit.sh'" >> ~/.bash_profile &&

echo "alias p='bash ~/.my-git-automate/push.sh'" >> ~/.bash_profile &&

echo "alias pr='bash ~/.my-git-automate/after_pull_request_merge.sh'" >> ~/.bash_profile &&

source ~/.bash_profile
```

### Windows

The easiest way to use git bash. 

```bash
touch ~/.bash_profile

git clone https://github.com/e-vural/git-shortcut-jira-bitbucket.git ~/.my-git-automate &&

echo "alias c='bash ~/.my-git-automate/commit.sh'" >> ~/.bash_profile &&

echo "alias p='bash ~/.my-git-automate/push.sh'" >> ~/.bash_profile &&

echo "alias pr='bash ~/.my-git-automate/after_pull_request_merge.sh'" >> ~/.bash_profile &&

source ~/.bash_profile
```
