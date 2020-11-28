# Ordnerstruktur

```
iwi.tex
Makefile
README.md
references.bib
short-captions.lua

Arbeit/
  acronyms.tex
  anhang.tex
  arbeit.md
  arbeit.pdf

Grafiken/
  *.png

.vscode/
  extensions.json
  settings.json
  spellright.dict
```

# Zitieren

Pandoc in Markdown

```md
[vgl. @siegel_cloud_2012 S. 33-35; @smith04 Kap. 1].
```
> (vgl. Siegel 2012, S. 33-35; Smith 2004, Kap. 1)

---

Biblatex in Markdown

```tex
\textcite[8]{siegel_cloud_2012} behauptet ...
```

> Siegel (2012, S. 8) behauptet ...

# Render PDF

In der Pandoc-Vorlage `iwi.tex` sind die Stilvorgaben des Intituts für Wirtschaftsinformatik der Uni Leipzig eingestellt.

```bash
# markdown to latex
pandoc -s -o output.latex --biblatex \
  --lua-filter short-captions.lua \
  --template iwi.tex \
  --top-level-division=chapter \
  Arbeit/arbeit.md
# latex to pdf
latexmk -pdf output.latex
# clean up
cp output.pdf Arbeit/arbeit.pdf
rm output.*
```

Oder einfach:

```bash
# Befehle aus der `Makefile` ausführen
make
```

https://tex.stackexchange.com/questions/272470/pandoc-apa-latex

# Metadaten

Schlüssel          | Erklärung                | Typ
-----------        | -------------            | -------
`professor`        | Betreuer                 | str
`assistant`        | Betreuer                 | str
`title`            | Titel der Arbeit         | str
`subtitle`         | Untertitel               | str
`author`           | Autor                    | str
`matnr`            | Matrikelnummer           | str
`email`            |                          | str
`phone`            |                          | str
`address`          |                          | str
`date`             | Abgabedatum              | str
`toc`              | Inhaltsverzeichnis       | bool
`lof`              | Abbildungsverzechnis     | bool
`lot`              | Tabellenverzeichnis      | bool
`honesty`          | Ehrenwörtliche Erklärung | bool
`independence`     | Selbständigkeitserklärung| bool
`abstract`         | Abstract                 | str
`bibliography`     | Literaturdatenbank       | str

# Tabellen und Abbildungen

```markdown
# Tabellen

Klassischerweise wurden ERP-Systeme nur in-house betrieben. Neu ist der Betrieb durch Dienstleister in der Cloud (siehe Tabelle \ref{betreiber_betriebsort}).

Betreiber / Betriebsort   In-House   Cloud
------------------------  ---------  ----------
Anwender
Hersteller
Dienstleister                           x

Table: Matrix: Betreiber - Betriebsort \label{betreiber_betriebsort}

# Abbildungen

Die Wertschöpfungskette von SaaS reicht vom Rechenzentrum bis zum Anwender (siehe Abbildung \ref{wertsch_saas}).

![Wertschöpfungskette SaaS [in Anlehnung an @brehm_erp-kmu-dilemma_2008, S. 48-49]\label{wertsch_saas}](Grafiken/wertschoepfungskette.png){short-caption="Wertschöpfungskette SaaS"}
```

Die [short caption](https://github.com/pandoc/lua-filters/tree/master/short-captions) erscheint im Abbildungsverzeichnis. Der lange Untertitel mit Referenz erscheint direkt unter der Abbildung.

# Fehler

> LaTeX Error: Command \apashortdash undefined.

In /usr/share/texlive/texmf-dist/tex/latex/biblatex-apa/german-apa.lbx Zeile 150 auskommentieren.

```
%\renewcommand{\apashortdash}{~}%
```

# Cheatsheet: Abkürzungen mit `acronym`

Eingabe       | Ausgabe
---------     | ------------
\ac{ecu}      | European currency unit (ECU)
\acf{ecu}     | European currency unit (ECU)
\acs{ecu}     | ECU
\acl{ecu}     | European currency unit
\acp{ecu}     | ECUs
\acfp{ecu}    | European currency units (ECUs)
\acsp{ecu}    | ECUs
\aclp{ecu}    | European currency units
\acfi{ecu}    | European currency unit (ECU)
\iac{ecu}     | a ECU
\Iac{ecu}     | A ECU
\acused{ecu}	| 
\acsu{ecu}    | ECU
\aclu{ecu}    | European currency unit
