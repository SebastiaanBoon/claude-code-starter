# Opdracht: omgevingsscan

Plak deze opdracht in Claude Code, in de root van de repo van de klant.

```text
Maak een omgevingsscan van deze repo. Het doel is dat jij, een collega of een volgende sessie
meteen weet hoe het bij deze klant zit, zonder dat iemand het opnieuw hoeft uit te leggen.

Grenzen:
- Alleen lezen. Start niets, verwijder niets, en maak geen verbinding met de klantomgeving.
- Leid alles af uit de bestanden in deze repo. Wat je niet zeker weet, markeer je als "Onbekend,
  navragen" in plaats van het in te vullen.
- Geen wachtwoorden, secrets of klantdata in de documentatie.

Stappen:
1. Maak een branch docs/omgevingsscan.
2. Lees de repo door en vul het sjabloon hieronder in als docs/omgevingsscan.md.
3. Stel op basis van wat je zag regels voor hoe deze omgeving eruit moet zien (lagen, naamgeving,
   uitrol, rechten) en zet ze in AGENTS.md onder "Deze omgeving". Alleen regels die je in de repo
   terugziet, geen eigen wensen.
4. Laat mij de documentatie en de regels lezen voordat je iets commit. Ik geef aanvullingen.
5. Na mijn akkoord: commit, push de branch en maak een pull request met een korte beschrijving.
   Lukt het aanmaken van de pull request niet vanuit de terminal, geef mij dan de link.

Sjabloon voor docs/omgevingsscan.md:

# Omgevingsscan <klant>

## Doel
Wat het platform voor de klant doet, in twee of drie zinnen.

## Bronnen
Per bron: naam, wat voor systeem, hoe het binnenkomt (pipeline, notebook, shortcut, API).

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

## Na de scan

- Lees de documentatie na alsof je nieuw bent op het project. Mis je iets, zeg het in het gesprek.
- Laat een collega de pull request reviewen.
- Vanaf nu leest elke nieuwe sessie in deze repo de werkregels. Wat je hem daarna nog moet uitleggen,
  hoort er ook in.
