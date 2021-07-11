#! /bin/bash

echo -e "Enter the month for which you want to check list of users logged in:\nEnter\n1 for Jan\n2 for Feb\n3 for Mar\n4 for Apr\n5 for May\n6 for June\n7 for July\n8 for Aug\n9 for Sep\n10 for Oct\n11 for Nov\n12 for Dec "
read month
case $month in
1)
 echo "Enter date:"
 read date
 last | grep Jan |grep $date | awk '{print $1,$5,$6}' ;;		#as implemented in last script, we need to use awk command coz cut won't cut fields with multiple spaces.
2)
 echo "Enter date:"
 read date
 last | awk '$date {print $1,$5,$6}' ;;					#we can even ditch grep command and awk will do it's part also.
3)
 echo "Enter date:"
 read date
 last | grep Mar | awk '$date {print $1,$5,$6}' ;;			#remember to use forward slash before and after the word(eg Jan, Feb etc) for which you want to print the line. without slash it won't work correctly
4)									#but while using some variable in awk command, do not provide forward slash. Coz in that case forward slash would give error
 echo "Enter date:"
 read date
 last | grep Apr | awk '$date {print $1,$5,$6}' ;;			#we can use 'cuts' command or 'tr -s' to aqueeze spaces(here means converting multiple speaces in 1 space) eg last | grep Jun | tr -s | cut -d " " -f 1,5,6 
5)
 echo "Enter date:"
 read date
 last | grep May | awk '$date {print $1,$5,$6}' ;;
6)
 echo "Enter date:"
 read date
 last | grep Jun | awk '$date {print $1,$5,$6}' ;;
7)
 echo "Enter date:"
 read date
 last | grep Jul | awk '$date {print $1,$5,$6}' ;;
8)
 echo "Enter date:"
 read date
 last | grep Aug | awk '$date {print $1,$5,$6}' ;;
9)
 echo "Enter date:"
 read date
 last | grep Sep | awk '$date {print $1,$5,$6}' ;;
10)
 echo "Enter date:"
 read date
 last | grep Oct | awk '$date {print $1,$5,$6}' ;;
11)
 echo "Enter date:"
 read date
 last | grep Nov | awk '$date {print $1,$5,$6}' ;;
12)
 echo "Enter date:"
 read date
 last | grep Dec | awk '$date {print $1,$5,$6}' ;;
*)
 echo "Wrong Choice" ;;
esac
