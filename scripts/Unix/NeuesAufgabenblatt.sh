#!/bin/bash

read -p "Welches Aufgabenblatt? " Aufgabenblatt 

InFile="../../Aufgabenblatt_${Aufgabenblatt}/Aufgabenblatt_${Aufgabenblatt}.tex"

mkdir ../../Aufgabenblatt_${Aufgabenblatt}
mkdir ../../Aufgabenblatt_${Aufgabenblatt}/img
mkdir ../../Aufgabenblatt_${Aufgabenblatt}/code
mkdir ../../Aufgabenblatt_${Aufgabenblatt}/inc
mkdir ../../Aufgabenblatt_${Aufgabenblatt}/inc/Aufgaben
mkdir ../../Aufgabenblatt_${Aufgabenblatt}/inc/Lösungen

read -p "Wieviele Aufgaben? " Aufgaben 

echo "\documentclass{../src/misc/Hausaufgaben}">> ${InFile}

echo >> ${InFile}
echo "\input{../Defaults}">> ${InFile}
echo >> ${InFile}
echo "\SetAufgabenblatt{${Aufgabenblatt}}">> ${InFile}
echo >> ${InFile}
echo "\begin{document}">> ${InFile}
echo "\Titel">> ${InFile}
echo >> ${InFile}

for ((i=1;i<=Aufgaben;i++));
do
  echo "%@@@@@@@% AUFGABE ${i} %@@@@@@@%">> ${InFile}
  echo "\begin{Aufgabe}{}">> ${InFile}
  echo "  \input{inc/Aufgaben/${i}}">> ${InFile}
  echo "\end{Aufgabe}">> ${InFile}
  echo "%@@@@@@@@@@@@@@@@@@@@@@@@@@@%">> ${InFile}
  echo "\begin{Loesung}">> ${InFile}
  echo "  \input{inc/Lösungen/${i}}">> ${InFile}
  echo "\end{Loesung}">> ${InFile}
  echo "%@@@@@@@@@@@@@@@@@@@@@@@@@@@%">> ${InFile}
  echo >> ${InFile}
done

echo "\end{document}">> ${InFile}

for ((i=1;i<=Aufgaben;i++)); 
do 
  read -p "Wieviele Teilaufgaben? " Teilaufgaben 
  echo "\Aufgabenstellung%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@">> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Aufgaben/${i}.tex"
  echo >> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Aufgaben/${i}.tex"
  echo >> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Aufgaben/${i}.tex"
  echo >> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Aufgaben/${i}.tex"

  echo >> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Lösungen/${i}.tex"
  for ((j=1;j<=Teilaufgaben;j++));
  do 
    echo "\Teilaufgabe%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@">> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Aufgaben/${i}.tex"
    echo >> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Aufgaben/${i}.tex"
    echo >> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Aufgaben/${i}.tex"
    echo >> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Aufgaben/${i}.tex"

    echo "\Teilaufgabe%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@">> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Lösungen/${i}.tex"
    echo >> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Lösungen/${i}.tex"
    echo >> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Lösungen/${i}.tex"
    echo >> "../../Aufgabenblatt_${Aufgabenblatt}/inc/Lösungen/${i}.tex"
  done
done 