# Dag 3 – Testning i CI

Idag jobbade jag med tester och ville se vad som händer i CI när något går fel.

Jag lade till ett test för division med både positiva och negativa tal. Med `pytest.mark.parametrize` kunde jag testa tre olika fall utan att skriva tre separata testfunktioner.

Först gick alla 8 tester igenom och Ruff hittade inga problem.

Sedan ändrade jag med flit `return a / b` till `return abs(a / b)`. Då försvann minustecknet från resultatet och två av mina nya tester misslyckades.

Lokalt fick jag 2 failed och 6 passed. Ruff godkände fortfarande koden, eftersom själva Python-koden var korrekt skriven.

Jag pushade ändringen och såg samma problem i GitHub Actions. Teststeget misslyckades och Ruff-steget kördes inte.

Till sist ändrade jag tillbaka koden. Då gick alla 8 tester igenom igen och CI blev grön.

## CI-körningar

- [Green – 8 tester godkända (#6)](https://github.com/MohammadRezaHeydari-se/devops25-ci-cd-2026/actions/runs/42224799273)
- [Red – avsiktligt fel (#7)](https://github.com/MohammadRezaHeydari-se/devops25-ci-cd-2026/actions/runs/42225086233)
- [Fix – testerna fungerar igen (#8)](https://github.com/MohammadRezaHeydari-se/devops25-ci-cd-2026/actions/runs/42225662326)

## Vad jag lärde mig

Jag såg att ett program kan klara en kodkontroll men ändå ge fel resultat. Därför räcker det inte med att koden går att bygga.

Mina nya tester fångar fel tecken vid division, men de testar inte hela applikationen eller alla möjliga indata.

Jag tycker att testerna ska köras tidigt i CI. Om något viktigt test misslyckas ska pipelinen stoppa innan vi går vidare till exempelvis Docker-build eller deployment.
