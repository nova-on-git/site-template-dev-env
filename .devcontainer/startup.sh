#!/bin/bash
echo "[Veloris] Installing dependencies and spinning up a dev server..."

cd /app/veloris-dashboard
git pull
pnpm install

cd /app/veloris-site-template
git pull
pnpm install

nuxt dev --no-fork
