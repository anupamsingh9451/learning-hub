DAILY 15-MIN – Roz ek nayi cheez
================================
Har din ek nayi file, Hinglish me, 15 minute me padhne layak.
File ka naam = us din ki date:  23-10-2026.txt, 24-10-2026.txt, ...

Ye weekly plan (week-1, week-2 ...) se ALAG hai. Weekly plan = haath se coding.
Ye folder = roz ka "gyaan ka dose" – wo cheezein jo senior developer ko pata
honi chahiye aur interview me poochi jaati hain.


------------------------------------------------------------
ROZ APNE AAP NAYI FILE KAISE BANTI HAI
------------------------------------------------------------
- Windows Task Scheduler me "Daily15Min" naam ka task hai jo ROZ SUBAH 7:00
  baje chalta hai. (Laptop band tha to jab khulega tab chal jaayega.)
- Wo _automation\generate-today.ps1 chalata hai, jo Claude ko bolta hai:
    "neeche AAGE KE TOPICS ki list se pehla topic lo, aaj ki date wali file
     banao, aur topic ko HO CHUKE TOPICS me daal do."
- Queue me 5 se kam topic bache to Claude khud naye topic jod deta hai –
  isliye ye kabhi khatam nahi hota.
- Har run ka record: _automation\log.txt

Haath se chalana ho (e.g. aaj ki file nahi bani):
  powershell -ExecutionPolicy Bypass -File "D:\learning-hub\DAILY-15-MIN\_automation\generate-today.ps1"
Time badalna / band karna:
  Task Scheduler kholo > "Daily15Min" > Properties   (ya Disable/Delete)
  Ya PowerShell:  Unregister-ScheduledTask -TaskName Daily15Min -Confirm:$false

Koi topic padhna hai jo list me nahi? Neeche AAGE KE TOPICS me SABSE UPAR
likh do – agle din wahi aayega.


------------------------------------------------------------
KAISE PADHNA HAI (15 min)
------------------------------------------------------------
  0 – 10 min : Aaj ki file padho (subah chai ke saath, ya office jaate waqt)
 10 – 13 min : "5-min practice" wala chhota kaam (ho sake to)
 13 – 15 min : "Self-check" ke 3 sawal – pehle khud jawab do, phir neeche
               jawab dekho
Ek din chhoot gaya? Koi baat nahi – purani date wali file agle din padh lo.


------------------------------------------------------------
HAR FILE ME KYA HOGA
------------------------------------------------------------
  1. Aaj kyun?        – ye topic tumhare liye kyun zaroori hai
  2. Concept          – aasan bhasha me, misaal ke saath
  3. Example / code   – asli duniya ka
  4. Interview angle  – kaise poochte hain + achha jawab
  5. Aam galatfehmi   – log kahan galti karte hain
  6. 5-min practice   – chhota sa kaam
  7. Self-check       – 3 sawal, jawab file ke end me
  8. Ek line yaad rakho


------------------------------------------------------------
AAGE KE TOPICS (upar wala agle din aayega)
------------------------------------------------------------
Authentication – Session vs Token vs JWT, Laravel Sanctum
SQL JOINs + LEFT JOIN ke jaal
Transactions + ACID (DB::transaction)
Queues & Jobs – kaam ko background me bhejna (Redis)
Caching – Redis, cache-aside, invalidation
Prompt engineering – few-shot, structured output
React re-render + useEffect ke pitfalls
TypeScript – type vs interface, generics
Docker – image, container, volume, compose
Security – SQL injection, XSS, CSRF
RAG deep dive – chunking, retrieval quality
LLM tool use / function calling
Laravel testing – unit vs feature, fakes (Http::fake, Queue::fake)
Big-O notation – aasan bhasha me
Design patterns – Strategy, Repository, Factory
System design basics – load balancer, horizontal scaling
Rate limiting & throttling
Events, Listeners, Observers
Team Git workflow – PR, code review etiquette
AI cost & latency – streaming, prompt caching, token budget
Behavioral interview – STAR method
Offer evaluation + salary negotiation basics


------------------------------------------------------------
HO CHUKE TOPICS (date | topic)
------------------------------------------------------------
23-10-2026 | URL daalne se page aane tak – HTTP ka safar
24-10-2026 | Database Index – query tez kaise hoti hai
25-10-2026 | Laravel Request Lifecycle
26-10-2026 | Git andar se – commit, branch, merge vs rebase
27-10-2026 | N+1 Query Problem + Eager Loading
28-10-2026 | LLM basics – token, context window, temperature
29-10-2026 | Embeddings + Vector Search (pgvector) + RAG
30-10-2026 | REST API design – naming, status codes, versioning, pagination
