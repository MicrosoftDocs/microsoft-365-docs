---
title: Troubleshoot issues for Microsoft Defender for Endpoint on Linux RHEL6
ms.reviewer: 
description: Troubleshoot cloud connectivity issues for Microsoft Defender for Endpoint on Linux
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, cloud, connectivity, communication
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
ms.date: 10/06/2021
---

# Troubleshoot issues for Microsoft Defender for Endpoint on Linux RHEL6

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

This article provides guidance on how to troubleshoot issues you might encounter with Microsoft Defender for Linux on Red Hat Linux 6 (RHEL 6) or higher. 

After the package (mdatp_XXX.XX.XX.XX.x86_64.rpm) is installed, take actions provided to verify that the installation was successful. 


## Check the service health

Use the following command to check the service health:

```bash
mdatp health 
```

## Verify that the service is running

Use the following command to verify that the service is running:

```bash
service mdatp status 
```

Expected output: `mdatp start/running, process 4517`

## Verify the distribution and kernel version
The distribution and kernel versions should be on the supported list.

Use the following command to get the distribution version:

```bash
cat /etc/redhat-release (or /etc/system-release) 
```

Use the following command to get the kernel version:

```bash
uname -r
```
## Check if mdatp audisp process is running 
The expected output is that the process is running.

Use the following command to check:

```bash
pidof mdatp_audisp_plugin 
```

## Check TALPA modules
There should be nine modules loaded. 

Use the following command to check:

```bash
lsmod | grep talpa
```

Expected output: Enabled

```bash
talpa_pedconnector       878  0 

talpa_pedevice          5189  2 talpa_pedconnector 

talpa_vfshook          32300  1 

talpa_vcdevice          4947  1 

talpa_syscall           9127  0 

talpa_core             90699  4 talpa_vfshook,talpa_vcdevice,talpa_syscall 

talpa_linux            29424  5 talpa_vfshook,talpa_vcdevice,talpa_syscall,talpa_core 

talpa_syscallhookprobe      882  0 

talpa_syscallhook      14987  2 talpa_vfshook,talpa_syscallhookprobe 
```


```bash
lsmod | grep talpa | wc -l 
```

Expected output: 9

## Check TALPA status

```bash
cat /proc/sys/talpa/interceptors/VFSHookInterceptor/status 
```

Debug log files (apart from the 'mdatp diagnostic create' bundle) 

```bash
/var/log/audit/audit.log 

/var/log/messages 

semanage fcontext -l > selinux.log 
```
 

Performance and Memory 

```bash
top -p <wdavdaemon pid>      

pmap -x <wdavdaemon pid> 
```

Where `<wdavdaemon pid>` can be found using `pidof wdavdaemon`.

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
