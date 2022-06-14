#!/bin/bash

set -euo pipefail

yum install -y git maven

tmp_idea="/tmp/idea.tar.gz"
tmp_vscode="/tmp/vscode.rpm"

curl -L https://download.jetbrains.com/idea/ideaIC-2022.1.2.tar.gz -o $tmp_idea
tar -xf $tmp_idea -C /opt


curl -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-x64" -o $tmp_vscode 
tar -xf $tmp_vscode -C /opt
