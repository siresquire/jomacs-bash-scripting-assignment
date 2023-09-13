echo "Executing command: cat /etc/shadow"
cat /etc/shadow

# Introduce a sleep of 2 seconds
sleep 2s

if [ $? -eq 0 ]; then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi

