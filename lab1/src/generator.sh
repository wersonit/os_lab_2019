strk=""
for ((i = 0; i < 50; i++))
do
	strk=$strk"$(od -vAn -N2 -tu2 < /dev/urandom)"	
	echo $strk > numbers.txt
done
