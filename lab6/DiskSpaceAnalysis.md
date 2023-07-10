# Operating System Analysis

## Disk Space
- Command: fsutil volume diskfree c:
- Output:

Всего свободных байт        :  38 480 658 432 ( 35,8 ГБ)

Всего байт             : 208 224 948 224 (193,9 ГБ)

Всего свободных байт квоты  :  38 480 658 432 ( 35,8 ГБ)

Also we can use **dir c:**, but output is too big.

## Inodes
- Command: fsutil fsinfo ntfsinfo C:
- Output:

Серийный номер тома с NTFS:        0xb0fe1edffe1e9da2

Версия NTFS:                3.1

Версия LFS:                2.0

Всего секторов:                406 689 357 (193,9 ГБ)

Всего кластеров:                 50 836 169 (193,9 ГБ)

Свободных кластеров:                  9 400 975 ( 35,9 ГБ)

Всего зарезервированных кластеров:                6 292 ( 24,6 МБ)

Зарезервировано для резерва памяти:               0 (  0,0 КБ)

Байтов на сектор:                512

Байтов на физический сектор:        512

Байтов на кластер:                4096

Байтов на сегмент FileRecord:  1024

Кластеров на сегмент FileRecord:  0

Допустимая длина данных в MFT:            1,13 ГБ

Начальный номер LCN в MFT:                   0x00000000000c0000

Начальный номер LCN в MFT2:                   0x0000000000000002

Начало зоны MFT:                   0x0000000001b5caa0

Конец зоны MFT:                   0x0000000001b68660

Размер зоны MFT:                   187,75 МБ

Максимальное количество экстентов с обрезкой на устройстве:     512

Максимальное количество байтов с обрезкой на устройстве:       0xffffffff

Максимальное количество экстентов с обрезкой в томе:     62

Максимальное количество байтов с обрезкой в томе:       0x40000000

Идентификатор диспетчера ресурсов :      A14F2655-4ABA-11EB-8362-28D244DCA464

## Resource Consumption

- Command: tasklist /v /fi "STATUS eq running" /fi "IMAGENAME ne explorer.exe"
- Part of output:

Имя образа                     PID Имя сессии          № сеанса       Память Состояние       Пользователь                                           Время ЦП Заголовок окна

========================= ======== ================ =========== ============ =============== ================================================== ============ ========================================================================

csrss.exe                      984 Console                    1     4 840 КБ Running         NT AUTHORITY\СИСТЕМА                                    0:08:53 Н/Д

dwm.exe                       1296 Console                    1    49 064 КБ Running         Window Manager\DWM-1                                    2:26:22 DWM Notification Window

atieclxx.exe                  2684 Console                    1     8 192 КБ Running         NT AUTHORITY\СИСТЕМА                                    0:03:45 AMD EEU Client

Start8_64.exe                 4480 Console                    1     3 648 КБ Running         NT AUTHORITY\СИСТЕМА                                    0:00:01 Start8

ETDCtrl.exe                   2600 Console                    1    11 052 КБ Running         HOME\Олег                                               0:00:43 Настройка моих программ

sihost.exe                    7764 Console                    1    22 952 КБ Running         HOME\Олег                                               0:01:17 Н/Д

taskhostw.exe                 7184 Console                    1    13 400 КБ Running         HOME\Олег                                               0:00:21 Task Host Window

ctfmon.exe                    7684 Console                    1    13 904 КБ Running         HOME\Олег                                               0:05:42 Н/Д

igfxEM.exe                    7264 Console                    1     8 912 КБ Running         HOME\Олег                                               0:00:21 The Event Manager - Status

svchost.exe                   8684 Console                    1    20 696 КБ Running         HOME\Олег                                               0:00:08 Н/Д

igfxHK.exe                    9032 Console                    1     6 144 КБ Running         HOME\Олег                                               0:00:16 HotKey Listener

igfxTray.exe                  9268 Console                    1     7 716 КБ Running         HOME\Олег                                               0:00:15 igfxtrayWindow

ETDCtrlHelper.exe            10088 Console                    1     5 652 КБ Running         HOME\Олег                                               0:00:02 ETDCtrlHelper

StartMenuExperienceHost.e    10200 Console                    1    56 904 КБ Running         HOME\Олег                                               0:03:14 Начальный экран

ETDIntelligent.exe            4264 Console                    1     5 604 КБ Running         HOME\Олег                                               0:00:24 ETDIntelligent

unsecapp.exe                  9372 Console                    1     6 840 КБ Running         HOME\Олег                                               0:00:13 OleMainThreadWndName

TextInputHost.exe             9264 Console                    1    19 528 КБ Running         HOME\Олег                                               0:01:35 Microsoft Text Input Application

RadeonSoftware.exe            6080 Console                    1    16 756 КБ Running         HOME\Олег                                               0:02:44 AMD:CCC-AEMCapturingWindow

AMDRSServ.exe                10388 Console                    1    20 476 КБ Running         HOME\Олег                                               0:00:19 GDI+ Window (AMDRSServ.exe)

Telegram.exe                  4488 Console                    1   361 012 КБ Running         HOME\Олег                                               3:07:00 Telegram (9415)

Also we can just use command **taskmgr** that opens task manager and see info in more comfort way.

- Observations:
1) Output of **tasklist** command displays running processes along with their Process ID (PID) and memory usage.
2) In this example Telegram.exe consuming 361012 KB memory
