## Traceroute

```shell
tracert ya.ru
```

```shell
Трассировка маршрута к ya.ru [213.180.193.56]
с максимальным числом прыжков 30:

  1    <1 мс    <1 мс    <1 мс  router.asus.com [192.168.1.1]
  2     1 ms     1 ms     1 ms  10.242.1.1
  3     1 ms     1 ms    <1 мс  10.250.0.2
  4     4 ms     1 ms     2 ms  10.252.5.1
  5     3 ms     2 ms     2 ms  188.130.155.1
  6    12 ms    68 ms   114 ms  1.123.18.84.in-addr.arpa [84.18.123.1]
  7   126 ms     8 ms    51 ms  188.170.164.138
  8     *        *        *     Превышен интервал ожидания для запроса.
  9     *        *        *     Превышен интервал ожидания для запроса.
 10    25 ms    21 ms    21 ms  83.169.204.176
 11    26 ms    26 ms    24 ms  familysearch.yandex.ru [213.180.193.56]

Трассировка завершена.
```

It is interesting that in two rows the waiting interval for the request has been exceeded, but tracing was completed. I tried launching again and obtained the same result.

## Dig

### Yandex
```shell
nslookup ya.ru
```

```shell
╤хЁтхЁ:  router.asus.com
Address:  192.168.1.1

Не заслуживающий доверия ответ:
╚ь :     ya.ru
Addresses:  2a02:6b8::1:56
          213.180.193.56
```

### VKontakte
```shell
nslookup vk.com
```

```shell
╤хЁтхЁ:  router.asus.com
Address:  192.168.1.1

Не заслуживающий доверия ответ:
╚ь :     vk.com
Addresses:  93.186.225.194
          87.240.132.78
          87.240.132.67
          87.240.129.133
          87.240.137.164
          87.240.132.72

```

1. Responses have a different character encoding.
2. The DNS server used for the lookup is "192.168.1.1", which is commonly the default IP address for ASUS routers. The response indicates that the domain "router.asus.com" is associated with the IP address "192.168.1.1".
3. It's worth noting that the "Не заслуживающий доверия" response typically suggests that the DNS resolution for "ya.ru" and for "vk.com" may not be trustworthy or reliable. This can occur due to various factors, such as misconfiguration, DNS spoofing, or an issue with the DNS server.