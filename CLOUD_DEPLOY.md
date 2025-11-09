# Cloud Deployment Guide

## Railway (Recommended - Easiest)

### Backend Deployment

1. **Install Railway CLI:**
   ```bash
   npm i -g @railway/cli
   railway login
   ```

2. **Deploy:**
   ```bash
   railway init
   railway up
   ```

3. **Set Environment Variables:**
   - Go to Railway dashboard
   - Add `OPENROUTER_API_KEY` in Variables tab
   - Add `CORS_ORIGINS` with your frontend URL

4. **Get your backend URL** from Railway dashboard

### Frontend Deployment (Vercel)

1. **Install Vercel CLI:**
   ```bash
   npm i -g vercel
   ```

2. **Deploy:**
   ```bash
   cd Utdhackathon2025
   vercel
   ```

3. **Set Environment Variable:**
   - In Vercel dashboard, add `VITE_API_URL` with your Railway backend URL

## Render

### Backend

1. Go to https://render.com
2. New → Web Service
3. Connect your GitHub repo
4. Settings:
   - Build Command: `pip install -r requirements.txt`
   - Start Command: `uvicorn fastapi_server:app --host 0.0.0.0 --port $PORT`
5. Add environment variables:
   - `OPENROUTER_API_KEY`
   - `CORS_ORIGINS` (your frontend URL)

### Frontend

1. New → Static Site
2. Connect your GitHub repo
3. Root Directory: `Utdhackathon2025`
4. Build Command: `npm install && npm run build`
5. Publish Directory: `dist`
6. Add environment variable:
   - `VITE_API_URL` (your backend URL)

## Environment Variables Needed

### Backend
- `OPENROUTER_API_KEY` - Your OpenRouter API key
- `CORS_ORIGINS` - Comma-separated frontend URLs
- `PORT` - Usually set automatically by platform

### Frontend
- `VITE_API_URL` - Your backend API URL

## Quick Deploy Commands

**Railway:**
```bash
railway login
railway init
railway up
```

**Render:**
- Use web dashboard (render.yaml is ready)

**Vercel (Frontend only):**
```bash
cd Utdhackathon2025
vercel --prod
```

