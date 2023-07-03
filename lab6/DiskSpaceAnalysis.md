# Operating System Analysis

## Disk Space Analysis

- Command: `fsutil volume diskfree c:`
    - Output:
      ```
      Total free bytes:  26 914 537 472 ( 25,1 GB)  
      Total bytes: 209 020 559 360 (194,7 GB)  
      Total quota free bytes  :  26 914 537 472 ( 25,1 GB)
      ```
- Command: `fsutil volume diskfree d:`
    - Output:
      ```
      Total free bytes: 135 791 853 568 (126,5 GB)  
      Total bytes: 302 393 585 664 (281,6 GB)  
      Total quota free bytes  : 135 791 853 568 (126,5 GB)
      ```

## Inodes Analysis:

There is no direct command or tool to check the number of inodes on a Windows operating system, but on Linux it can be
done with `df -i`.

## Resource Consumption Analysis

- Press the `Ctrl + Shift + Esc` keys simultaneously to open the Task Manager directly.
- Click on the "Processes" tab.
- In my case, PyCharm process uses the most CPU and RAM at the same time.
- On Linux, it can be done with `top` command.