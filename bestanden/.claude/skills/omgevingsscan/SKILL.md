---
name: omgevingsscan
description: Maak een omgevingsscan van deze repo als documentatie voor de klant, met regels voor hoe de omgeving eruit moet zien, en lever hem op als pull request.
disable-model-invocation: true
---

# Omgevingsscan

Het doel is dat ik, een collega of een volgende sessie meteen weet hoe het bij deze klant zit, zonder
dat iemand het opnieuw hoeft uit te leggen.

## Grenzen

- Alleen lezen. Start niets, verwijder niets en maak geen verbinding met de klantomgeving.
- Leid alles af uit de bestanden in deze repo. Wat je niet zeker weet, markeer je als "Onbekend,
  navragen" in plaats van het in te vullen.
- Geen wachtwoorden, secrets of klantdata in de documentatie.

## Stappen

1. Maak een branch `docs/omgevingsscan`.
2. Lees de repo door en vul het sjabloon hieronder in als `docs/omgevingsscan.md`.
3. Stel op basis van wat je zag regels voor hoe deze omgeving eruit moet zien (lagen, naamgeving,
   uitrol, rechten). Alleen regels die je in de repo terugziet, geen eigen wensen. Zet ze in
   `AGENTS.md` in de root onder het kopje "Regels voor deze omgeving". Bestaat `AGENTS.md` niet, maak
   hem aan. Dit is een gedeeld bestand voor het hele team en gaat mee in de pull request.
4. Laat mij de documentatie en de regels lezen voordat je iets commit. Ik geef aanvullingen.
5. Na mijn akkoord: commit alleen `docs/omgevingsscan.md` en `AGENTS.md`, push de branch en maak een
   pull request met een korte beschrijving. Lukt het aanmaken van de pull request niet vanuit de
   terminal, geef mij dan de link.
6. Staat er in `CLAUDE.local.md` nog geen regel `@AGENTS.md` en is er geen `CLAUDE.md` in de root,
   zet die regel dan bovenaan `CLAUDE.local.md`, zodat de regels voor deze omgeving voortaan ook
   worden geladen. `CLAUDE.local.md` zelf commit je nooit.

## Sjabloon voor docs/omgevingsscan.md

```markdown
# Omgevingsscan <klant>

Opgesteld met Claude Code op basis van de repo. Gemarkeerd met "Onbekend, navragen" is wat niet uit
de repo af te leiden was.

## Doel
Wat het platform voor de klant doet, in twee of drie zinnen.

## Bronnen
| Bron | Systeem | Hoe het binnenkomt |
|---|---|---|

## Lagen
Welke lagen er zijn (bijvoorbeeld bronze, silver, gold) en wat er per laag gebeurt.

## Transformaties
Waar de modellen staan, welke tool (bijvoorbeeld dbt), hoe tests geregeld zijn.

## Semantische modellen en rapporten
Welke er zijn en op welke tabellen ze draaien.

## Uitrol
Welke omgevingen (development, test, productie), hoe er wordt uitgerold (CI/CD), welke branches.

## Naamgeving
De conventies die je terugziet voor tabellen, kolommen, pipelines en bestanden.

## Rechten en identiteiten
Welke identiteiten of service principals je in de configuratie tegenkomt, zonder secrets.

## Open vragen
Alles wat je als "Onbekend, navragen" hebt gemarkeerd.
```
