#!/bin/bash

# Cloud Deployment Script

echo "🚀 Deploying to cloud..."

# Check if Railway CLI is available
if command -v railway &> /dev/null; then
    echo "📦 Deploying backend to Railway..."
    railway up
else
    echo "⚠️  Railway CLI not found. Install with: npm i -g @railway/cli"
    echo "   Then run: railway login && railway init && railway up"
fi

# Deploy frontend to Vercel
cd Utdhackathon2025
if command -v vercel &> /dev/null; then
    echo "🌐 Deploying frontend to Vercel..."
    vercel --prod
else
    echo "⚠️  Vercel CLI not found. Install with: npm i -g vercel"
    echo "   Then run: cd Utdhackathon2025 && vercel --prod"
fi

