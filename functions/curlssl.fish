function curlssl
        set host $argv[2]
        set uri $argv[3]
        set srv $argv[1]
        set srvip (dig +short $srv)
        curl -s -v -o /dev/null --resolve $host:443:$srvip https://$host$uri
end
