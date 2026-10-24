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
│   ├── bootstrap.txt
│   ├── tailwind.txt
│   ├── ui-styles.txt          minimalism, glassmorphism... saare UI styles
│   └── ui-repos.txt
├── python/
│   └── python-repos.txt
├── git/
│   └── gitkeep.txt            .gitkeep kya hai, khaali folder kaise rakhein
├── ai/                        (abhi khaali, .gitkeep)
├── database/                  (abhi khaali, .gitkeep)
├── devops/                    (abhi khaali, .gitkeep) Docker, Linux, WSL, CI/CD
└── system-design/             (abhi khaali, .gitkeep)
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
