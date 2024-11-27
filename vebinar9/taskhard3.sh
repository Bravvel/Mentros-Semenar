symbols=""
for symbol in {A..Z}{a..z}{0..9}
do
	symbols=$symbols$symbol
done

symbols_len=${#symbols}
pwd_len=$1
pwd=""

for i in `seq $pwd_len`
do
	random_index=$((RANDOM % symbols_len))
	pwd+=${symbols:$random_index:1}
done

echo $pwd
