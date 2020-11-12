#! /usr/bin/bash

cat <<END
####### GITOPS DAYS 2020 TRAINING ####################

Hi There!

Welcome to the GitOps days 2020 workshop on Getting
Started with GitOps!

You can find all required resources, as well as step
by step instructions for this workshop online at

https://github.com/weaveworks-training/gitopsdays-2020

Hope you enjoy the workshop and don't hesitate to ask
plenty of questions.

Happy GitOpsing :)

Brice

######################################################
END


#
# Install Pulumi
#
curl -fsSL https://get.pulumi.com | sudo sh
echo 'export PATH=$PATH:/home/$(whoami)/.pulumi/bin' >> ~/.bashrc


#
# Install Kubectl
#
snap install kubectl --classic


#
# Install flux v2
#
curl -s https://toolkit.fluxcd.io/install.sh | sudo bash
# enable completions in ~/.bash_profile
echo ". <(flux completion bash)" >> ~/.bashrc


#
# Clean up the console
#

cat <<END >> ~/.bashrc
B_BLACK="\[\e[40m\]"
B_RED="\[\e[41m\]"
B_GREEN="\[\e[42m\]"
B_YELLOW="\[\e[43m\]"
B_BLUE="\[\e[44m\]"
B_MAGENTA="\[\e[45m\]"
B_CYAN="\[\e[46m\]"
B_WHITE="\[\e[47m\]"

F_BLACK="\[\e[30m\]"
F_RED="\[\e[31m\]"
F_GREEN="\[\e[32m\]"
F_YELLOW="\[\e[33m\]"
F_BLUE="\[\e[34m\]"
F_MAGENTA="\[\e[35m\]"
F_CYAN="\[\e[36m\]"
F_WHITE="\[\e[37m\]"

BOLD="\[\e[1m\]"

DONE="\[\e[0m\]"

export PS1="${BOLD}${F_GREEN}Gitops Days 2020 (${DONE}${F_CYAN}\W${DONE}${BOLD}${F_GREEN})➤ ${DONE}"

END

cat <<END
\[\e[41m\]######################################################\[\e[0m\]

Now, to make sure you can use pulumi, run:

$ source ~/.bashrc

######################################################
END