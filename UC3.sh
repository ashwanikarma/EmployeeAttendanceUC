isPresent=$((RANDOM%3));
wagePerHour=20;
workingHour=0;
if [ $isPresent -eq 0 ]
then
	echo "Employee is Absent";
	workingHour=0;
elif [ $isPresent -eq 1 ]
then
	echo "Employee is present";
	workingHour=8;
else
	echo "Employee is working as Part Time";
	workingHour=4;
fi
DailyWage=$(($wagePerHour * $workingHour));
echo "Employee has Daily Wage of $DailyWage";