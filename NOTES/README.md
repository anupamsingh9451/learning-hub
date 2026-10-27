# Notes

Detailed notes, topic ke **group folder** me. Ek group = ek technology family,
taaki top par lambi list na bane aur file turant mil jaaye.

## Folder Structure

```
NOTES/
├── php/
│   ├── php.txt                PHP basics se PHP 8.5 tak
│   ├── laravel.txt            Laravel poora (routing, Eloquent, queue, deploy)
│   ├── codeigniter.txt        CodeIgniter 4 poora
│   ├── php-repos.txt          kaam ke GitHub repos (har topic ke saath "-repos")
│   ├── laravel-repos.txt
│   └── codeigniter-repos.txt
├── javascript/
│   ├── react.txt
│   ├── node.txt
│   ├── nextjs.txt
│   └── nextjs-repos.txt
├── html/                      HTML, CSS, UI design
│   ├── animated-ui-components.txt Skiper UI, Vengeance AI, Animaster (motion kits)
│   ├── bootstrap.txt
│   ├── tailwind.txt
│   ├── ui-styles.txt          UI design basics + 38 UI styles (naam, website, repo)
│   └── ui-repos.txt
├── python/
│   └── python-repos.txt
├── career/
│   └── high-paying-skills.txt 5 skills, 90 din plan, pehla client/job
├── git/
│   └── gitkeep.txt            .gitkeep kya hai, khaali folder kaise rakhein
├── ai/
│   ├── 20-ai-agents-blueprint.txt  20 business agents + mere 14 Claude Code agents
│   ├── agentic-awesome-skills.txt  2,700+ agent skills ki library: chuni hui install + safety
│   ├── ai-3d-product-website.txt  AI se exploded-view 3D product site (frames + canvas)
│   ├── claude-seo-skills.txt      Claude SEO Skills: technical audits, GEO/AEO, schema, keywords (Notion blueprint)
│   ├── claude-code/           Claude Code ka setup aur providers
│   │   ├── openrouter-claude.txt   OpenRouter se Claude, kab use karein, behtar options
│   │   ├── openrouter-free-models.txt OpenRouter ke free models (:free) aur $0 coding setup
│   │   └── two-editors-setup.txt   VS Code normal = original, VS Code (OpenRouter) = OpenRouter
│   ├── design-audit-prompts.txt    5 structured audit prompts (hierarchy, type, spacing, color, 10x ROI)
│   ├── rea-reverse-engineering.txt  REA: agent se kisi app ka feature samajhna (MCP)
│   ├── ruflo.txt              Claude Code ke saath AI agents ki team (setup + safe use)
│   ├── saas-15-layer-playbook.txt AI se asli SaaS: 15 layers + Laravel mapping
│   ├── vibecoded-website-fixes.txt 20 UI/UX fixes + 20 pre-launch production essentials
│   └── vibecoding-prompts.txt 20 prompts: PRD se final audit tak
├── database/
│   ├── database-types.txt     SQL vs NoSQL, ACID, CAP, saare DB types (shuru yahin se)
│   ├── sql.txt                MySQL + Postgres dono ka common SQL (JOIN, index, transaction)
│   ├── mysql.txt
│   ├── postgresql.txt         JSONB, index types, pgvector (AI)
│   ├── mongodb.txt
│   ├── redis.txt              cache, queue, lock, Laravel ke saath
│   └── database-repos.txt     GUI tools, extensions, search/vector DBs
├── devops/                    (abhi khaali, .gitkeep) Docker, Linux, WSL, CI/CD
└── system-design/
    └── backend-developer-handbook.txt 20 core backend concepts, architecture & interview guide (@CodewithZ)
```

## Naya Note Kahan Jaayega?

| Topic | Folder |
|---|---|
| PHP, Laravel, CodeIgniter, Composer | `php/` |
| JavaScript, TypeScript, React, Node, Next.js, Vue | `javascript/` |
| HTML, CSS, Bootstrap, Tailwind, UI/UX design | `html/` |
| Python, FastAPI, Django, pandas | `python/` |
| LLM, RAG, prompts, Claude API, agents | `ai/` |
| MySQL, PostgreSQL, Redis, indexing | `database/` |
| Docker, Linux, WSL, Nginx, CI/CD, cloud | `devops/` |
| Git, GitHub | `git/` |
| Career, skills, interview, freelancing | `career/` |
| Scaling, caching, queues, architecture | `system-design/` |

- Kisi topic ke kaam ke repos: `<topic>-repos.txt` usi folder me (jaise `php/laravel-repos.txt`).
- Koi group fit na ho tabhi naya folder banao.

## Naya Note Kaise Banayein

```powershell
.\_scripts\new-note.ps1 -Topic ai -Title "RAG kya hai"
```

> `NOTES\ai\rag-kya-hai.txt` ban jayega — `_templates\note-template.txt` ke format me.

## File Naming Convention

```
<lowercase-with-dashes>.txt
# e.g.  eloquent-relationships.txt
#       rag-kya-hai.txt
#       laravel-repos.txt
```

## .gitkeep Kyun?

Git khaali folder save nahi karta. Jo folder abhi khaali hai (`ai/`, `database/` …)
usme ek khaali `.gitkeep` file rakhi hai, taaki folder GitHub pe bhi dikhe.
Pehla asli note aate hi `.gitkeep` hata do. Poori baat: [git/gitkeep.txt](git/gitkeep.txt)
