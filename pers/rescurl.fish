function rescurl
        set host $argv[2]
        set uri $argv[3]
        set srv $argv[1]
        set srvip (dig +short $srv)
        curl -s -v -o /dev/null --resolve $host:80:$srvip http://$host$uri
end
