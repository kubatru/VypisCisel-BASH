#!/bin/bash

# CHYTRY VYPIS CISEL pro BASH (LISTING OF NUMBERS)
# Jakub Truhlar ©2014
# -------------------
# Parametry museji byt cisla
# Je-li zadano jedno cislo, vypisi se vsechna cisla od 1 do zadaneho.
# Jsou-li zadana dve cisla, vypisi se cisla od zadaneho do zadaneho.
# Jsou-li zadana tri cisla, treti urcuje skok.

read -p "Enter 1/2/3 parameters: (e.q. 1 10 2 or 2 20): " VAR1 VAR2 VAR3
VAR1=$VAR1
VAR2=${VAR2:-1}
VAR3=${VAR3:-1}

if echo $VAR1 | grep -q -v -E "[0-9]"; then
echo "First parameter must be a number!/Prvni parametr musi byt cislo!" 
elif echo $VAR2 | grep -q -v -E "[0-9]"; then
echo "Second parameter must be a number!/Druhy parametr musi byt cislo!"
elif echo $VAR3 | grep -q -v -E "[0-9]"; then
echo "Third parameter must be a number!/Treti parametr musi byt cislo!"
else

if (($VAR2 > $VAR1)); then
for ((i=$VAR1; $i<=$VAR2; i+=$VAR3))
do
echo $i
done;
else 
for ((i=$VAR2; $i<=$VAR1; i+=$VAR3))
do 
echo $i
done;
fi

fi
