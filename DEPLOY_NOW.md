# Quick Cloud Deployment

## Option 1: Railway (Backend) + Vercel (Frontend) - Easiest

### Backend (Railway):
```bash
npm i -g @railway/cli
railway login
railway init
railway up
```
Then add `OPENROUTER_API_KEY` in Railway dashboard → Variables

### Frontend (Vercel):
```bash
npm i -g vercel
cd Utdhackathon2025
vercel --prod
```
Set `VITE_API_URL` to your Railway backend URL in Vercel dashboard

## Option 2: Render (Both)

1. Go to https://render.com
2. Connect GitHub repo
3. Deploy backend as Web Service (uses render.yaml)
4. Deploy frontend as Static Site
5. Add environment variables in dashboard

## One-Command (if CLIs installed):
```bash
./deploy.sh
```
