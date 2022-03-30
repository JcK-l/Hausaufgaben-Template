# Hausaufgaben-LaTeX

Dieses Repository ist ein Vorlage-Layout für die Bearbeitung von Hausaufgaben mithilfe von LaTeX.

## Richtige Nutzung

1. Bevor du anfängst, ändere die Zeilen mit dem `<-- Change` so wie du sie brauchst.
2. Kopiere den `template` Ordner für jedes neue Aufgabenblatt.
3. Wechsel in den neu erstellten Ordner.
4. Schreibe die Aufgabenstellung in die `main.tex` Datei.
5. Kopiere die `a0.tex` im `subfiles` Ordner und schreibe dort die Lösung der Aufgaben hinein.
6. Verlinke die `a1.tex`-`an.tex` mit dem main.tex via `\subfile{subfiles/ax.tex}`.
7. Kompiliere die `main.tex` mit `xelatex main.tex` zweimal damit die Seitenzahlen stimmen. Du wirst eine `main.pdf` erhalten.
8. Benenne die `main.pdf` wie du es brauchst und schick sie vor der Deadline deinem Professor.

## Hinzugefügte Befehle

- `\AFG{x}` Ans Layout angepasster Aufgabentitel.
- `\EF` Ans Layout angepasste enumerate Formatierung.
- `\LSG{x}` Ans Layout angepasster Lösungstitel.
- `\QED` quod erat demonstrandum.
- `\SUBLSG[x]{}` Ans Layout angepasster Teillösungstitel.
- `\TITEL` Titelseite.

## Problembehebung

Falls Irgendwas nicht so klappt wie es soll bist **Du** schuld. Kannst ja in die Dateien schauen und versuchen das Problem zu lösen. Oder **Du** fragst das Internet.

## LaTeX Installieren

Benutze die Suchmaschine deiner Wahl und finde es selbst heraus.

Viel Glück wünschen dir Ced und Joshi
