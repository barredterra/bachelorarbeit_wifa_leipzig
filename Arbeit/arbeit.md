---
professor: Prof. Dr. Max Meister
assistant: Beate Beispiel (M.Sc.)
title: Vorlage zur Erstellung einer Bachelorarbeit mit Markdown und \LaTeX
subtitle: |
  | Bachelorarbeit zur Erlangung des akademischen Grades
  | Bachelor of Science – Wirtschaftsinformatik
author: Muster, Max
place: Leipzig
matnr: 999999
email: mail@example.org
phone: "+49 123 4567890"
address_line1: Musterweg 1
address_line2: 04109 Leipzig
date: \today
# Inhaltsverzeichnis
toc: true
toc-depth: 2 # 1 = ohne subsections, 2 = mit subsections
toc-title: Gliederung
lof: true # Abbildungsverzeichnus
lot: true # Tabellenverzeichnis
# Abkürzungsverzeichnis
loa: true
loa-title: Abkürzungsverzeichnis
numbersections: true
secnumdepth: 3
honesty: true # Eidesstattliche Erklärung
# LaTeX-Befehle im Abstract müssen mit zwei \\ beginnen
abstract: "Das \\ac{iwi} der \\ac{wifa} an der Universität Leipzig verlangt die Einhaltung ausführlicher Vorgaben zur Gestaltung wissenschaftlicher Arbeiten. Eine Vorlage wurde bisher nur für eine veraltete Version von Microsoft Word bereitgestellt. Diese Arbeit stellt eine Vorlage auf Basis von \\LaTeX und \\ac{md} dar. Das Textsatzsystem \\LaTeX ermöglicht ein konsistentes Layout. \\ac{md} besticht mit seiner einfachen Syntax. So können Studenten sich auf die wissenschaftliche Arbeit und das Schreiben konzentrieren statt viel Zeit auf das korrekte Layout zu verwenden.\\newline\\newline Schlüsselwörter: \\textbf{LaTeX}, \\textbf{wissenschaftliche Arbeit}, \\textbf{Universität Leipzig}."
bibliography: ['references.bib']
---

# Einleitung

Das \ac{iwi} der \ac{wifa} an der Universität Leipzig verlangt die Einhaltung ausführlicher Vorgaben zur Gestaltung wissenschaftlicher Arbeiten. Eine Vorlage wurde bisher nur für eine veraltete Version von Microsoft Word bereitgestellt. Diese Arbeit stellt eine Vorlage auf Basis von \LaTeX (vgl. \autoref{sec:latex}) und \ac{md} (vgl. \autoref{sec:markdown}) dar. Das Textsatzsystem \LaTeX ermöglicht ein konsistentes Layout. \ac{md} besticht mit seiner einfachen Syntax. So können Studenten sich auf die wissenschaftliche Arbeit und das Schreiben konzentrieren statt viel Zeit auf das korrekte Layout zu verwenden [@noauthor_informationen_2019 S. 1].

# Technologie-Stack

## Markdown\label{sec:markdown}

Dinge lassen sich einfach auflisten:

1. Erstens

    1. Eins-Punkt-Eins
    2. Eins-Punkt-Zwei

2. Zweitens
3. Drittens

- Unsortierte
- Liste

    1. Mit
    2. sortierten
    3. Unterpunkten

Man kann Text **fett** oder *kursiv* hervorheben.

\autoref{tab:einfache-tabelle} zeigt eine einfache Tabelle. Wichtig ist nur, dass die Spaltenanfänge gleich weit eingerückt sind.

Spalte 1                        Spalte 2
--------------                  ----------------------
Hallo Welt!                     Hallo zurück!

Table: Einfache Tabelle.\label{tab:einfache-tabelle}

\autoref{tab:komplizierte-tabelle} zeigt eine komplizierte Tabelle.

+--------------------------+--------------------------+---------+
| Spalte 1                 | Spalte 2                 | n       | 
+==========================+==========================+=========+
| Hallo Welt!              | Hallo zurück!            | 5       |
+--------------------------+--------------------------+---------+
| Ich bin ein mehrzeil-    | Ich nicht.               | 10      |
| iger Text.               |                          |         |
+--------------------------+--------------------------+---------+
| **Gesamt**               |                          | **15**  |
+--------------------------+--------------------------+---------+

Table: Komplizierte Tabelle\label{tab:komplizierte-tabelle}

![Nutzung von \ac{erp}-Systemen im sächsischen Mittelstand 2013 (n = 203) [in Anlehnung an @leyh_nutzung_2014 Abbildung 1].\label{fig:erp-nutzung}](Grafiken/beispiel.png){short-caption="Nutzung von ERP-Systemen im sächsischen Mittelstand"}

## Pandoc\label{sec:pandoc}


## LaTeX\label{sec:latex}


\enquote{Aufgrund seiner Stabilität, der freien Verfügbarkeit für viele Betriebssysteme und des ausgezeichneten Formelsatzes sowie seiner Features speziell für wissenschaftliche Arbeiten wird LaTeX vor allem an Universitäten und Hochschulen, aber z. T. auch an Gymnasien mit Spezialklassen im Bereich Informatik benutzt. Insbesondere in der Mathematik und den Naturwissenschaften ist LaTeX die Standardanwendung für wissenschaftliche Arbeiten und wird dafür auch von Wissenschaftsverlagen und wissenschaftlichen Zeitschriften verwendet.} [@latex_wikipedia_2020]


Fußnoten sind einfach.\footnote{Ich bin eine Fußnote.}

\textcite[506]{oliveira_assessing_2014} sagt, dass man Quellen auch namentlich zitieren kann.

Wer die größe von Bildern beeinflussen möchte, muss is etwas komplizierter einbinden. `width=0.8\linewidth` bedeutet, dass das Bild 80% der Breite einer Zeile einnehmen soll (die Höhe wird automatisch angepasst).

\begin{figure}
  \centering
  \includegraphics[width=0.8\linewidth]{Grafiken/beispiel.png}
  \caption[{Der Scrum-Prozess}]{Der Scrum-Prozess \autocite{lakeworks_scrum-projektmanagement-methode_2010}}
  \label{fig:scrum}
\end{figure}

Ein Bild kann auch auf die Seite gedreht werden:

\begin{sidewaysfigure}
    \centering
    \includegraphics{Grafiken/beispiel.png}
    \caption{Vorgehensmodell zur Auswahl und Einführung von \acs{erpaas} in \acs{kmu}}
    \label{fig:einführungsmodell}
\end{sidewaysfigure}

Mehr dazu gibt es im Anhang (vgl. Anhang \ref{sec:fragebogen}).

\noindent
Dieser neue Absatz wird nicht eingerückt, da `\noindent` davor steht.

\bigskip
Über diesem Absatz wurde mit `\bigskip` extra viel Platz gelassen.

Hier endet der Hauptteil der Arbeit. Als nächstes kommt das Literaturverzeichnis und der Anhang (siehe `anhang.tex`).
