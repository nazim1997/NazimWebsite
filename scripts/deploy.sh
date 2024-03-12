#!/bin/bash
SERVER_USER="centos"
SERVER_IP="54.37.66.135"
DEPLOY_DIR="/var/www/html"


npm run build

scp -r dist/* $SERVER_USER@$SERVER_IP:$DEPLOY_DIR
