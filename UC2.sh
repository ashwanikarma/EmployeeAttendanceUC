isPresent=$((RANDOM%2));
wagePerHour=20;
workingHour=0;
if [ $isPresent -eq 0 ]
then
	echo "Employee is Absent";
	workingHour=0;
else
	echo "Employee is Present";
	workingHour=8;
fi
DailyWage=$(($wagePerHour * $workingHour));
echo "Employee has Daily Wage of $DailyWage";