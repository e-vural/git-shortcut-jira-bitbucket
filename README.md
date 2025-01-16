# git-shortcut-jira-bitbucket
Create task on Jira, create branch from that task, add commit, push, and create pull request

## Scripts

### commit.sh
This file allows you to commit easily. You can make commits in a single step using an alias you specify.

### push.sh
With this file, you can quickly push to your current branch.

### after_pull_request_merge.sh
After merging your pull request, you can easily delete your local branch using this file.

## Installation

### macOS & Linux
```bash
git clone https://github.com/e-vural/git-shortcut-jira-bitbucket.git ~/.my-git-automate &&
 
echo "alias c='bash ~/.my-git-automate/commit.sh'" >> ~/.zshrc &&

echo "alias p='bash ~/.my-git-automate/push.sh'" >> ~/.zshrc &&

echo "alias pr='bash ~/.my-git-automate/after_pull_request_merge.sh'" >> ~/.zshrc &&

source ~/.zshrc
```
