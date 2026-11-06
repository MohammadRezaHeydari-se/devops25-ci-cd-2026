# Dag 2 – Continuous Integration

Under dag 2 jobbade jag med GitHub Actions och lärde mig hur tester och kodkontroller körs automatiskt när jag pushar kod.

I det nya kursrepot kör CI både Pytest och Ruff. Alla 5 tester gick igenom.

Jag gjorde också en praktisk övning i mitt tidigare repo där jag skapade ett fel, undersökte testloggarna och rättade felet.

Där byggdes även en Docker-image efter att testerna hade lyckats. Den nya workflowen innehåller däremot inget Docker-jobb ännu.

## Dokumentation från dag 2

- [CI i det nya kursrepot](docs/day02-ci/report.md)
- [Min ursprungliga CI-rapport](docs/day02-ci/report-original.md)
- [Praktisk övning med fel, rättning och Docker-build](docs/day02-practical/report.md)

## Skärmbilder

- [Ruff och tester godkända](docs/day02-practical/screenshots/01-ci-lint-success.png)
- [Docker-build lyckades](docs/day02-practical/screenshots/02-ci-docker-build-success.png)
- [Tester misslyckades](docs/day02-practical/screenshots/03-ci-test-failure.png)
- [CI lyckades efter rättning](docs/day02-practical/screenshots/04-ci-fixed-success.png)
