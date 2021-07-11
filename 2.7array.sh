#! /bin/bash
NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

#or we can define it as follows using single command

ARRAY2=(	#check if there is any other syntax available later on
Zara
Quadir
Mahnaz
Ayan
Daisy
)
echo "Third Index: ${ARRAY2[2]}"
