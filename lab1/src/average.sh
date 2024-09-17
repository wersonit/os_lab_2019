sum=0;
amount=0;
for number in $@
do
	sum=$(expr $sum + $number);
	amount=$(expr $amount + 1);
done
echo $sum
echo $((sum / amount))
