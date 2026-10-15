---
name: loop
description: Lees of bewerk een Microsoft Loop-pagina (loop.cloud.microsoft) via een browser waarin de gebruiker is ingelogd, bijvoorbeeld om feedback te verwerken of een pagina aan te vullen.
disable-model-invocation: true
---

# Loop-pagina lezen en bewerken

Gebruik dit als je een loop.cloud.microsoft-link krijgt en de vraag is om de pagina te lezen, aan te vullen
of feedback erop te verwerken.

## Grenzen

- Werk alleen in de browser waarin de gebruiker zelf is ingelogd. Vul nooit een wachtwoord in. Bij
  "Stay signed in?" kies je No.
- Haal geen bestaande tekst weg. Pas een regel alleen aan als die de nieuwe afspraak tegenspreekt.
- Verander alleen wat gevraagd is.

## Stap 1. Toegang

- De Microsoft 365-koppeling en Graph geven Access denied op Loop-werkruimtes, want die staan in aparte
  opslag. Probeer die route niet.
- Gebruik een browser waarin de gebruiker is ingelogd: Claude in Chrome als die verbonden is, anders de
  ingebouwde browser. Open de Loop-link. Moet er ingelogd worden, dan doet de gebruiker dat zelf.

## Stap 2. Lezen

- Loop rendert de pagina niet in een keer, dus het ophalen van de paginatekst geeft maar een deel. Lees de
  volledige tekst met JavaScript over de tekstnodes van het artikel:
  `document.createTreeWalker(document.querySelector('article'), NodeFilter.SHOW_TEXT)`.
- Spring naar een plek door op een stukje tekst te zoeken en daarheen te scrollen.
- Kijk in de navigatie links of de pagina subpagina's heeft (pijltje uitklappen). Feedback op een
  hoofdpagina raakt vaak ook de subpagina's.

## Stap 3. Bewerken

- **Nieuwe alinea:** klik aan het eind van de alinea erboven, toets `End` en dan `Return`, en typ.
- **Vet label** zoals "Doel.": `ctrl+b`, label typen, `ctrl+b`, rest typen.
- **Opsomming:** begin een regel met `- `. Twee keer `Return` sluit de lijst af.
- **Tabelcel vervangen:** driemaal klikken op de celtekst selecteert de hele cel, daarna typen. Met
  `Escape` verlaat je de cel.
- **Tabelrij toevoegen:** klik op "Nieuw" onder de tabel.
- Loop slaat automatisch op. Controleer na elke stap met een screenshot.

## Stap 4. Controleren en melden

- Lees aan het eind de hele pagina opnieuw met de TreeWalker uit stap 2 en controleer dat alle
  wijzigingen er staan.
- Sluit aan bij de opbouw en toon die er al staan, zoals vaste kopjes of tabellen.
- Meld per pagina wat er is aangepast.
