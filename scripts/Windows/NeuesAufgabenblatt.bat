CHCP 65001
@echo off

cls

set /p Aufgabenblatt="Welches Aufgabenblatt? "

set InFile=..\..\Aufgabenblatt_%Aufgabenblatt%\Aufgabenblatt_%Aufgabenblatt%.tex

md ..\..\Aufgabenblatt_%Aufgabenblatt%
md ..\..\Aufgabenblatt_%Aufgabenblatt%\img
md ..\..\Aufgabenblatt_%Aufgabenblatt%\code
md ..\..\Aufgabenblatt_%Aufgabenblatt%\inc
md ..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Aufgaben
md ..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Lösungen

cls

set /p Aufgaben="Wieviele Aufgaben? "

echo \documentclass{../src/Hausaufgaben}>> "%InFile%"
echo.>> "%InFile%"
echo \input{../Defaults}>> "%InFile%"
echo.>> "%InFile%"
echo \SetAufgabenblatt{%Aufgabenblatt%}>> "%InFile%"
echo.>> "%InFile%"
echo \begin{document}>> "%InFile%"
echo \Titel>> "%InFile%"
echo.>> "%InFile%"

for /L %%i in (1,1,%Aufgaben%) do (
  echo %%@@@@@@@%% AUFGABE %%i %%@@@@@@@%%>> "%InFile%"
  echo \begin{Aufgabe}{}>> "%InFile%"
  echo   \input{inc/Aufgaben/%%i}>> "%InFile%"
  echo \end{Aufgabe}>> "%InFile%"
  echo %%@@@@@@@@@@@@@@@@@@@@@@@@@@@%%>> "%InFile%"
  echo \begin{Loesung}>> "%InFile%"
  echo   \input{inc/Lösungen/%%i}>> "%InFile%"
  echo \end{Loesung}>> "%InFile%"
  echo %%@@@@@@@@@@@@@@@@@@@@@@@@@@@%%>> "%InFile%"
  echo.>> "%InFile%"
)
echo \end{document}>> "%InFile%"

cls

setlocal enabledelayedexpansion
for /L %%i in (1,1,!Aufgaben!) do (
  set /p Teilaufgaben="Wieviele Teilaufgaben? "
  echo \Aufgabenstellung%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Aufgaben\%%i.tex"
  echo.>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Aufgaben\%%i.tex"
  echo.>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Aufgaben\%%i.tex"
  echo.>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Aufgaben\%%i.tex"

  echo.>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Lösungen\%%i.tex"
  for /L %%j in (1,1,!Teilaufgaben!) do (

    echo \Teilaufgabe%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Aufgaben\%%i.tex"
    echo.>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Aufgaben\%%i.tex"
    echo.>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Aufgaben\%%i.tex"
    echo.>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Aufgaben\%%i.tex"

    echo \Teilaufgabe%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Lösungen\%%i.tex"
    echo.>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Lösungen\%%i.tex"
    echo.>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Lösungen\%%i.tex"
    echo.>> "..\..\Aufgabenblatt_%Aufgabenblatt%\inc\Lösungen\%%i.tex"
  )
) 
endlocal