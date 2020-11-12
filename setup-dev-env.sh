#! /usr/bin/bash

F_RED="\e[31m"
BOLD="\e[1m"
DONE="\e[0m"

echo -e $F_RED$BOLD
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
echo -e $DONE


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

cat << "END" >> ~/.bashrc

F_GREEN="\[\e[32m\]"
F_CYAN="\[\e[36m\]"
BOLD="\[\e[1m\]"
DONE="\[\e[0m\]"

export PS1="${F_GREEN}${BOLD}Gitops Days 2020 (${DONE}${F_CYAN}\w${DONE}${F_GREEN}${BOLD})➤ ${DONE}"

END

echo -e $F_RED$BOLD
cat <<END
######################################################

Now, run:

$ source ~/.bashrc

######################################################
END
echo -e $DONE