---
name: nooit-met-de-hand
description: Zoek iets uit in de hele repo wat met de hand te veel werk zou zijn, alleen lezend, en geef het resultaat als tabel.
disable-model-invocation: true
---

# Nooit met de hand

Ik geef je een vraag die ik met de hand nooit zou uitzoeken, omdat het te veel werk is. Staat de
vraag niet bij de opdracht, vraag hem dan eerst, en noem een paar ideeën uit de lijst hieronder.

## Grenzen

- Alleen lezen. Start, verander en verwijder niets.
- Kijk in de hele repo, niet in een steekproef.
- Geef het resultaat als tabel, met per regel het bestand waar je het vond.
- Noem wat je niet kon controleren.

## Ideeën

- Welke dbt-modellen hebben geen tests, en welke kolommen geen beschrijving?
- Welke tabellen of kolommen worden nergens meer gebruikt?
- Waar wijken de lagen of de naamgeving af van de regels in AGENTS.md?
- Welke modellen gebruiken een bron rechtstreeks in plaats van via de juiste laag?
- Wat is er de afgelopen maand veranderd in de repo, per onderdeel samengevat?
- Welke pipelines of notebooks hebben geen foutafhandeling of logging?
- Welke instellingen verschillen tussen development en productie in de configuratie?

## Daarna

Vraag of dit iets is wat ik vaker wil weten. Zo ja, stel dan voor om de werkwijze vast te leggen als
eigen skill in `.claude/skills/`.
