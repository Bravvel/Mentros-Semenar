set -m

sleep 5 &
pid1=$!
echo "sleep 5 - PID: $pid1"
sleep 10 &
pid2=$! 
echo "sleep 10 - PID: $pid2"
sleep 15 & 
pid3=$! 
echo "sleep 15 - PID: $pid3"
sleep 1
echo "Фоновые задачи:"
jobs

fg %1

echo "Фоновые задачи:"
jobs

bg %2

echo "Фоновые задачи:"
jobs

echo "Скрипт завершен"
