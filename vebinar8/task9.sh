read -p "Enter a command: " user_command
eval $user_command &
echo "PID: $!"
