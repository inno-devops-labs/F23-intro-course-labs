# Operating System Analysis

Context

OS: Windows 10

## Task 1

### Analyze disk space

1. System propmt
   ![Alt text](image.png)

2. get-volume prompt
   ![Alt text](image-1.png)

3. chkdsk C:
   Всего единиц распределения на диске: 121933052.
   Доступно единиц распределения на диске: 40292161.
   ![Alt text](image-3.png)

### Inodes Anakysis

On windows 10 in is possible to get wil following snippet
fsutil file queryfileid .\Windows\
ИД файла: 0x00000000000000000001000000000663
![Alt text](image-2.png)

### Resource Consumption Analysis

Using windows it is possible to use Winows Task manager to check the performance of the resource consumption.
CPU
![Alt text](image-4.png)

RAM
![Alt text](image-5.png)

- Observations and insights:
  Google Chrome is a very good web browser to kill all resources available.
