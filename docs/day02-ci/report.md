# Dag 2 – Continuous Integration

## Syfte

Jag ville förstå hur GitHub Actions fungerar och hur automatiska tester hjälper oss att upptäcka fel tidigt.

## CI-workflow

Jag gick igenom `.github/workflows/ci.yml` i kursens nya repository.

Workflowen startar vid push till main eller demo-brancher och vid pull requests mot main.

Den använder en GitHub-hosted runner med Ubuntu och Python 3.12.

Jobbet `test-and-lint` installerar beroenden och kör Pytest och Ruff.

## Resultat

Efter att jag aktiverade GitHub Actions i min fork gjorde jag en tom commit för att starta pipelinen.

Körningen lyckades:

- Pytest: 5 tester godkända.
- Ruff: All checks passed.
- Python: 3.12.16.
- En varning från Starlette, men inga misslyckade tester.

Körning:
https://github.com/MohammadRezaHeydari-se/devops25-ci-cd-2026/actions/runs/42048450311

## Tidigare praktisk övning

I mitt tidigare repository testade jag också ett avsiktligt kodfel.

Ruff godkände koden, men Pytest upptäckte det felaktiga resultatet. Efter att jag rättade felet lyckades testerna igen.

Det tidigare repositoryt innehåller även en lyckad Docker-build. Den nya CI-workflowen har däremot inget Docker-jobb.

Praktisk rapport:
https://github.com/MohammadRezaHeydari-se/devops25-ci-cd-demo/blob/exercise/day02-practical-MReza/docs/day02-practical/report.md

## Reflektion

CI hjälper oss att upptäcka integrationsproblem tidigt och ger snabb feedback.

Ruff kontrollerar kodkvalitet och statiska fel, medan Pytest kontrollerar programmets beteende.

En lyckad pipeline betyder inte att programmet är helt felfritt. Om ett viktigt test saknas kan ett fel fortfarande passera.

Jag har lärt mig att kontrollera loggarna och inte bara titta på om pipelinen är grön eller röd.
