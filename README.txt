LEARNING HUB – ANUPAM SINGH
===========================
Meri roz ki learning, notes, practice aur progress ek jagah.
Full Stack (PHP/Laravel, React) -> AI Developer ka safar.
Shuru: 23-10-2026


------------------------------------------------------------
1. FOLDER MAP
------------------------------------------------------------
  DAILY-15-MIN\   Roz ka 15-min topic (dd-MM-yyyy.txt) – roz subah 7 baje
                  apne aap banta hai
  ROADMAP\        Career + AI roadmap, 6-month plan, HOW-TO-NEXT-WEEK.txt
  WEEKLY-PLAN\    Har hafte ka plan: week-1, week-2 ... (day-wise files)
  NOTES\          Topic-wise apne notes:
                  php-laravel, react-js, python, ai-llm, database,
                  devops-linux, git, system-design
  PRACTICE\       Chhote code exercises, DSA, katas, snippets
  PROJECTS\       Learning ke liye banaye mini projects (har ek ka folder)
  CHEATSHEETS\    Ek page wale quick-reference (commands, syntax)
  RESOURCES\      Courses, books, videos, articles ke links
  JOURNAL\        Roz ka TIL (Today I Learned) + weekly review
  _templates\     Note / weekly review / project ke templates
  _scripts\       TIL, naya note, sync (commit + push) ke scripts

  PROGRESS.txt    Weekly + skills + milestones tracker
  SETUP.txt       GitHub / Google Drive se jodna
  PUSH.bat        Double-click = sab commit + GitHub pe push


------------------------------------------------------------
2. ROZ KA ROUTINE
------------------------------------------------------------
  cd D:\learning-hub

  a) Kuch seekha? TIL me ek line daalo:
       .\_scripts\til.ps1 "Laravel me eager loading N+1 query hatata hai"

  b) Kisi topic ka proper note banana hai?
       .\_scripts\new-note.ps1 -Topic php-laravel -Title "Eloquent Relationships"

  c) Din ke end me sab commit + push:
       PUSH.bat pe double-click   (ya  .\_scripts\sync.ps1)


------------------------------------------------------------
3. RULES
------------------------------------------------------------
  - Koi password, API key, .pem, client data yahan NAHI. Ye repo public bhi
    ho sakta hai. Credentials sirf D:\credentials me.
    (sync.ps1 commit se pehle secret jaisi lines check karta hai.)
  - Notes aur docs .txt me, isi format me (TITLE, ===== , ------ sections).
  - File naam: lowercase-with-dashes (eloquent-relationships.txt).
  - DAILY-15-MIN ke files ka naam dd-MM-yyyy.txt hi rahe (automation isi pe
    chalta hai).
