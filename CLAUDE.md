# learning-hub — instructions for agents

This is Anupam's personal learning repo (git, pushed to GitHub). It is read by a person first, so:

- Notes and docs meant for Anupam to read are `.txt` files in the house format: an UPPERCASE title, a `=====` underline the same length, metadata lines (Topic / Date / Time), then numbered UPPERCASE sections between 60-dash `------` lines, with the body indented 4 spaces (see `.editorconfig`) and wrapped near 78 columns. Language is Hinglish (Hindi in Roman script, technical words in English). Copy the look of `DAILY-15-MIN/23-10-2026.txt` and `_templates/note-template.txt`.
- Only agent-facing files (this file, prompts, skills, agent configs) use Markdown.
- Never put passwords, API keys, `.pem`/`.env` files or client data here. Those stay in `D:\credentials`.
- Do not rename `DAILY-15-MIN/dd-MM-yyyy.txt` files; the Task Scheduler job `Daily15Min` depends on that pattern.
- Read every file in `_guidelines/` before writing content; they hold Anupam's standing rules (start with `_guidelines/writing-style.md`). When Anupam gives a new standing rule ("always", "from now on", "remember"), save it as a new `.md` file there and list it in `_guidelines/README.md`.
- Weekly plans go in `WEEKLY-PLAN/week-N/`, TIL in `JOURNAL/<year>/MM-month.txt`.
- `NOTES/` and `CHEATSHEETS/` share the same group folders: `php/` (PHP, Laravel, CodeIgniter), `javascript/` (React, Node, Next.js, TS), `html/` (HTML, CSS, Bootstrap, Tailwind, UI design), `python/`, `ai/`, `database/`, `devops/` (Docker, Linux, WSL, PowerShell), `git/`, `system-design/`. Put a new file in the group it fits (`NOTES/<group>/<slug>.txt`); add a new top-level group only when none fits, and update that folder's `README.md` tree. A topic's repo list is `<topic>-repos.txt` in the same group.
- Keep a `.gitkeep` only in folders that are otherwise empty; remove it once a real file lands there.
- `ROADMAP/` is private: it is in `.gitignore` and must never be committed or pushed (no `git add -f`). The GitHub repo is public.
