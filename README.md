# claude-code-starter

Werkregels en een skill voor Claude Code, die je in de repo van een klant zet zonder dat ze in git
terechtkomen. Claude Code gebruikt ze voortaan bij elke start in die repo, en de klantrepo blijft
schoon.

## Wat er in je klantrepo komt

| Bestand | Wat |
|---|---|
| `CLAUDE.local.md` | Je persoonlijke werkregels, met de verkeersregels erin. Groeit mee: elke correctie die vaker voorkomt, wordt een regel |
| `.claude/skills/omgevingsscan/` | De skill `/omgevingsscan`: documenteert hoe de omgeving eruitziet en levert dat op als pull request |
| `.claude/skills/loop/` | De skill `/loop`: leest of bewerkt een Microsoft Loop-pagina via een browser waarin je bent ingelogd |

Beide komen in `.git/info/exclude`. Dat is een lokaal ignore-bestand van git: het wordt zelf niet
gedeeld en verandert niets aan de `.gitignore` van de klant.

Claude Code laadt `CLAUDE.local.md` automatisch bij elke start, naast de `CLAUDE.md` van het team.
Een skill in `.claude/skills/` start je met `/naam`. Zie de documentatie van Claude Code over
[CLAUDE.local.md](https://code.claude.com/docs/en/memory) en [skills](https://code.claude.com/docs/en/skills).

## Wat je typt in Claude Code

Open VS Code in de map van een klantrepo en start Claude Code in de terminal. Daarna:

1. Typ:

   ```text
   Zet github.com/SebastiaanBoon/claude-code-starter in deze repo. Clone hem naast deze repo als hij er
   nog niet staat, en draai install.ps1 met deze repo als doel.
   ```

   Claude Code vraagt akkoord voor de commando's. Kijk mee wat hij doet.
2. Sluit Claude Code en start hem opnieuw in dezelfde map. Bij het starten leest hij je werkregels.
3. Typ `/omgevingsscan`. Hij leest de repo, laat je het resultaat zien en wacht op jouw controle.
4. Na het nalezen en aanvullen: "Klopt, maak de branch en de pull request."

Onderweg, de rest van de week:

- Stuur je hem bij op iets wat vaker voorkomt: "Zet dit in mijn werkregels."
- Werkte een klus goed en ga je hem vaker doen: "Leg vast wat we net deden als skill."

## Zonder Claude Code installeren

Clone deze repo één keer, ga in PowerShell naar de map van je klantrepo en draai:

```powershell
& <pad naar claude-code-starter>\install.ps1
```

Opnieuw draaien kan altijd: de skill wordt bijgewerkt, je eigen `CLAUDE.local.md` blijft staan.

## Wat wel in git komt

De omgevingsscan zelf. `/omgevingsscan` schrijft `docs/omgevingsscan.md` en zet regels voor hoe de
omgeving eruit moet zien in `AGENTS.md`, het gedeelde bestand voor het hele team. Die twee gaan na
jouw akkoord mee in een pull request, zodat een collega ze reviewt.

Heeft de repo een `AGENTS.md` en geen `CLAUDE.md`, dan zet de installer `@AGENTS.md` bovenaan je
`CLAUDE.local.md`. Zonder die regel leest Claude Code `AGENTS.md` niet meer zodra er een
`CLAUDE.local.md` is.

## Daarna

- Corrigeer je Claude Code op iets wat vaker voorkomt, zeg dan: "zet dit in mijn werkregels". Zo
  groeit `CLAUDE.local.md` mee.
- Doe je een klus voor de tweede keer en ging het goed? Zeg: "leg vast wat we net deden als skill".
  Een skill bouw je niet vooraf, die groeit uit je werk.
- Zet nooit wachtwoorden, secrets of klantdata in deze bestanden.
