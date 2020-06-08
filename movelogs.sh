#usage : sh movelogs.sh AWS_ACCOUNT PATH_TO_MOVE_LOGS
cd /Downloads
count=$(ls -lrt $1* | wc -l)
echo "Number of log files are$count"
mv $1* $2
echo "$count files have moved"
