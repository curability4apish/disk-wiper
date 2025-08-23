momdir=$(dirname "$(pwd)")

while [ $(df "$momdir" | tail -1 | awk '{print $5}' | sed 's/%//') -lt 95 ]; do
  cat "$(pwd)/secure-random"
done > "$(pwd)/trash"

sleep 1
rm -f "$(pwd)/trash"

