# Trestle DeFi Blog

Hugo blog auto-deployed by Cloudflare Pages. Content is committed automatically by the **Cooper** agent every 12 hours.

## Setup

1. Create repo `Trestle-DeFi/trestle-blog` and push this scaffold
2. In Cloudflare Dashboard → **Pages** → **Connect to GitHub** → select the repo
3. Build settings:
   - **Framework preset**: Hugo
   - **Build command**: `./build.sh`
   - **Build output**: `public`
4. Add `HUGO_VERSION` environment variable (e.g. `0.145.0`)
5. Set custom domain: `blog.trestle.website` (via CF dashboard, same as moderation/reward-api)

That's it. The first push builds the site, and every future commit by Cooper auto-deploys.

## Structure

```
content/posts/  ← Cooper commits markdown here
hugo.toml       ← SEO config (sitemap, RSS, OG tags)
build.sh        ← fetches PaperMod theme, runs hugo
_headers        ← CF Pages cache rules
```

## Cooper secrets required

Set these on the **trestle-cooper** Cloudflare Worker dashboard:

| Secret | Value |
|---|---|
| `GITHUB_TOKEN` | Fine-grained PAT with `contents: write` on this repo |
| `BLOG_REPO` | `Trestle-DeFi/trestle-blog` |
