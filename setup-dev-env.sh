#! /usr/bin/bash


#
# Install Pulumi
#
curl -fsSL https://get.pulumi.com | sh
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