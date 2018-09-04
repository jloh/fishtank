# Function to ping with timestamp
# Taken from https://raymii.org/s/snippets/tping_ping_with_a_timestamp.html
function tping -d 'Standard ping with a timestamp'
  ping $argv | while read -l pong
    echo (date +"%T"): $pong
  end
end
