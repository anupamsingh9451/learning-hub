# _guidelines

Is folder me woh rules rakhe jaate hain jo Anupam ne agents (Claude etc.) ko diye hain:
writing style, tone, format, kaam karne ka tareeka. Har guideline ek alag `.md` file me.

## Files

| File | Kya hai |
|---|---|
| `writing-style.md` | Saara content simple, natural Hinglish me kaise likhna hai |
| `agents.md` | Recurring kaam ke liye Claude Code subagents: kaunse hain, naye kaise banane hain |
| `../_templates/WEB_PAGE_DEVELOPMENT_PROMPT.md` | Universal Web Page Development Master Prompt (har page create/redesign ke liye) |
| `../_templates/CODE_CLEANUP_MASTER_PROMPT.md` | Continuous Code Cleanup & Dead Code Removal Master Prompt (refactoring, safe file deletion) |

## Nayi guideline kaise add karein

1. Ek nayi file banao: `_guidelines/<short-kebab-name>.md` (jaise `code-style.md`).
2. Upar `#` heading, phir rules bullets me. Chhota aur seedha rakho.
3. Upar wali table me ek line add karo.
4. Agar file purani guideline ko badalti hai, toh purani file update karo, nayi mat banao.

Agents: kaam shuru karne se pehle is folder ki files padho, aur jab Anupam koi
standing rule de ("hamesha aise karna", "yaad rakhna"), use yahin save karo.
