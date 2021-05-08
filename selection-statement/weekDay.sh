#!/bin/bash -x
	read -p "enter the number: " y
if [ $y -eq 2 ]
	then
		echo "Monday"
elif [ $y -eq 3 ]
	then
		echo "Tuesday"
elif [ $y -eq 4 ]
	then
		echo "Wednesday"
elif [ $y -eq 5 ]
	then
		echo "Thursday"
elif [ $y -eq 6 ]
	then
		echo "Friday"
elif [ $y -eq 7 ]
	then
		echo "Saturday"
elif [ $y -eq 1 ]
	then
		echo "Sunday"
fi
