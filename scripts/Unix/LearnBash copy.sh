#!/bin/bash



echo "Welches Aufgabenblatt? "
read Aufgabenblatt 

InFile="../../Aufgabenblatt_${Aufgabenblatt}/Aufgabenblatt_${Aufgabenblatt}.tex"

mkdir ../../Aufgabenblatt_%Aufgabenblatt%
mkdir ../../Aufgabenblatt_%Aufgabenblatt%/img
mkdir ../../Aufgabenblatt_%Aufgabenblatt%/code
mkdir ../../Aufgabenblatt_%Aufgabenblatt%/inc
mkdir ../../Aufgabenblatt_%Aufgabenblatt%/inc/Aufgaben
mkdir ../../Aufgabenblatt_%Aufgabenblatt%/inc/Lösungen

echo "Wieviele Aufgaben? "
read Aufgaben 

echo "\documentclass{../src/Hausaufgaben}">> ${InFile}

echo -e "\n"
echo "\input{../Defaults}">> ${InFile}
echo -e "\n"
echo "\SetAufgabenblatt{${Aufgabenblatt}}">> ${InFile}
echo -e "\n"
echo "\begin{document}">> ${InFile}
echo "\Titel">> ${InFile}
echo -e "\n"

for i in {1..${Aufgaben}}
do
  echo "%%@@@@@@@%% AUFGABE ${i} %%@@@@@@@%%">> ${InFile}
  echo "\begin{Aufgabe}{}">> ${InFile}
  echo   "\input{inc/Aufgaben/%%i}">> ${InFile}
  echo "\end{Aufgabe}">> ${InFile}
  echo "%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@%%">> ${InFile}
  echo "\begin{Loesung}">> ${InFile}
  echo   "\input{inc/Lösungen/%%i}">> ${InFile}
  echo "\end{Loesung}">> ${InFile}
  echo "%%@@@@@@@@@@@@@@@@@@@@@@@@@@@%%">> ${InFile}
  echo -e "\n"
done