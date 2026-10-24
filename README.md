# Learning Hub — Anupam Singh

> Meri roz ki learning, notes, practice aur progress ek jagah.
> **Full Stack (PHP/Laravel, React) → AI Developer** ka safar.
> **Shuru:** 23-10-2026

---

## Folder Map

| Path | Purpose |
|---|---|
| `DAILY-15-MIN/` | Roz ka 15-min topic (`dd-MM-yyyy.txt`) — subah 7 baje auto-generate hota hai |
| `ROADMAP/` | 🔒 Career + AI roadmap. **Private** — sirf is laptop pe, GitHub pe nahi jaata (`.gitignore` me hai) |
| `WEEKLY-PLAN/` | Har hafte ka plan: `week-1/`, `week-2/` … (day-wise files) |
| `NOTES/` | Detailed notes, topic ke group folder me: `php/`, `javascript/`, `html/`, `python/`, `ai/`, `database/`, `devops/`, `git/`, `system-design/` — [NOTES/README.md](NOTES/README.md) |
| `CHEATSHEETS/` | 2-min quick-reference, NOTES jaise hi group folders — [CHEATSHEETS/README.md](CHEATSHEETS/README.md) |
| `PRACTICE/` | Chhote code exercises, DSA, katas, snippets |
| `PROJECTS/` | Learning ke liye banaye mini projects (har ek ka apna folder) |
| `RESOURCES/` | Courses, books, videos, articles ke links |
| `JOURNAL/` | Roz ka TIL (Today I Learned) + weekly review |
| `_templates/` | Note / weekly review / project ke templates |
| `_guidelines/` | Agents (Claude) ke liye standing rules: writing style, tone, format |
| `_scripts/` | TIL, naya note, sync (commit + push) ke PowerShell scripts |
| `PROGRESS.txt` | Weekly + skills + milestones tracker |
| `PUSH.bat` | Double-click = sab commit + GitHub pe push |

---

## Roz Ka Routine

```powershell
cd D:\learning-hub
```

### a) Kuch seekha? TIL me ek line daalo

```powershell
.\_scripts\til.ps1 "Laravel me eager loading N+1 query hatata hai"
```

### b) Kisi topic ka proper note banana hai?

```powershell
.\_scripts\new-note.ps1 -Topic php -Title "Eloquent Relationships"
```

> `-Topic` = `NOTES/` ke andar ka group folder (`php`, `javascript`, `html`, `python`, `ai` …).

### c) Din ke end me sab commit + push

```powershell
.\_scripts\sync.ps1
# Ya shortcut:
PUSH.bat  # double-click karo
```

---

## Rules

> [!CAUTION]
> Koi **password, API key, `.pem`, client data** yahan NAHI.
> Ye repo public bhi ho sakta hai. Credentials sirf `D:\credentials` me rakhein.
> `sync.ps1` commit se pehle secret jaisi lines check karta hai.

- Notes aur docs `.txt` me, isi format me (`TITLE`, `=====`, `------` sections).
- File naam: `lowercase-with-dashes` (e.g. `eloquent-relationships.txt`).
- `DAILY-15-MIN/` files ka naam `dd-MM-yyyy.txt` hi rahe — automation isi pe chalta hai.
- Naya topic aaye toh pehle dekho kis group me fit hota hai (Vue → `javascript/`, MySQL → `database/`). Naya top-level folder tabhi jab koi group fit na ho.
- `ROADMAP/` private hai. Use kabhi `git add -f` se force-add mat karna.
