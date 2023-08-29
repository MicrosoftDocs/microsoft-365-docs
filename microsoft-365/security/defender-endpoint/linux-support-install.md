---
title: Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux
ms.reviewer:
description: Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, installation
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
ms.date: 12/18/2020
---

# Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

## Verify that the installation succeeded

An error in installation may or may not result in a meaningful error message by the package manager. To verify if the installation succeeded, obtain and check the installation logs using:

```bash
 sudo journalctl --no-pager|grep 'microsoft-mdatp' > installation.log
```

```bash
 grep 'postinstall end' installation.log
```

```Output
 microsoft-mdatp-installer[102243]: postinstall end [2020-03-26 07:04:43OURCE +0000] 102216
```

An output from the previous command with correct date and time of installation indicates success.

Also check the [Client configuration](linux-install-manually.md#client-configuration) to verify the health of the product and detect the EICAR text file.

## Make sure you have the correct package

Verify that the package you are installing matches the host distribution and version.

<br>

****

|package|distribution|
|---|---|
|mdatp-rhel8.Linux.x86_64.rpm|Oracle, RHEL, and CentOS 8.x|
|mdatp-sles12.Linux.x86_64.rpm|SUSE Linux Enterprise Server 12.x|
|mdatp-sles15.Linux.x86_64.rpm|SUSE Linux Enterprise Server 15.x|
|mdatp.Linux.x86_64.rpm|Oracle, RHEL, and CentOS 7.x|
|mdatp.Linux.x86_64.deb|Debian and Ubuntu 16.04, 18.04 and 20.04|
|

For [manual deployment](linux-install-manually.md), make sure the correct distro and version had been chosen.

## Installation failed due to dependency error

If the Microsoft Defender for Endpoint installation fails due to missing dependencies errors, you can manually download the pre-requisite dependencies. 

The following external package dependencies exist for the mdatp package:

- The mdatp RPM package requires "glibc >= 2.17", "audit", "policycoreutils", "semanage", "selinux-policy-targeted", "mde-netfilter" 
- For RHEL6 the mdatp RPM package requires "audit", "policycoreutils", "libselinux", "mde-netfilter" 
- For DEBIAN the mdatp package requires "libc6 >= 2.23", "uuid-runtime", "auditd", "mde-netfilter" 

The mde-netfilter package also has the following package dependencies:

- For DEBIAN the mde-netfilter package requires "libnetfilter-queue1", "libglib2.0-0"  
- For RPM the mde-netfilter package requires "libmnl", "libnfnetlink", "libnetfilter_queue", "glib2" 

## Installation failed

Check if the Defender for Endpoint service is running:

```bash
service mdatp status
```

```Output
 ● mdatp.service - Microsoft Defender for Endpoint
   Loaded: loaded (/lib/systemd/system/mdatp.service; enabled; vendor preset: enabled)
   Active: active (running) since Thu 2020-03-26 10:37:30 IST; 23h ago
 Main PID: 1966 (wdavdaemon)
    Tasks: 105 (limit: 4915)
   CGroup: /system.slice/mdatp.service
           ├─1966 /opt/microsoft/mdatp/sbin/wdavdaemon
           ├─1967 /opt/microsoft/mdatp/sbin/wdavdaemon
           └─1968 /opt/microsoft/mdatp/sbin/wdavdaemon
 ```

## Steps to troubleshoot if the mdatp service isn't running

1. Check if "mdatp" user exists:

    ```bash
    id "mdatp"
    ```

    If there's no output, run

    ```bash
    sudo useradd --system --no-create-home --user-group --shell /usr/sbin/nologin mdatp
    ```

2. Try enabling and restarting the service using:

    ```bash
    sudo service mdatp start
    ```

    ```bash
    sudo service mdatp restart
    ```

3. If mdatp.service isn't found upon running the previous command, run:

    ```bash
    sudo cp /opt/microsoft/mdatp/conf/mdatp.service <systemd_path> 
    ```

    where `<systemd_path>` is `/lib/systemd/system` for Ubuntu and Debian distributions and /usr/lib/systemd/system` for Rhel, CentOS, Oracle and SLES. Then rerun step 2.

4. If the above steps don't work, check if SELinux is installed and in enforcing mode. If so, try setting it to permissive (preferably) or disabled mode. It can be done by setting the parameter `SELINUX` to "permissive" or "disabled" in `/etc/selinux/config` file, followed by reboot. Check the man-page of selinux for more details.
Now try restarting the mdatp service using step 2. Revert the configuration change immediately though for security reasons after trying it and reboot.

5. If `/opt` directory is a symbolic link, create a bind mount for `/opt/microsoft`.

6. Ensure that the daemon has executable permission.

    ```bash
    ls -l /opt/microsoft/mdatp/sbin/wdavdaemon
    ```

    ```Output
    -rwxr-xr-x 2 root root 15502160 Mar  3 04:47 /opt/microsoft/mdatp/sbin/wdavdaemon
    ```

    If the daemon doesn't have executable permissions, make it executable using:

    ```bash
    sudo chmod 0755 /opt/microsoft/mdatp/sbin/wdavdaemon
    ```

    and retry running step 2.

7. Ensure that the file system containing wdavdaemon isn't mounted with "noexec".

## If the Defender for Endpoint service is running, but the EICAR text file detection doesn't work

1. Check the file system type using:

    ```bash
    findmnt -T <path_of_EICAR_file>
    ```

    Currently supported file systems for on-access activity are listed [here](microsoft-defender-endpoint-linux.md#system-requirements). Any files outside these file systems won't be scanned.

## Command-line tool "mdatp" isn't working

1. If running the command-line tool `mdatp` gives an error `command not found`, run the following command:

    ```bash
    sudo ln -sf /opt/microsoft/mdatp/sbin/wdavdaemonclient /usr/bin/mdatp
    ```

    and try again.

    If none of the above steps help, collect the diagnostic logs:

    ```bash
    sudo mdatp diagnostic create
    ```

    ```Output
    Diagnostic file created: <path to file>
    ```

    Path to a zip file that contains the logs will be displayed as an output. Reach out to our customer support with these logs.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
