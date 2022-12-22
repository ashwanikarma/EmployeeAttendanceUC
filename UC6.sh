isPresent=$((RANDOM%3));
wagePerHour=20;
workingHour=0;
totalWorkingDay=20;
tempWorkHour=0;
for ((day=1; day<=20 ;day++))
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
		#echo "Employee is absent";
		workingHour=0;
		;;

		1)
		#echo "Employee is present";
		workingHour=8;
		;;

		2)
		#echo "Employee is working as part time";
		workingHour=4;
		;;
	esac

	tempWorkHour=$(($tempWorkHour + $workingHour));
	if [ $tempWorkHour -le 100 ]
	then
	salary=$(($wagePerHour * $workingHour));
	totalSalary=$(($totalSalary + $salary));
	fi
	
done
	

echo $totalSalary
