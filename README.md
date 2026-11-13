# Dag 4 – Docker och automatiserade byggen

Idag har jag jobbat med Docker och lärt mig hur man bygger en image från en Dockerfile och sedan kör den som en container.

## Det jag gjorde

Jag skapade en Dockerfile med Python 3.12-slim och installerade applikationens beroenden.

Sedan byggde jag en Docker-image med namnet `devops25-cicd-demo:local` och startade en container.

Jag testade API:et och fick rätt svar från både `/health` och `/add?a=2&b=3`.

Eftersom port 8000 redan användes på min dator körde jag containern via port 8001 istället.

Efter testet stoppade jag containern. Den togs bort med `--rm`, men imagen fanns kvar.

## Docker i GitHub Actions

Jag lade till jobbet `docker-build` i CI-workflowen.

Med `needs: test-and-lint` körs Docker-bygget först när testerna och Ruff har godkänts.

Jag pushade ändringarna till min branch och kontrollerade att båda jobben blev gröna i GitHub Actions.

## Vad jag lärde mig

En Dockerfile beskriver hur en image ska byggas. En image innehåller applikationen och dess beroenden, medan en container är en körande instans av imagen.

Docker kan återanvända tidigare bygglager, vilket gör att nästa bygge ofta går snabbare.

Jag förstår också bättre varför vi testar koden innan vi bygger imagen och hur en commit-baserad tagg hjälper oss att spåra vilken kod som användes.

I den här övningen byggde vi imagen lokalt och i CI, men publicerade den inte till något registry.
