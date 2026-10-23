# learning-hub — instructions for agents

This is Anupam's personal learning repo (git, pushed to GitHub). It is read by a person first, so:

- Notes and docs meant for Anupam to read are `.txt` files in the house format: an UPPERCASE title, a `=====` underline the same length, metadata lines (Topic / Date / Time), then numbered UPPERCASE sections between 60-dash `------` lines, with the body indented 2 spaces and wrapped near 78 columns. Language is Hinglish (Hindi in Roman script, technical words in English). Copy the look of `DAILY-15-MIN/23-10-2026.txt` and `_templates/note-template.txt`.
- Only agent-facing files (this file, prompts, skills, agent configs) use Markdown.
- Never put passwords, API keys, `.pem`/`.env` files or client data here. Those stay in `D:\credentials`.
- Do not rename `DAILY-15-MIN/dd-MM-yyyy.txt` files; the Task Scheduler job `Daily15Min` depends on that pattern.
- Weekly plans go in `WEEKLY-PLAN/week-N/`, topic notes in `NOTES/<topic>/<slug>.txt`, TIL in `JOURNAL/<year>/MM-month.txt`.
