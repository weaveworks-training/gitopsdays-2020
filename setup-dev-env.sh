#! /usr/bin/bash

echo <<END
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
export PATH=$PATH:/home/training/.pulumi/bin


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