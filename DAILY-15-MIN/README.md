# Daily 15-Min — Roz Ek Nayi Cheez

Har din ek nayi file, Hinglish me, **15 minute me padhne layak**.
File ka naam = us din ki date: `23-10-2026.txt`, `24-10-2026.txt`, ...

> **Ye `WEEKLY-PLAN/` se ALAG hai.** Weekly plan = haath se coding practice.
> Ye folder = roz ka "gyaan ka dose" — wo cheezein jo senior developer ko pata honi chahiye aur interview me poochi jaati hain.

---

## Auto-Generation — Kaise Kaam Karta Hai

- **Windows Task Scheduler** me `Daily15Min` task hai — **ROZ SUBAH 7:00 baje** chalta hai.
  (Laptop band tha to jab khulega tab chal jaayega.)
- `_automation\generate-today.ps1` run hota hai — AI ko bolta hai:
  _"AAGE KE TOPICS se pehla topic lo, aaj ki date wali file banao, topic ko HO CHUKE TOPICS me daalo."_
- Queue me 5 se kam topics bache to AI khud naye topics jod deta hai — **kabhi khatam nahi hota.**
- Har run ka log: `_automation\log.txt`

### Haath Se Chalana (agar aaj ki file nahi bani)

```powershell
powershell -ExecutionPolicy Bypass -File "D:\learning-hub\DAILY-15-MIN\_automation\generate-today.ps1"
```

### Task Scheduler Manage Karna

```powershell
# Time change karna: Task Scheduler > Daily15Min > Properties
# Band karna:
Unregister-ScheduledTask -TaskName Daily15Min -Confirm:$false
```

### Custom Topic Priority Dena

`AAGE KE TOPICS` list me **sabse upar** likh do — agle din wahi aayega.

---

## Kaise Padhna Hai (15 min)

| Time | Kaam |
|---|---|
| 0 – 10 min | Aaj ki file padho (subah chai ke saath, ya office jaate waqt) |
| 10 – 13 min | "5-min practice" wala chhota kaam (ho sake to) |
| 13 – 15 min | "Self-check" ke 3 sawal — pehle khud jawab do, phir neeche dekho |

> Ek din chhoot gaya? Koi baat nahi — purani date wali file agle din padh lo.

---

## Har File Ka Structure

1. **Aaj kyun?** — ye topic tumhare liye kyun zaroori hai
2. **Concept** — aasan bhasha me, misaal ke saath
3. **Example / code** — asli duniya ka
4. **Interview angle** — kaise poochte hain + achha jawab ka dhaancha
5. **Aam galatfehmi** — log kahan galti karte hain
6. **5-min practice** — chhota sa haath ka kaam
7. **Self-check** — 3 sawal, jawab file ke end me
8. **Ek line yaad rakho**

---

## Aage Ke Topics

> Upar wala topic agle din auto-generate hoga.

- Authentication — Session vs Token vs JWT, Laravel Sanctum
- SQL JOINs + LEFT JOIN ke jaal
- Transactions + ACID (`DB::transaction`)
- Queues & Jobs — kaam ko background me bhejna (Redis)
- Caching — Redis, cache-aside, invalidation
- Prompt engineering — few-shot, structured output
- React re-render + `useEffect` ke pitfalls
- TypeScript — `type` vs `interface`, generics
- Docker — image, container, volume, compose
- Security — SQL injection, XSS, CSRF
- RAG deep dive — chunking, retrieval quality
- LLM tool use / function calling
- Laravel testing — unit vs feature, fakes (`Http::fake`, `Queue::fake`)
- Big-O notation — aasan bhasha me
- Design patterns — Strategy, Repository, Factory
- System design basics — load balancer, horizontal scaling
- Rate limiting & throttling
- Events, Listeners, Observers
- Team Git workflow — PR, code review etiquette
- AI cost & latency — streaming, prompt caching, token budget
- Behavioral interview — STAR method
- Offer evaluation + salary negotiation basics

---

## Ho Chuke Topics

| Date | Topic |
|---|---|
| 23-10-2026 | URL daalne se page aane tak — HTTP ka safar |
| 24-10-2026 | Database Index — query tez kaise hoti hai |
| 25-10-2026 | Laravel Request Lifecycle |
| 26-10-2026 | Git andar se — commit, branch, merge vs rebase |
| 27-10-2026 | N+1 Query Problem + Eager Loading |
| 28-10-2026 | LLM basics — token, context window, temperature |
| 29-10-2026 | Embeddings + Vector Search (pgvector) + RAG |
| 30-10-2026 | REST API design — naming, status codes, versioning, pagination |
