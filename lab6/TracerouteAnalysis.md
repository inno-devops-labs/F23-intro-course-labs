1. Traceroute:
    To perform a traceout on windows 10, you need to use "tracert command"
    I decided to trace www.google.com site
    I opende the command line, and wrote "tracert www.google.com"
    The results were the following:
    
    Tracing a route to forcesafesearch.google.com [216.239.38.120]
    With the maximum number of jumps 30:

    1. 2 ms 2ms 2ms 10.91.48.1
    .
    .
    8. 38 ms 36 ms 36 ms 142.250.235.62
    .
    .
    18. * * * Request waiting interval exceeded
    19. 36 ms 36 ms 36 ms any-in-2678.1e100.net [216.239.38.120]

    Tracing completed

    Observation: Sometimes the system succesfully trace the google search site, sometimes I received "Request waiting interval exceeded". Around the half of the trace requests were succesfull

2. Dig:
    To perform the DNS lookup on windows 10 you need to use "nslookup" command
    I decide to check Google search again
    I typed "nslookup google.com"
    The result was the following: 
    Server:  UnKnown
    Address:  10.90.137.30

    Non-authoritative answer:
    Name:     forcesafesearch.google.com
    Addresses:  2001:4860:4802:32::78
          216.239.38.120
    Aliases:  google.com

    Observation: I received "Non-authoritative answer" which means the responce was received from not aithoritative source for this particular domain. I also tried it with yandex.ru and received the same answer.