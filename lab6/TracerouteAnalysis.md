# Networking Analysis

## Traceroute
- Command: tracert www.google.com
- output:
1    <1 мс    <1 мс    <1 мс  10.244.1.1
  
2     1 ms     1 ms    <1 мс  10.250.0.2

3     1 ms    <1 мс    <1 мс  10.252.5.1

4     2 ms     2 ms     1 ms  188.130.155.1

5    12 ms    15 ms    17 ms  1.123.18.84.in-addr.arpa [84.18.123.1]

6     8 ms     7 ms     8 ms  188.170.164.138

7     *        *        *     Превышен интервал ожидания для запроса.

8     *        *        *     Превышен интервал ожидания для запроса.

9    21 ms    20 ms    20 ms  83.169.204.166

10    35 ms    36 ms    35 ms  142.251.238.84

11    34 ms    34 ms    37 ms  142.251.238.68

12    35 ms    34 ms    35 ms  216.239.58.67

13     *        *        *     Превышен интервал ожидания для запроса.

14     *        *        *     Превышен интервал ожидания для запроса.

15     *        *        *     Превышен интервал ожидания для запроса.

16     *        *        *     Превышен интервал ожидания для запроса.

17     *        *        *     Превышен интервал ожидания для запроса.

18     *        *        *     Превышен интервал ожидания для запроса.

19     *        *        *     Превышен интервал ожидания для запроса.

20     *        *        *     Превышен интервал ожидания для запроса.

21     *        *        *     Превышен интервал ожидания для запроса.

22     *        *        *     Превышен интервал ожидания для запроса.

23     *        *        *     Превышен интервал ожидания для запроса.

24    33 ms    33 ms    32 ms  any-in-2678.1e100.net [216.239.38.120]

- Observations:
1) Tracert command traces network path from computer to specified website or IP address.
2) Each line represents a hop in the network path, displaying IP address and latency (in milliseconds) for that hop.
3) In this example, network path consists of 24 hops before reaching destination (www.google.com) IP address.

## Dig

- Command: dig www.google.com
- Output:

; <<>> DiG 9.18.12-0ubuntu0.22.04.2-Ubuntu <<>> www.google.com

;; global options: +cmd

;; Got answer:

;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 17006

;; flags: qr rd ad; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 0

;; WARNING: recursion requested but not available


;; QUESTION SECTION:

;www.google.com.                        IN      A


;; ANSWER SECTION:

www.google.com.         0       IN      CNAME   forcesafesearch.google.com.

forcesafesearch.google.com. 0   IN      A       216.239.38.120


;; Query time: 0 msec

;; SERVER: 172.29.192.1#53(172.29.192.1) (UDP)

;; WHEN: Mon Jul 10 11:55:42 MSK 2023

;; MSG SIZE  rcvd: 128

- Observations:
1) Dig command is a powerful tool for performing DNS queries and retrieving DNS-related information.
2) Output of dig provides detailed information about the DNS resolution process.
3) Output includes the query header, response header, query flags, query section, answer section, authority section, and additional section.
4) By analyzing output, you can verify if DNS resolution was successful, identify IP addresses associated with domain and gather information about DNS infrastructure of domain.
