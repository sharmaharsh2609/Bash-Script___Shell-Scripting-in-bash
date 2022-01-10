#!/bin/bash

#script to access all elements using single command 

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Method: ${NAME[*]}"		#showing all elements of NAME array
echo "Second Method: ${NAME[@]}"	#showing all elements of NAME array
