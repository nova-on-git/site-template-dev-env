#!/bin/bash

echo ""
echo -e "\e[32m[Veloris]\e[0m Installing dependencies and spinning up a dev server..."
echo ""


cd /app/veloris-dashboard

echo -e "\e[32m[Veloris]\e[0m Pulling veloris-dashboard"
git pull
pnpm install
nuxt build

cd /app/veloris-site-template

echo -e "\e[32m[Veloris]\e[0m Pulling veloris-site-template"
git pull
pnpm install

nuxt dev --no-fork
