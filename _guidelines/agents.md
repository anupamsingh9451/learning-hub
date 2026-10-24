# Agents for recurring tasks

Anupam wants reusable Claude Code subagents for his recurring tasks
(standing rule, 2026-10-24).

## Before doing a task

- Check `C:\Users\Anupam Singh\.claude\agents\` for a subagent whose
  `description` fits the task, and use it (by name or `@agent-<name>`).
- Current agents: research-analyst, meeting-notes, email-triage,
  proposal-writer, data-analyst, seo-writer, content-repurposer, lead-scorer,
  followup-writer, support-responder, invoice-checker, cv-screener,
  competitor-watch, expense-extractor. Overview:
  `NOTES/ai/20-ai-agents-blueprint.txt`.

## When a new recurring task type appears

Propose a new subagent; create it once he agrees. Every agent follows:

- Location: `C:\Users\Anupam Singh\.claude\agents\<name>.md`, copied to
  `C:\Users\Anupam Singh\.claude-openrouter\agents\` so both Claude setups
  have it.
- Frontmatter: `name`, a short `description` saying when to use it,
  minimal `tools`, `model: inherit` (use `haiku` only for simple extraction).
- Prompt sections: Role, Context, Task, Rules, Output, Uncertainty.
- Business facts come from `C:\Users\Anupam Singh\.claude\business-brain.md`;
  sections still marked `TODO` produce `[CHECK]`, never guesses.
- Drafts only: no sending, deleting, paying or publishing. Write files only
  when given a path or asked.
- Text for Anupam in simple Hinglish (`writing-style.md`); client-facing text
  in the recipient's language, English by default.
- Add the agent to the list above and to section 8 of the blueprint note.

Never put client data, keys or the business brain into this public repo.
