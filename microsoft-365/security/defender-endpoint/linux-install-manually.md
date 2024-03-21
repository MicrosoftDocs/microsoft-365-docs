---
title: Deploy Microsoft Defender for Endpoint on Linux manually
description: Describes how to deploy Microsoft Defender for Endpoint on Linux manually from the command line.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.reviewer: gopkr
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection:
- m365-security
- tier3
- mde-linux
ms.topic: conceptual
ms.subservice: linux
search.appverid: met150
ms.date: 02/21/2024
---

# Deploy Microsoft Defender for Endpoint on Linux manually

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

> [!TIP]
> Looking for advanced guidance on deploying Microsoft Defender for Endpoint on Linux? See [Advanced deployment guide on Defender for Endpoint on Linux](comprehensive-guidance-on-linux-deployment.md).

This article describes how to deploy Microsoft Defender for Endpoint on Linux manually. A successful deployment requires the completion of all of the following tasks:

- [Prerequisites and system requirements](#prerequisites-and-system-requirements)
- [Configure the Linux software repository](#configure-the-linux-software-repository)
  - [RHEL and variants (CentOS, Fedora, Oracle Linux, Amazon Linux 2, Rocky, and Alma)](#rhel-and-variants-centos-fedora-oracle-linux-amazon-linux-2-rocky-and-alma-1)
  - [SLES and variants](#sles-and-variants-1)
  - [Ubuntu and Debian systems](#ubuntu-and-debian-systems-1)
  - [Mariner](#mariner)
- [Application installation](#application-installation)
  - [RHEL and variants (CentOS, Fedora, Oracle Linux, Amazon Linux 2, Rocky and Alma)](#rhel-and-variants-centos-fedora-oracle-linux-amazon-linux-2-rocky-and-alma)
  - [SLES and variants](#sles-and-variants)
  - [Ubuntu and Debian systems](#ubuntu-and-debian-systems)
  - [Mariner](#mariner-1)
- [Download the onboarding package](#download-the-onboarding-package)
- [Client configuration](#client-configuration)

## Prerequisites and system requirements

Before you get started, see [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md) for a description of prerequisites and system requirements for the current software version.

> [!WARNING]
> Upgrading your operating system to a new major version after the product installation requires the product to be reinstalled. You need to [Uninstall](linux-resources.md#uninstall-defender-for-endpoint-on-linux) the existing Defender for Endpoint on Linux, upgrade the operating system, and then reconfigure Defender for Endpoint on Linux following the below steps.

## Configure the Linux software repository

Defender for Endpoint on Linux can be deployed from one of the following channels (denoted below as *[channel]*): *insiders-fast*, *insiders-slow*, or *prod*. Each of these channels corresponds to a Linux software repository. The instructions in this article describe configuring your device to use one of these repositories.

The choice of the channel determines the type and frequency of updates that are offered to your device. Devices in *insiders-fast* are the first ones to receive updates and new features, followed later by *insiders-slow* and lastly by *prod*.

In order to preview new features and provide early feedback, it's recommended that you configure some devices in your enterprise to use either *insiders-fast* or *insiders-slow*.

> [!WARNING]
> Switching the channel after the initial installation requires the product to be reinstalled. To switch the product channel: uninstall the existing package, re-configure your device to use the new channel, and follow the steps in this document to install the package from the new location.

## Installer script

While we discuss manual installation, alternatively, you can use an automated [installer bash script](https://github.com/microsoft/mdatp-xplat/blob/master/linux/installation/mde_installer.sh) provided in our [public GitHub repository](https://github.com/microsoft/mdatp-xplat/).
The script identifies the distribution and version, simplifies the selection of the right repository, sets up the device to pull the latest package, and combines the product installation and onboarding steps.

```bash
> ./mde_installer.sh --help
usage: basename ./mde_installer.sh [OPTIONS]
Options:
-c|--channel      specify the channel from which you want to install. Default: insiders-fast
-i|--install      install the product
-r|--remove       remove the product
-u|--upgrade      upgrade the existing product
-o|--onboard      onboard/offboard the product with <onboarding_script>
-p|--passive-mode set EPP to passive mode
-t|--tag          set a tag by declaring <name> and <value>. ex: -t GROUP Coders
-m|--min_req      enforce minimum requirements
-w|--clean        remove repo from package manager for a specific channel
-v|--version      print out script version
-h|--help         display help
```

Read more [here](https://github.com/microsoft/mdatp-xplat/tree/master/linux/installation).

### RHEL and variants (CentOS, Fedora, Oracle Linux, Amazon Linux 2, Rocky and Alma)

- Install `yum-utils` if it isn't installed yet:

  ```bash
  sudo yum install yum-utils
  ```

  > [!NOTE]
  > Your distribution and version, and identify the closest entry (by major, then minor) for it under `https://packages.microsoft.com/config/rhel/`.

  Use the following table to help guide you in locating the package:

  |Distro & version|Package|
  |---|---|
  |For Alma 8.4 and higher|<https://packages.microsoft.com/config/alma/8/prod.repo>|
  |For Alma 9.2 and higher|<https://packages.microsoft.com/config/alma/9/prod.repo>|
  |For RHEL/Centos/Oracle 9.0-9.8|<https://packages.microsoft.com/config/rhel/9/prod.repo>|
  |For RHEL/Centos/Oracle 8.0-8.9|<https://packages.microsoft.com/config/rhel/8/prod.repo>|
  |For RHEL/Centos/Oracle 7.2-7.9 & Amazon Linux 2 |<https://packages.microsoft.com/config/rhel/7.2/prod.repo>|
  |For Amazon Linux 2023 |<https://packages.microsoft.com/config/amazonlinux/2023/prod.repo>|
  |For Fedora 33|<https://packages.microsoft.com/config/fedora/33/prod.repo>|
  |For Fedora 34|<https://packages.microsoft.com/config/fedora/34/prod.repo>|
  |For Rocky 8.7 and higher|<https://packages.microsoft.com/config/rocky/8/prod.repo>|
  |For Rocky 9.2 and higher|<https://packages.microsoft.com/config/rocky/9/prod.repo>|

  <!--|For RHEL/Centos 6.7-6.10|<https://packages.microsoft.com/config/rhel/6/[channel].repo>|-->

  In the following commands, replace *[version]* and *[channel]* with the information you've identified:

  ```bash
  sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/rhel/[version]/[channel].repo
  ```

  > [!TIP]
  > Use hostnamectl command to identify system related information including release *[version]*.

  For example, if you're running CentOS 7 and want to deploy Defender for Endpoint on Linux from the *prod* channel:

  ```bash
  sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/rhel/7/prod.repo
  ```

  Or if you wish to explore new features on selected devices, you might want to deploy Microsoft Defender for Endpoint on Linux to *insiders-fast* channel:

  ```bash
  sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/rhel/7/insiders-fast.repo
  ```

- Install the Microsoft GPG public key:

  ```bash
  sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
  ```

### SLES and variants

> [!NOTE]
> Your distribution and version, and identify the closest entry (by major, then minor) for it under `https://packages.microsoft.com/config/sles/`.

   In the following commands, replace *[distro]* and *[version]* with the information you've identified:

   ```bash
   sudo zypper addrepo -c -f -n microsoft-[channel] https://packages.microsoft.com/config/[distro]/[version]/[channel].repo
   ```

   > [!TIP]
   > Use SPident command to identify system related information including release *[version]*.

   For example, if you're running SLES 12 and wish to deploy Microsoft Defender for Endpoint on Linux from the *prod* channel:

   ```bash
   sudo zypper addrepo -c -f -n microsoft-prod https://packages.microsoft.com/config/sles/12/prod.repo
   ```

- Install the Microsoft GPG public key:

  ```bash
  sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
  ```

### Ubuntu and Debian systems

- Install `curl` if it isn't installed yet:

  ```bash
  sudo apt-get install curl
  ```

- Install `libplist-utils` if it isn't installed yet:

  ```bash
  sudo apt-get install libplist-utils
  ```

  > [!NOTE]
  > Your distribution and version, and identify the closest entry (by major, then minor) for it under `https://packages.microsoft.com/config/[distro]/`.

  In the following command, replace *[distro]* and *[version]* with the information you've identified:

  ```bash
  curl -o microsoft.list https://packages.microsoft.com/config/[distro]/[version]/[channel].list
  ```

  > [!TIP]
  > Use hostnamectl command to identify system related information including release *[version]*.

  For example, if you're running Ubuntu 18.04 and wish to deploy Microsoft Defender for Endpoint on Linux from the *prod* channel:

  ```bash
  curl -o microsoft.list https://packages.microsoft.com/config/ubuntu/18.04/prod.list
  ```

- Install the repository configuration:

  ```bash
  sudo mv ./microsoft.list /etc/apt/sources.list.d/microsoft-[channel].list
  ```

  For example, if you chose *prod* channel:

  ```bash
  sudo mv ./microsoft.list /etc/apt/sources.list.d/microsoft-prod.list
  ```

- Install the `gpg` package if not already installed:

  ```bash
  sudo apt-get install gpg
  ```

  If `gpg` isn't available, then install `gnupg`.

  ```bash
  sudo apt-get install gnupg
  ```

- Install the Microsoft GPG public key:
  - For Debian 11 and earlier, run the following command.
 
  ```bash
  curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null
  ```
For Debian 12 and later, run the following command.

```bash
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/microsoft-prod.gpg > /dev/null
```
- Install the HTTPS driver if not already installed:

  ```bash
  sudo apt-get install apt-transport-https
  ```

- Update the repository metadata:

  ```bash
  sudo apt-get update
  ```
### Mariner

- Install `dnf-plugins-core` if it isn't installed yet:

  ```bash
  sudo dnf install dnf-plugins-core
  ```

- Configure and Enable the required repositories

  > [!NOTE]
  > On Mariner, Insider Fast Channel is not available.

  If you want to deploy Defender for Endpoint on Linux from the *prod* channel. Use the following commands
  
  ```bash
  sudo dnf install mariner-repos-extras
  sudo dnf config-manager --enable mariner-official-extras
  ```

  Or if you wish to explore new features on selected devices, you might want to deploy Microsoft Defender for Endpoint on Linux to *insiders-slow* channel. Use the following commands:
  
  ```bash
  sudo dnf install mariner-repos-extras-preview
  sudo dnf config-manager --enable mariner-official-extras-preview
  ```

## Application installation

### RHEL and variants (CentOS, Fedora, Oracle Linux, Amazon Linux 2, Rocky, and Alma)

```bash
sudo yum install mdatp
```

> [!NOTE]
> If you have multiple Microsoft repositories configured on your device, you can be specific about which repository to install the package from. The following example shows how to install the package from the `production` channel if you also have the `insiders-fast` repository channel configured on this device. This situation can happen if you are using multiple Microsoft products on your device. Depending on the distribution and the version of your server, the repository alias might be different than the one in the following example.

```bash
# list all repositories
yum repolist
```

```console
...
packages-microsoft-com-prod               packages-microsoft-com-prod        316
packages-microsoft-com-prod-insiders-fast packages-microsoft-com-prod-ins      2
...
```

```bash
# install the package from the production repository
sudo yum --enablerepo=packages-microsoft-com-prod install mdatp
```

### SLES and variants

```bash
sudo zypper install mdatp
```

> [!NOTE]
> If you have multiple Microsoft repositories configured on your device, you can be specific about which repository to install the package from. The following example shows how to install the package from the `production` channel if you also have the `insiders-fast` repository channel configured on this device. This situation can happen if you are using multiple Microsoft products on your device.

```bash
zypper repos
```

```console
...
#  | Alias | Name | ...
XX | packages-microsoft-com-insiders-fast | microsoft-insiders-fast | ...
XX | packages-microsoft-com-prod | microsoft-prod | ...
...
```

```bash
sudo zypper install packages-microsoft-com-prod:mdatp
```

### Ubuntu and Debian systems

```bash
sudo apt-get install mdatp
```

> [!NOTE]
> If you have multiple Microsoft repositories configured on your device, you can be specific about which repository to install the package from. The following example shows how to install the package from the `production` channel if you also have the `insiders-fast` repository channel configured on this device. This situation can happen if you are using multiple Microsoft products on your device.

```bash
cat /etc/apt/sources.list.d/*
```

```console
deb [arch=arm64,armhf,amd64] https://packages.microsoft.com/config/ubuntu/18.04/prod insiders-fast main
deb [arch=amd64] https://packages.microsoft.com/config/ubuntu/18.04/prod bionic main
```

```bash
sudo apt -t bionic install mdatp
```

> [!NOTE]
> Reboots are NOT required after installing or updating Microsoft Defender for Endpoint on Linux except when you're running auditD in immutable mode.

### Mariner

```bash
sudo dnf install mdatp
```

> [!NOTE]
> If you have multiple Microsoft repositories configured on your device, you can be specific about which repository to install the package from. The following example shows how to install the package from the `production` channel if you also have the `insiders-slow` repository channel configured on this device. This situation can happen if you are using multiple Microsoft products on your device.

```bash
sudo dnf config-manager --disable mariner-official-extras-preview
sudo dnf config-manager --enable mariner-official-extras
```

## Download the onboarding package

Download the onboarding package from Microsoft Defender portal.

[!INCLUDE [Defender for Endpoint repackaging warning](../../includes/repackaging-warning.md)]

> [!IMPORTANT]
> If you miss this step, any command executed will show a warning message indicating that the product is unlicensed. Also the `mdatp health` command returns a value of `false`.

1. In the Microsoft Defender portal, go to **Settings > Endpoints > Device management > Onboarding**.
2. In the first drop-down menu, select **Linux Server** as the operating system. In the second drop-down menu, select **Local Script** as the deployment method.
3. Select **Download onboarding package**. Save the file as WindowsDefenderATPOnboardingPackage.zip.

   :::image type="content" source="images/portal-onboarding-linux.png" alt-text="Downloading an onboarding package in the Microsoft Defender portal" lightbox="images/portal-onboarding-linux.png":::

4. From a command prompt, verify that you have the file, and extract the contents of the archive:

   ```bash
   ls -l
   ```

   ```console
   total 8
   -rw-r--r-- 1 test  staff  5752 Feb 18 11:22 WindowsDefenderATPOnboardingPackage.zip
   ```

   ```bash
   unzip WindowsDefenderATPOnboardingPackage.zip
   ```

   ```console
   Archive:  WindowsDefenderATPOnboardingPackage.zip
   inflating: MicrosoftDefenderATPOnboardingLinuxServer.py
   ```

## Client configuration

1. Copy MicrosoftDefenderATPOnboardingLinuxServer.py to the target device.

   > [!NOTE]
   > Initially the client device is not associated with an organization and the *orgId* attribute is blank.

   ```bash
   mdatp health --field org_id
   ```

2. Run MicrosoftDefenderATPOnboardingLinuxServer.py.

   > [!NOTE]
   > To run this command, you must have `python` or `python3` installed on the device depending on the distro and version. If needed, see [Step-by-step Instructions for Installing Python on Linux](https://opensource.com/article/20/4/install-python-linux).

   > [!NOTE]
   > To onboard a device that was previously offboarded you must remove the mdatp_offboard.json file located at /etc/opt/microsoft/mdatp.

   If you're running RHEL 8.x or Ubuntu 20.04 or higher, you need to use `python3`.

   ```bash
   sudo python3 MicrosoftDefenderATPOnboardingLinuxServer.py
   ```

   For the rest of distros and versions, you need to use `python`.

   ```bash
   sudo python MicrosoftDefenderATPOnboardingLinuxServer.py
   ```

3. Verify that the device is now associated with your organization and reports a valid organization identifier:

   ```bash
   mdatp health --field org_id
   ```

4. Check the health status of the product by running the following command. A return value of `true` denotes that the product is functioning as expected:

   ```bash
   mdatp health --field healthy
   ```

   > [!IMPORTANT]
   > When the product starts for the first time, it downloads the latest antimalware definitions. This may take up to a few minutes depending on the network connectivity. During this time the above command returns a value of `false`. You can check the status of the definition update using the following command:
   >
   > ```bash
   > mdatp health --field definitions_status
   > ```
   >
   > Please note that you may also need to configure a proxy after completing the initial installation. See [Configure Defender for Endpoint on Linux for static proxy discovery: Post-installation configuration](linux-static-proxy-configuration.md#post-installation-configuration).

5. Run an AV detection test to verify that the device is properly onboarded and reporting to the service. Perform the following steps on the newly onboarded device:

   - Ensure that real-time protection is enabled (denoted by a result of `true` from running the following command):

     ```bash
     mdatp health --field real_time_protection_enabled
     ```

     If it isn't enabled, execute the following command:

     ```bash
     mdatp config real-time-protection --value enabled
     ```

   - Open a Terminal window and execute the following command:

     ``` bash
     curl -o /tmp/eicar.com.txt https://secure.eicar.org/eicar.com.txt
     ```

   - The file should be quarantined by Defender for Endpoint on Linux. Use the following command to list all the detected threats:

     ```bash
     mdatp threat list
     ```

6. Run an EDR detection test and simulate a detection to verify that the device is properly onboarded and reporting to the service. Perform the following steps on the newly onboarded device:

   - Verify that the onboarded Linux server appears in Microsoft Defender XDR. If this is the first onboarding of the machine, it can take up to 20 minutes until it appears.

   - Download and extract the [script file](https://aka.ms/LinuxDIY) to an onboarded Linux server and run the following command: `./mde_linux_edr_diy.sh`

   - After a few minutes, a detection should be raised in Microsoft Defender XDR.

   - Look at the alert details, machine timeline, and perform your typical investigation steps.

## Microsoft Defender for Endpoint package external package dependencies

The following external package dependencies exist for the mdatp package:

- The mdatp RPM package requires "glibc >= 2.17", "audit", "policycoreutils", "semanage" "selinux-policy-targeted", "mde-netfilter"
- For RHEL6 the mdatp RPM package requires "audit", "policycoreutils", "libselinux", "mde-netfilter"
- For DEBIAN the mdatp package requires "libc6 >= 2.23", "uuid-runtime", "auditd", "mde-netfilter"
- For Mariner the mdatp package requires "attr", "audit", "diffutils", "libacl", "libattr", "libselinux-utils", "selinux-policy", "policycoreutils", "mde-netfilter"

The mde-netfilter package also has the following package dependencies:

- For DEBIAN, the mde-netfilter package requires "libnetfilter-queue1", "libglib2.0-0"
- For RPM, the mde-netfilter package requires "libmnl", "libnfnetlink", "libnetfilter_queue", "glib2"
- For Mariner, the mde-netfilter package requires "libnfnetlink", "libnetfilter_queue"

If the Microsoft Defender for Endpoint installation fails due to missing dependencies errors, you can manually download the prerequisite dependencies.


## Log installation issues

See [Log installation issues](linux-resources.md#log-installation-issues) for more information on how to find the automatically generated log that is created by the installer when an error occurs.

## How to migrate from Insiders-Fast to Production channel

1. Uninstall the "Insiders-Fast channel" version of Defender for Endpoint on Linux.

   ```bash
   sudo yum remove mdatp
   ```

1. Disable the Defender for Endpoint on Linux Insiders-Fast repo

   ```bash
   sudo yum repolist
   ```

   > [!NOTE]
   > The output should show "packages-microsoft-com-fast-prod".

   ```bash
   sudo yum-config-manager --disable packages-microsoft-com-fast-prod
   ```

1. Redeploy Microsoft Defender for Endpoint on Linux using the "Production channel".

## Uninstallation

See [Uninstall](linux-resources.md#uninstall-defender-for-endpoint-on-linux) for details on how to remove Defender for Endpoint on Linux from client devices.

## See also

- [Investigate agent health issues](health-status.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
