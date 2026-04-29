#!/usr/bin/env bash
set -euo pipefail

site_dir="/home/kasuke/hugo-portfolio"
public_dir="${site_dir}/public"
deploy_dir="/var/www/html"

cd "$site_dir"

hugo --minify --cleanDestinationDir

sudo rsync -a --delete "${public_dir}/" "${deploy_dir}/"
sudo systemctl reload nginx
