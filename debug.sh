momdir=$(dirname "$(pwd)")

disk_usage=$(df "$momdir" | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$disk_usage" -lt 95 ]; then
  for i in {1..3}; do
    cat "$(pwd)/secure-random"
  done > "$(pwd)/trash"
else
  echo "Disk usage is 95% or higher, copy aborted."
fi

sleep 1

rm -f "$(pwd)/trash"
