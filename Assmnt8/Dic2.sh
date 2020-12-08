#!/usr/bin/bash 

declare -A monthDict
declare -A bMonthsIn92
declare -A bMonthsIn93

Count=0

function birthMonthCounter ()
{

	year=$1

	month=$2


	monthDict[$month]=$(( ${monthDict[$month]} + 1 ))

	if [ $year -eq 92 ]
	then
		bMonthsIn92[$month]=$(( ${bMonthsIn92[$month]} + 1 ))
	else
		bMonthsIn93[$month]=$(( ${bMonthsIn93[$month]} + 1 ))
	fi

}


while [ $Count -lt 50 ]
do

	randomMonth=$(( RANDOM%24 + 1 ))

	if [ $randomMonth -le 12 ]
	then
		birthMonth=`date -d 1992-"$randomMonth"-1 "+%y %b"`
	else
		monthIn93=$(( $randomMonth - 12 ))
		birthMonth=`date -d 1993-"$monthIn93"-1 "+%y %b"`
	fi

	case $birthMonth in
		"92 Feb" | "93 Feb") birthMonthCounter $birthMonth ;;
		"92 Mar" | "93 Mar") birthMonthCounter $birthMonth ;;
		"92 Apr" | "93 Apr") birthMonthCounter $birthMonth ;;
		"92 May" | "93 May") birthMonthCounter $birthMonth ;;
		"92 Jun" | "93 Jun") birthMonthCounter $birthMonth ;;
		"92 Jul" | "93 Jul") birthMonthCounter $birthMonth ;;
		"92 Aug" | "93 Aug") birthMonthCounter $birthMonth ;;
		"92 Sep" | "93 Sep") birthMonthCounter $birthMonth ;;
		"92 Oct" | "93 Oct") birthMonthCounter $birthMonth ;;
		"92 Nov" | "93 Nov") birthMonthCounter $birthMonth ;;
		"92 Dec" | "93 Dec") birthMonthCounter $birthMonth ;;
		"92 Jan" | "93 Jan") birthMonthCounter $birthMonth ;;
		*) echo "Error Occured"  ;;
	esac
Count=$(( $Count + 1 ))
done


for key in ${!monthDict[@]}
do
	echo "Total No. of Employee Born in  $key  1992  ${bMonthsIn92[$key]}  and  $key  1993  ${bMonthsIn93[$key]}  Total Birthday in Same Months ${monthDict[$key]}"

done

