#!/bin/sh

set -e

if [ -z "$SSH_PRIVATE_KEY" ]; then
  echo "ERROR: SSH_PRIVATE_KEY not set. Exiting..."
  exit 1
fi
mkdir /root/.ssh
echo "$SSH_PRIVATE_KEY" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa
pwd
echo "/github/home"
ll /github/home
echo "/github/workflow"
ll /github/workflow
echo "/github/file_commands"
ll /github/file_commands
echo "/github/workspace"
ll /github/workspace
echo "~"
ll ~
chmod +x ./syno-repo.sh

sh -c "./syno-repo.sh $*"
