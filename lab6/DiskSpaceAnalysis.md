1. Analyze the disk space:
    I used command "dir" to check the available disk space on my laptop
    In the window command promt I wrote "dir C:\"
    Result - 82 836 049 920 bite is free
2. Inodes Analysis:
    On Windows operating systems, including Windows 10, the concept of inodes is specific to Unix-like file systems such as ext4, which are not natively used in Windows. Therefore, there is no direct command or built-in functionality in Windows CMD to check the number of inodes.

    But I can check similar information about file system metadata using "fsutil" command, but it cannor provide the inode count.

    In cmd I wrote "fsutil volume diskfree C:". The result was follows:
    - Total free bites - 82 265 341 952 (76,6 GB)
    - Total bites - 238 881 021 952 (222,5 GB)
    - Total free quota bytes - 82 265 341 952 (76,6 GB)

    In case using Linux virtual OS:
    To check the numbers of inodes on Linux I used "df -i" command.
    The total numbers for all file systems is - 11141120

3. Resource consumption analysis:
    To check the most consuming CPU process, used "tasklist" command
    Resluts - the most consuming process was "browser.exe". Total - 24499390 KB. Or it could also be done via Task manager. Use combination "Alt+Shift+Enter" on windows to call the task manager. There should be a column "CPU"

    To check the most consuming RAM process, I also used the task manager. This time its "Memory" column. My most consuming process is Yandex browser - 684,3 Mb.

    Observation: In most cases browser consumes the most RAM on the laptops and this number is much higher then other processes
