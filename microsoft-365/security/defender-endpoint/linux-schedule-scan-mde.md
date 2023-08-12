---
title: How to schedule scans with Microsoft Defender for Endpoint (Linux)
description: Learn how to schedule an automatic scanning time for Microsoft Defender for Endpoint (Linux) to better protect your organization's assets.
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
ms.date: 10/22/2021
---

# Schedule scans with Microsoft Defender for Endpoint (Linux)

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)


To run a scan for Linux, see [Supported Commands](/microsoft-365/security/defender-endpoint/linux-resources#supported-commands).

Linux (and Unix) have a tool called **crontab** (similar to Task Scheduler) to be able to run scheduled tasks.

## Pre-requisite

> [!NOTE]
> To get a list of all the time zones, run the following command:
> `timedatectl list-timezones`<br>
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
sudo crontab -l > /var/tmp/cron_backup_200919.dat
```

> [!NOTE]
> Where 200919 == YRMMDD

> [!TIP]
> Do this before you edit or remove.

To edit the crontab, and add a new job as a root user:

```bash
sudo crontab -e
```

> [!NOTE]
> The default editor is VIM.

You might see:

```outbou
0 * * * * /etc/opt/microsoft/mdatp/logrorate.sh
```

Press "Insert"

Add the following entries:

```bash
CRON_TZ=America/Los_Angeles

0 2 * * sat /bin/mdatp scan quick > ~/mdatp_cron_job.log
```

> [!NOTE]
> In this example, we have  set it to 00 minutes, 2 a.m. (hour in 24 hour format), any day of the month, any month, on Saturdays. Meaning it will run Saturdays at 2:00 a.m. Pacific (UTC -8).

Press "Esc"

Type "`:wq`" without the double quotes.

> [!NOTE]
> w == write, q == quit

To view your cron jobs, type `sudo crontab -l`

:::image type="content" source="../../media/linux-mdatp-1.png" alt-text="The linux mdatp page" lightbox="../../media/linux-mdatp-1.png":::

#### To inspect cron job runs

```bash
sudo grep mdatp /var/log/cron
```

#### To inspect the mdatp_cron_job.log*

```bash
sudo nano mdatp_cron_job.log
```

## For those who use Ansible, Chef, Puppet, or SaltStack

Use the following commands:

### To set cron jobs in Ansible

```bash
cron - Manage cron.d and crontab entries
```

See [https://docs.ansible.com/ansible/latest/modules/cron_module.html](https://docs.ansible.com/ansible/latest/modules/cron_module.html) for more information.

### To set crontabs in Chef

```bash
cron resource
```

See <https://docs.chef.io/resources/cron/> for more information.

### To set cron jobs in Puppet

```bash
Resource Type: cron
```

See <https://puppet.com/docs/puppet/5.5/types/cron.html> for more information.

**Automating with Puppet: Cron jobs and scheduled tasks**

See [https://puppet.com/blog/automating-puppet-cron-jobs-and-scheduled-tasks/](https://puppet.com/blog/automating-puppet-cron-jobs-and-scheduled-tasks/) for more information.

### To manage cron jobs in SaltStack

```bash
Resource Type: salt.states.cron
```

**Example:**

```yml
mdatp scan quick > /tmp/mdatp_scan_log.log:
  cron.present:
    - special: '@hourly'
```

See <https://docs.saltproject.io/en/latest/ref/states/all/salt.states.cron.html> for more information.

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

### To back up crontab entries

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

```
+—————- minute (values: 0 - 59) (special characters: , \- \* /)  <br>
| +————- hour (values: 0 - 23) (special characters: , \- \* /) <br>
| | +———- day of month (values: 1 - 31) (special characters: , \- \* / L W C)  <br>
| | | +——- month (values: 1 - 12) (special characters: , \- \* /)  <br>
| | | | +—- day of week (values: 0 - 6) (Sunday=0 or 7) (special characters: , \- \* / L W C) <br>
| | | | |*****command to be executed
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
