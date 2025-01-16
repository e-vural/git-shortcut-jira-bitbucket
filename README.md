# git-shortcut-jira-bitbucket
Create task on Jira , create branch from that task add commit , push , pull request


## commit.sh

Bu dosya kolayca commit atmanızı sağlar. Belirleyeceğiniz bir alias ile tek hamlede commit atabilirsiniz. 

## push.sh

Bu dosya ile hızlıca bulunduğunuz brancha push atabilirsiniz.

## after_pull_request_merge.sh

Bu dosya ile pull requestinizi merge yaptıktan sonra kolayca local branchınızı silebilirsiniz.


# Installation

### MACOS & LINUX
    git clone https://github.com/e-vural/git-shortcut-jira-bitbucket.git ~/.my-git-automate

    echo "alias c='bash ~/.my-git-automate/commit.sh'" >> ~/.zshrc

    echo "alias p='bash ~/.my-git-automate/push.sh'" >> ~/.zshrc

    echo "alias pr='bash ~/.my-git-automate/after_pull_request_merge.sh'" >> ~/.zshrc

    source ~/.zshrc
