# Container Management: 

1. List Containers:
    ```ruby
    ahmad@ahmad-workstation:~$ sudo docker container ls -a
    [sudo] password for ahmad: 
    CONTAINER ID   IMAGE          COMMAND                   CREATED        STATUS                      PORTS     NAMES
    531b8af147ee   hello-world    "/hello"                  2 weeks ago    Exited (0) 2 weeks ago                distracted_elbakyan
    c270f01e72cd   de5ef226027b   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               amazing_moore
    0f51c9247612   de5ef226027b   "/bin/sh -c 'bash /o…"    4 months ago   Exited (1) 4 months ago               gallant_shockley
    047d2466dd49   de5ef226027b   "/bin/sh -c 'bash \"/…"   4 months ago   Exited (1) 4 months ago               tender_wilson
    e2f7fa980e52   de5ef226027b   "/bin/sh -c 'bash -c…"    4 months ago   Exited (1) 4 months ago               crazy_wescoff
    2767b4f6d349   de5ef226027b   "/bin/sh -c 'bash so…"    4 months ago   Exited (127) 4 months ago             thirsty_euler
    9059c99263dd   de5ef226027b   "/bin/sh -c 'source …"    4 months ago   Exited (127) 4 months ago             magical_pascal
    c22bb1dc13ea   888744c1a103   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               funny_blackburn
    84a2b06bfc5d   faa5e8258dab   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               quirky_lamarr
    f689c0306e37   549faf1267f3   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               interesting_taussig
    f4940cf4d0a2   9909b6639bd5   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               laughing_villani
    a3a6c666b9a2   9909b6639bd5   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               jovial_golick
    d8f53164a197   9909b6639bd5   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               romantic_spence
    1e467bcea010   9909b6639bd5   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               unruffled_raman
    e67273f3d01f   9909b6639bd5   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               musing_herschel
    54362bb6a502   9909b6639bd5   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               confident_sanderson
    ee52252d891c   9909b6639bd5   "/bin/sh -c 'echo $p…"    4 months ago   Exited (1) 4 months ago               magical_neumann
    19c7802e08b9   9909b6639bd5   "/bin/sh -c 'echo pw…"    4 months ago   Exited (1) 4 months ago               stupefied_goldberg
    22edac324af5   9909b6639bd5   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               wizardly_goldberg
    8ded4b419c1a   01f5735686e5   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               reverent_hugle
    6fda075b0eef   cc7023ae1088   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               romantic_solomon
    af962d8f4699   518e81fc993e   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               modest_euclid
    b4f503337fd6   d3dfefa80e34   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               sleepy_montalcini
    ed866aca7f89   09fd6c773868   "/bin/sh -c '. /opt/…"    4 months ago   Exited (2) 4 months ago               hardcore_ishizaka
    7aaedafe3a03   b6a95669a299   "/bin/sh -c '. /opt/…"    4 months ago   Exited (2) 4 months ago               charming_faraday
    ebf6dbc69865   be58973217ef   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               elegant_gates
    c17084cfd5c9   93a8beb27ca7   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               blissful_rubin
    f1dfe9b873c9   dac154133fbb   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               trusting_dijkstra
    be08515c7f64   a2794331268c   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               busy_leakey
    f15c699232c4   a9017bcd28f1   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               competent_wilbur
    e3d0dd45645c   3b4c6ecfd966   "/bin/sh -c 'colcon …"    4 months ago   Exited (1) 4 months ago               happy_bose
    24a1be81bc42   7deeaa695bf3   "/bin/sh -c '. /opt/…"    4 months ago   Exited (1) 4 months ago               serene_golick
    acbab2159469   1540b670ed2d   "/bin/sh -c '. /opt/…"    4 months ago   Exited (127) 4 months ago             vigorous_kare
    cce2f067e925   b314dd4787d3   "/bin/sh -c 'rosdep …"    4 months ago   Exited (1) 4 months ago               gallant_benz
    7c1ea740995e   581de62fe89f   "/bin/sh -c 'rosdep …"    4 months ago   Exited (2) 4 months ago               stupefied_mirzakhani
    2c2a09c3047c   581de62fe89f   "/bin/sh -c 'rosdep …"    4 months ago   Exited (1) 4 months ago               jovial_satoshi
    d79f0b1414aa   a653e35b9244   "/bin/sh -c 'cd /hom…"    4 months ago   Exited (2) 4 months ago               eager_jemison
    a33f0ef2279d   a653e35b9244   "/bin/sh -c 'cd /hom…"    4 months ago   Exited (1) 4 months ago               epic_archimedes
    4a69fd57644b   a653e35b9244   "/bin/sh -c 'cd /hom…"    4 months ago   Exited (1) 4 months ago               happy_aryabhata
    9603e1e11c8b   37a9ec7d7156   "/bin/sh -c 'cd /hom…"    4 months ago   Exited (128) 4 months ago             affectionate_faraday
    69a81dab92bc   37a9ec7d7156   "/bin/sh -c 'cd /hom…"    4 months ago   Exited (128) 4 months ago             ecstatic_sinoussi
    20f2dd35251e   37a9ec7d7156   "/bin/sh -c 'cd /hom…"    4 months ago   Exited (128) 4 months ago             hardcore_cohen
    2900efdfcb86   hello-world    "/hello"                  5 months ago   Exited (0) 5 months ago               vigorous_franklin

    ```

2. Pull Latest Ubuntu Image:
    ```ruby
    ahmad@ahmad-workstation:~$ sudo docker pull ubuntu:latest
    latest: Pulling from library/ubuntu
    aece8493d397: Pull complete 
    Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
    Status: Downloaded newer image for ubuntu:latest
    docker.io/library/ubuntu:latest
    ```
3. Run Container:
    ```ruby
    ahmad@ahmad-workstation:~$ sudo docker run -d ubuntu:latest
    0f6a67748b7098c3344193eda4c20bf4979e19d5ec100518e06adc449184fc95
    ```

4. To remove we use this command:
    ```ruby 
    ahmad@ahmad-workstation:~$ sudo docker image rm e4c58958181a -f
    Untagged: ubuntu:latest
    Untagged: ubuntu@sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
    Deleted: sha256:e4c58958181a5925816faa528ce959e487632f4cfd192f8132f71b32df2744b4
    ```