isPresent=$((RANDOM%3));
wagePerHour=20;
workingHour=0;
case $isPresent in
	0)
	echo "Employee is Absent";
	workingHour=0;
	;;
	
	1)
	echo "Employee is present";
	workingHour=8;
	;;

	2)
	echo "Employee is working as Part Time";
	workingHour=4;
	;;
esac

DailyWage=$(($wagePerHour * $workingHour));
echo "Employee has Daily Wage of $DailyWage";
