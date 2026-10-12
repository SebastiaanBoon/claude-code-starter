# claude-code-starter

Werkregels en twee skills voor Claude Code, die je in de repo van een klant zet zonder dat ze in git
terechtkomen. Claude Code gebruikt ze voortaan bij elke start in die repo, en de klantrepo blijft
schoon.

## Wat er in je klantrepo komt

| Bestand | Wat |
|---|---|
| `CLAUDE.local.md` | Je persoonlijke werkregels, met de verkeersregels erin. Groeit mee: elke correctie die vaker voorkomt, wordt een regel |
| `.claude/skills/omgevingsscan/` | De skill `/omgevingsscan`: documenteert hoe de omgeving eruitziet en levert dat op als pull request |
| `.claude/skills/nooit-met-de-hand/` | De skill `/nooit-met-de-hand`: zoekt iets uit in de hele repo wat met de hand te veel werk is |

Alle drie komen in `.git/info/exclude`. Dat is een lokaal ignore-bestand van git: het wordt zelf niet
gedeeld en verandert niets aan de `.gitignore` van de klant.

Claude Code laadt `CLAUDE.local.md` automatisch bij elke start, naast de `CLAUDE.md` van het team.
Skills in `.claude/skills/` start je met `/naam`. Zie de documentatie van Claude Code over
[CLAUDE.local.md](https://code.claude.com/docs/en/memory) en [skills](https://code.claude.com/docs/en/skills).

## Installeren

1. Clone deze repo één keer naar je laptop.
2. Ga in PowerShell naar de map van je klantrepo en draai:

   ```powershell
   & <pad naar claude-code-starter>\install.ps1
   ```

   Of vraag het Claude Code: "Installeer claude-code-starter in deze repo met install.ps1 uit
   `<pad naar claude-code-starter>`."
3. Start Claude Code in de klantrepo. Je werkregels zijn er meteen.

Opnieuw draaien kan altijd: de skills worden bijgewerkt, je eigen `CLAUDE.local.md` blijft staan.

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
