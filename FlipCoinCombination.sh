
#! /bin/bash -x

declare -A Singlet

maxthrows=4
count=0

while [[ $count -lt $maxthrows ]]
do
	result=$(($RANDOM%2))
if [[ $result == 0 ]]
then
	((heads++))
	Singlet[$count]="Heads"
	Total_no_of_heads=$heads
else
	((tails++))
	Singlet[$count]="Tails"
	Total_no_of_tails=$tails
fi
	count=$((count+1))
done
echo  ${Singlet[@]} 
declare -A percent
valueofheads=`echo "$Total_no_of_heads*100" | bc`
percentofheads=$((valueofheads/maxthrows))
echo $percentofheads
percent[H]=$percentofheads

valueoftails=`echo "$Total_no_of_tails*100" | bc`
percentoftails=$((valueoftails/maxthrows))
echo $percentoftails
percent[T]=$percentoftails
mysort(){
    printf '%s\n' "$@" | sort -r
}

mysort "${percent[@]}"
echo ${!percent[0]} 
counter=0
while [[ $counter -lt $maxthrows ]]
do
	result1=$(($RANDOM%2))
	result2=$(($RANDOM%2))

	if [[ $result1 == 0 ]] && [[ $result2 == 0 ]]
	then
	arr[counter++]="HH"
	((valueofHH++))
	elif [[ $result1 == 0 ]] && [[ $result2 == 1 ]]
	then
	arr[counter++]="HT"
	((valueofHT++))
	elif [[ $result1 == 1 ]] && [[ $result2 == 0 ]]
	then
	arr[counter++]="TH"
	((valueofTH++))
	elif [[ $result1 == 1 ]] && [[ $result2 == 1 ]]
	then
	arr[counter++]="TT"
	((valueofTT++))
	fi 
	
done
echo ${arr[@]}
declare -A percentdoublet
v1=$((valueofHH*100))
percentofHH=$((v1/maxthrows))
echo $percentofHH
percentdoublet[HH]=$percentofHH

v2=$((valueofHT*100))
percentofHT=$((v2/maxthrows))
echo $percentofHT
percentdoublet[HT]=$percentofHT

v3=$((valueofTH*100))
percentofTH=$((v3/maxthrows))
echo $percentofTH
percentdoublet[TH]=$percentofTH

v4=$((valueofTT*100))
percentofTT=$((V4/maxthrows))
echo $percentofTT
percentdoublet[TT]=$percentofTT

mysort(){
    printf '%s\n' "$@" | sort -r
}

mysort "${percentdoublet[@]}"
echo "winning combination" ${!percentdoublet[0]}

i=0
while [[ $i -lt $maxthrows ]]
do
	result1=$(($RANDOM%2))
	result2=$(($RANDOM%2))
	result3=$(($RANDOM%2))
	if [[ $result1 == 0 ]] && [[ $result2 == 0 ]] && [[ $result3 == 0 ]]
	then
	array[i++]="HHH"
	((valueofHHH++))
	elif [[ $result1 == 0 ]] && [[ $result2 == 1 ]] && [[ $result3 == 0 ]]
	then
	array[i++]="HTH"
	((valueofHTH++))
	elif [[ $result1 == 1 ]] && [[ $result2 == 0 ]] && [[ $result == 0 ]]
	then
	array[i++]="THH"
	((valueofTHH++))
	elif [[ $result1 == 1 ]] && [[ $result2 == 1 ]] && [[ $result3 == 1 ]]
	then
	array[i++]="TTT"
	((valueofTTT++))
	elif [[ $result1 == 1 ]] && [[ $result2 == 0 ]] && [[ $result3 == 1 ]]
	then
	array[i++]="THT"
	((valueofTHT++))
	elif [[ $result1 == 0 ]] && [[ $result == 0 ]] && [[ $result3 == 1 ]]
	then
	array[i++]="HHT"
	((valueofHHT++))
	fi 
	
done
echo ${array[@]}

declare -A percenttriplet

v11=$((valueofHHH*100))
percentofHHH=$((v11/maxthrows))
echo $percentofHHH
percenttriplet[HHH]=$percentofHHH

v22=$((valueofHTH*100))
percentofHTH=$((v22/maxthrows))
echo $percentofHTH
percenttriplet[HTH]=$percentofHTH

v33=$((valueofTHH*100))
percentofTHH=$((v33/maxthrows))
echo $percentofTHH
percenttriplet[THH]=$percentofTHH

v44=$((valueofTTT*100))
percentofTTT=$((v44/maxthrows))
echo $percentofTTT
percenttriplet[TTT]=$percentofTTT

v55=$((valueofTHT*100))
percentofTHT=$((v55/maxthrows))
echo $percentofTHT
percenttriplet[THT]=$percentofTHT

v66=$((valueofHHT*100))
percentofHHT=$((v66/maxthrows))
echo $percentofHHT
percenttriplet[HHT]=$percentofHHT


mysort(){
    printf '%s\n' "$@" | sort -r
}

mysort "${percenttriplet[@]}"
echo "Winning Combination " ${!percenttriplet[0]}
