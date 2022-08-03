---
title: How to schedule antivirus scanning in Microsoft Defender for Endpoint (Linux)
description: Learn how to schedule an antivirus scanning for Microsoft Defender for Endpoint (Linux) to better protect your organization's assets.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, scans, antivirus, microsoft defender for endpoint (linux)
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoint (Linux)

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)


To run a scan for Linux, see [Supported Commands](/microsoft-365/security/defender-endpoint/linux-resources#supported-commands).

## Red Hat Linux Antivirus Scanning

This document is in support of Microsoft Defender for Endpoint (MDE, formerly MDATP) on Red Hat Enterprise Linux (RHEL).

## System requirements

Following are the system requirements to schedule  antivirus in Microsoft Defender Endpoint.

- Linux server distributions and versions: Red Hat Enterprise Linux 7.2 or higher.
- The **FANOTIFY** option in kernel must be enabled.

## Scheduling Antivirus in Red Hat Linux

Microsoft has documented how to schedule cron jobs to initiate antivirus scans on a schedule. For more information, see [How to schedule scans with Microsoft Defender for Endpoint (Linux) | Microsoft Docs](/microsoft-365/security/defender-endpoint/linux-schedule-scan-mde?view=o365-worldwide). This works well if the device is up and running 24/7. But what if the devices do not work in the workstations, laptops, or servers that are shut down during the cron schedule. In these situation, we can use Anacron to read the timestamp and find the last executed job. If the device was shutdown during the scheduled cron job, it needs to wait until the next scheduled time. Using Anacron it will see if the job runs, if not then it will execute it.

### Steps to schedule antivirus in Red Hat Linux

Follow the steps to schedule antivirus in Red Hat linux:

1. Connect to the RedHat server using Putty.
1. Let’s look at the anacron file: 

    ```vi /etc/anacron```.

    ```
    # /etc/anacrontab: configuration file for anacron
    # See anacron (8) and anacrontab (5) for details.
    SHELL=/bin/sh
    PATH=/sbin:/bin:/usr/sbin:/usr/bin
    RANDOM_DELAY=45
    # Anacron jobs will start between 8pm and 11pm.
    START_HOURS_RANGE=2-023
    # delay will be 5 minutes + RANDOM_DELAY for cron.daily
    ```

1. A few things to note in the file.
    1. **Shell:** Shell is referred as ```/bin/sh```, and not as ```/bin/bash```. Remember this when writing the jobs.
    1. **RANDOM_DELAY:** Describes the maximum time in minutes for the job. This is used to offset the jobs so there wouldn't be too many jobs running at the same time. This would be ideal for VDI solutions.
    1. **START_HOURS_RANGE:** Describes the time range to execute the job.
    1. **cron.daily:** Describes 1 as the period of days required for the frequency of job executions. 5 is the delay in minutes the anacron waits after the device restarts.

1. Let’s take a look at the anacron jobs:

    ```ls -lh /etc/cron*```

    ```
    [root@enaredhat7 /] # 1s -1h /etc/cron*
    - rw - - - - - - -.	1	root	root	0	Nov	30	2021	/etc/cron.deny
    - rw - r - - r - -.	1	root	root	451	Dec	27	2013	/etc/crontab

    /etc/cron.d:
    total 28k
    - rw - r - - r - -.	1	root	root	128	Nov	30	2021	0hourly
    - rw - r - - r - -.	1	root	root	121	Feb	25	18:11	omilogotate
    - rw - r - - r - -.	1	root	root	118	Feb	25	18:14	omsagent
    - rw - r - - r - -.	1	root	root	79	Feb	25	18:15	OMSConsistencyInvoker
    - rw - r - - r - -.	1	root	root	108	Nov	9	2021	raid-check
    - rw - r - - r - -.	1	root	root	135	Jun	1	22:35	scxagent
    - rw - - - - - - -.	1	root	root	235	Jan	20	2020	sysstat

    /etc/cron.daily:
    total 24k
    - rwxr - xr - x.	1	root	root	127	Jun	14	16:49	avscandaily
    - rwx - - - - - -.	1	root	root	219	Aug	7	2019	logrotate
    - rwxr - xr - x.	1	root	root	618	Jul	10	2018	man-db.cron
    - rwx - - - - - -.	1	root	root	208	Nov	9	2017	mlocate
    - rwx - - - - - -.	1	root	root	558	Apr	18	19:03	rhsmd
    - rwxr - xr - x.	1	root	root	114	Apr	8	2021	rhui-update-client

    /etc/cron.hourly:
    total 8.0k
    - rwxr - xr - x.	1	root	root	392	Nov	30	2021	0anacron
    - rwxr - xr - x.	1	root	root	131	Jun	14	17:05	update

    /etc/cron.monthly:
    total 0
    - rwxr - xr - x.	1	root	root	0	Jun	14	17:47	mdatpupdate
    
    /etc/cron.weekly:
    total 0
    ```

1. Ignoring the ```/etc/cron.d``` directory, you'll see ```/etc/corn.daily, hourly, monthly, and weekly```. 

1. Let’s say you're required to schedule weekly antivirus scans. You can create a file (Job) under the ```/etc/cron.weekly``` directory.

    ```cd /etc/cron.weekly```

   ``` vi mdavfullscan```

    ```Press Insert```
    
   ```
    #!/bin/sh
    set	-e
    echo	$(date)		“Time Scan Begins”	>>/logs/mdav_avacron_full_scan.log/bin/mdatp scan full >> /logs/mdav_avacron_full_scan.log
    echo	$(date) “Time Scan Finished”		>>/logs/mdav_avacron_full_scan.log
    exit	0
    ~
    ```

    ```Press Esc```

    ```Type: **wq!```

1. Change the file permissions to allow the file to be executed.

    ```Chmod 755 mdavfullscan```
    ```ls -la```

    ```
    [root@enaredhat7 	cron.weekly]# 1s -1a
    total	16
    drwxr - xr – x.	2	root	root	26	Jun	14	19:19	.
    drwxr - xr – x.	85	root	root	8192	Jun	14	19:01	..
    - rw - r - - r - -.	1	root	root	128	Jun	14	19:19	mdavfullscan
    [root@enaredhat7 cron.weekly] #	chmod 755 mdavfullscan
    [root@enaredhat7 cron.weekly] # 1s	-1h
    total 4. 0k
    - rwxr - xr – x.	1	root	root	128	Jun	14	19:19	mdavfullscan
    [root@enaredhat7 cron.weekly] #
    ```

1. To test the weekly anacron job.
    
    ```./mdavfullscan```

1. To verify the job ran.

    ```cat /logs/mdav_avacron_full_scan.log```

    ```
    [root@enaredhat7 	cron.weekly] # cat	/ logs / mdav_avacron_full_scan.log
    Tue Jun	14	20:20:44	UTC	2022 Time Scan Begins
    Scan has finished
    	66547	file(s) scanned
    0	threat(s) detected
    Tue Jun	14	20:20:50	UTC 2022 Time Scan Finished
    [root@enaredhat7 cron.weekly] #
    ```
