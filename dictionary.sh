counter=0
for ((i=0; i<40; i++))
do
die=$((1+RANDOM%6))
    declare -A Dice
    Dice[$i]=$(($die))



        for ((j=$die; j<6; j++))
	do

	counter=$((counter+1))
	arr[j]=$counter
	done

   if [ $counter -eq 10 ]
    then
   echo " ${!arr[@]} of die come maximum times"
    break   
    elif [ $counter == 1 ]
    then
    echo " ${!arr[@]} of die come minimum times "
    fi
 



done
echo "dictionary : ${Dice[@]} "

