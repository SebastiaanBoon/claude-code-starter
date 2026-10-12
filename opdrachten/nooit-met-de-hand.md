# Opdracht: wat zou je nooit met de hand uitzoeken?

Sommige vragen stel je nooit, omdat het met de hand te veel werk is. Met Claude Code in je repo is
dat vaak een kwestie van minuten. Bedenk er één voor je eigen klant en laat hem uitzoeken.

## Ideeën

- Welke dbt-modellen hebben geen tests, en welke kolommen geen beschrijving?
- Welke tabellen of kolommen worden nergens meer gebruikt?
- Waar wijken de lagen of de naamgeving af van de regels in AGENTS.md?
- Welke modellen gebruiken een bron rechtstreeks in plaats van via de juiste laag?
- Wat is er de afgelopen maand veranderd in de repo, per onderdeel samengevat?
- Welke pipelines of notebooks hebben geen foutafhandeling of logging?
- Welke instellingen verschillen tussen development en productie in de configuratie?

## Zo geef je de opdracht

```text
Zoek uit: <jouw vraag>.
Alleen lezen, start en verander niets. Kijk in de hele repo, niet in een steekproef.
Geef het resultaat als tabel, met per regel het bestand waar je het vond.
```

## Daarna

- Klopt het resultaat? Controleer een paar regels zelf.
- Is dit iets wat je vaker wilt weten? Zeg: "leg vast hoe we dit deden als skill".
