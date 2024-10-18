#!/bin/bash

echo ""
echo -e "\e[32m[Veloris] Installing dependencies and spinning up a dev server... \e[0m"

cd /app/dashboard

echo ""
echo ""
echo -e "\e[32m[Veloris] Pulling latest veloris-dashboard from git. \e[0m"
git pull

echo ""
echo ""
echo -e "\e[32m[Veloris] Installing veloris-dashboard dependencies. \e[0m"
pnpm install

echo ""
echo ""
echo -e "\e[32m[Veloris] Building veloris-dashboard for .nuxt cache. \e[0m"
nuxt build

cd /app/site

echo ""
echo ""
echo -e "\e[32m[Veloris] Pulling latest veloris-site-template from git. \e[0m"
git pull

echo ""
echo ""
echo -e "\e[32m[Veloris] Installing veloris-site-template dependencies. \e[0m"
pnpm install

echo ""
echo ""
echo -e "\e[32m[Veloris] Starting development server... \e[0m"
nuxt dev --no-fork
