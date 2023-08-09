---
title: How to schedule an update of the Microsoft Defender for Endpoint (Linux)
description: Learn how to schedule an update of the Microsoft Defender for Endpoint (Linux) to better protect your organization's assets.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, scans, antivirus, microsoft defender for endpoint (linux)
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 10/06/2021
---

# Schedule an update of the Microsoft Defender for Endpoint (Linux)

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

To run an update on Microsoft Defender for Endpoint on Linux, see [Deploy updates for Microsoft Defender for Endpoint on Linux](/microsoft-365/security/defender-endpoint/linux-updates).

Linux (and Unix) have a tool called **crontab** (similar to Task Scheduler) to be able to run scheduled tasks.

## Pre-requisite

> [!NOTE]
> To get a list of all the time zones, run the following command:
> `timedatectl list-timezones`
>
> Examples for timezones:
>
> - `America/Los_Angeles`
> - `America/New_York`
> - `America/Chicago`
> - `America/Denver`

## To set the Cron job

Use the following commands:

### Backup crontab entries

```bash
sudo crontab -l > /var/tmp/cron_backup_201118.dat
```

> [!NOTE]
> Where 201118 == YYMMDD

> [!TIP]
> Do this before you edit or remove.

To edit the crontab, and add a new job as a root user:

```bash
sudo crontab -e
```

> [!NOTE]
> The default editor is VIM.

You might see:

```output
0****/etc/opt/microsoft/mdatp/logrorate.sh
```

And

```output
02**sat /bin/mdatp scan quick>~/mdatp_cron_job.log
```

See [Schedule scans with Microsoft Defender for Endpoint (Linux)](linux-schedule-scan-mde.md)

Press "Insert"

Add the following entries:

```bash
CRON_TZ=America/Los_Angeles
```

> #!RHEL and variants (CentOS and Oracle Linux)
>
> ```bash
> 0 6 * * sun [ $(date +%d) -le 15 ] && sudo yum update mdatp -y >> ~/mdatp_cron_job.log
> ```

> #!SLES and variants
>
> ```bash
> 0 6 * * sun [ $(date +%d) -le 15 ] && sudo zypper update mdatp >> ~/mdatp_cron_job.log
> ```

> #!Ubuntu and Debian systems
>
> ```bash
> 0 6 * * sun [ $(date +%d) -le 15 ] && sudo apt-get install --only-upgrade mdatp >> ~/mdatp_cron_job.log
> ```

> [!NOTE]
> In the examples above, we are setting it to 00 minutes, 6 a.m.(hour in 24 hour format), any day of the month, any month, on Sundays.[$(date +\%d) -le 15] == Won't run unless it's equal or less than the 15th day (3rd week). Meaning it will run every 3rd Sundays(7) of the month at 6:00 a.m. Pacific (UTC -8).

Press "Esc"

Type "`:wq`" w/o the double quotes.

> [!NOTE]
> w == write, q == quit

To view your cron jobs, type `sudo crontab -l`

:::image type="content" source="images/update-MDE-linux-4634577.jpg" alt-text="update Defender for Endpoint on Linux.":::

To inspect cron job runs:

```bash
sudo grep mdatp /var/log/cron
```

To inspect the mdatp_cron_job.log

```bash
sudo nano mdatp_cron_job.log
```

## For those who use Ansible, Chef, or Puppet

Use the following commands:

### To set cron jobs in Ansible

```bash
cron - Manage cron.d and crontab entries
```

See <https://docs.ansible.com/ansible/latest/modules/cron_module.html> for more information.

### To set crontabs in Chef

```bash
cron resource
```

See <https://docs.chef.io/resources/cron/> for more information.

### To set cron jobs in Puppet

Resource Type: cron

See <https://puppet.com/docs/puppet/5.5/types/cron.html> for more information.

Automating with Puppet: Cron jobs and scheduled tasks

See <https://puppet.com/blog/automating-puppet-cron-jobs-and-scheduled-tasks/> for more information.

## Additional information

### To get help with crontab

```bash
man crontab
```

### To get a list of crontab file of the current user

```bash
crontab -l
```

### To get a list of crontab file of another user

```bash
crontab -u username -l
```

### To backup crontab entries

```bash
crontab -l > /var/tmp/cron_backup.dat
```

> [!TIP]
> Do this before you edit or remove.

### To restore crontab entries

```bash
crontab /var/tmp/cron_backup.dat
```

### To edit the crontab and add a new job as a root user

```bash
sudo crontab -e
```

### To edit the crontab and add a new job

```bash
crontab -e
```

### To edit other user's crontab entries

```bash
crontab -u username -e
```

### To remove all crontab entries

```bash
crontab -r
```

### To remove other user's crontab entries

```bash
crontab -u username -r
```

### Explanation

<pre>
+—————- minute (values: 0 - 59) (special characters: , - * /)  <br>
| +————- hour (values: 0 - 23) (special characters: , - * /) <br>
| | +———- day of month (values: 1 - 31) (special characters: , - * / L W C)  <br>
| | | +——- month (values: 1 - 12) (special characters: ,- * / )  <br>
| | | | +—- day of week (values: 0 - 6) (Sunday=0 or 7) (special characters: , - * / L W C) <br>
| | | | |*****command to be executed
</pre>
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
