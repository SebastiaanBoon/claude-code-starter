# claude-code-starter

Startpunt om met Claude Code te werken in de repo van een klant. Je kopieert twee bestanden met
werkregels naar je klantrepo, geeft Claude Code de opdracht voor een omgevingsscan, en levert het
resultaat op als pull request. Daarna weet elke nieuwe sessie hoe het bij deze klant zit, en hoef je
dat niet steeds opnieuw uit te leggen.

## Wat zit erin

| Bestand | Wat |
|---|---|
| [AGENTS.md](AGENTS.md) | Werkregels die AI-assistenten in een map lezen. Kopieer naar de root van je klantrepo en laat ze meegroeien |
| [CLAUDE.md](CLAUDE.md) | Eén regel die Claude Code naar AGENTS.md laat kijken. Kopieer mee |
| [opdrachten/omgevingsscan.md](opdrachten/omgevingsscan.md) | De opdracht voor de eerste omgevingsscan van een klant |
| [opdrachten/nooit-met-de-hand.md](opdrachten/nooit-met-de-hand.md) | Ideeën voor uitzoekwerk dat je met de hand nooit zou doen |
| [sjablonen/omgevingsscan.md](sjablonen/omgevingsscan.md) | Hoe de documentatie van de scan eruitziet |

## Zo begin je

1. Open de repo van een klant waar je nu aan werkt in VS Code en start Claude Code.
2. Kopieer `AGENTS.md` en `CLAUDE.md` uit deze repo naar de root van de klantrepo. Staat er al een
   AGENTS.md of CLAUDE.md, voeg de regels dan toe in plaats van te overschrijven.
3. Geef Claude Code de opdracht uit [opdrachten/omgevingsscan.md](opdrachten/omgevingsscan.md). Plak
   hem in zijn geheel, of zeg: "Lees opdrachten/omgevingsscan.md uit claude-code-starter en voer hem uit".
4. Lees het resultaat na. Wat niet klopt, zeg je in het gesprek. Wat hij niet kon weten, vul je zelf aan.
5. Laat hem een branch en een pull request maken. Een collega reviewt, net als bij code.

## Daarna

- Corrigeer je Claude Code op iets wat vaker voorkomt, zeg dan: "zet dit in de werkregels". Zo groeit
  AGENTS.md mee en werkt hij na een paar weken zoals jij werkt.
- Doe je een klus voor de tweede keer en ging het goed? Zeg: "leg vast wat we net deden als skill".
  Een skill bouw je niet vooraf, die groeit uit je werk.
- Zet nooit wachtwoorden, secrets of klantdata in deze bestanden.
