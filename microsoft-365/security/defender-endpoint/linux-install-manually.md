---
title: Deploy Microsoft Defender for Endpoint on Linux manually
ms.reviewer:
description: Describes how to deploy Microsoft Defender for Endpoint on Linux manually from the command line.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, installation, deploy, uninstallation, puppet, ansible, linux, redhat, ubuntu, debian, sles, suse, centos
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Deploy Microsoft Defender for Endpoint on Linux manually

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

This article describes how to deploy Microsoft Defender for Endpoint on Linux manually. A successful deployment requires the completion of all of the following tasks:

- [Deploy Microsoft Defender for Endpoint on Linux manually](#deploy-microsoft-defender-for-endpoint-on-linux-manually)
  - [Prerequisites and system requirements](#prerequisites-and-system-requirements)
  - [Configure the Linux software repository](#configure-the-linux-software-repository)
    - [RHEL and variants (CentOS and Oracle Linux)](#rhel-and-variants-centos-and-oracle-linux)
    - [SLES and variants](#sles-and-variants)
    - [Ubuntu and Debian systems](#ubuntu-and-debian-systems)
  - [Application installation](#application-installation)
  - [Download the onboarding package](#download-the-onboarding-package)
  - [Client configuration](#client-configuration)
  - [Installer script](#installer-script)
  - [Log installation issues](#log-installation-issues)
  - [Operating system upgrades](#operating-system-upgrades)
  - [Uninstallation](#uninstallation)

## Prerequisites and system requirements

Before you get started, see [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md) for a description of prerequisites and system requirements for the current software version.

## Configure the Linux software repository

Defender for Endpoint on Linux can be deployed from one of the following channels (denoted below as *[channel]*): *insiders-fast*, *insiders-slow*, or *prod*. Each of these channels corresponds to a Linux software repository. Instructions for configuring your device to use one of these repositories are provided below.

The choice of the channel determines the type and frequency of updates that are offered to your device. Devices in *insiders-fast* are the first ones to receive updates and new features, followed later by *insiders-slow* and lastly by *prod*.

In order to preview new features and provide early feedback, it is recommended that you configure some devices in your enterprise to use either *insiders-fast* or *insiders-slow*.

> [!WARNING]
> Switching the channel after the initial installation requires the product to be reinstalled. To switch the product channel: uninstall the existing package, re-configure your device to use the new channel, and follow the steps in this document to install the package from the new location.

### RHEL and variants (CentOS and Oracle Linux)

- Install `yum-utils` if it isn't installed yet:

    ```bash
    sudo yum install yum-utils
    ```

- Note your distribution and version, and identify the closest entry (by major, then minor) for it under `https://packages.microsoft.com/config/`. For instance, RHEL 7.9 is closer to 7.4 than to 8.

    In the below commands, replace *[distro]* and *[version]* with the information you've identified:

    > [!NOTE]
    > In case of Oracle Linux, replace *[distro]* with "rhel".

    ```bash
    sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/[distro]/[version]/[channel].repo
    ```

    For example, if you are running CentOS 7 and want to deploy Defender for Endpoint on Linux from the *prod* channel:

    ```bash
    sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/centos/7/prod.repo
    ```

    Or if you wish to explore new features on selected devices, you might want to deploy Microsoft Defender for Endpoint on Linux to *insiders-fast* channel:

    ```bash
    sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/centos/7/insiders-fast.repo
    ```

- Install the Microsoft GPG public key:

    ```bash
    sudo rpm --import http://packages.microsoft.com/keys/microsoft.asc
    ```

- Download and make usable all the metadata for the currently enabled yum repositories:

    ```bash
    yum makecache
    ```

### SLES and variants

- Note your distribution and version, and identify the closest entry(by major, then minor) for it under `https://packages.microsoft.com/config/`.

    In the following commands, replace *[distro]* and *[version]* with the information you've identified:

    ```bash
    sudo zypper addrepo -c -f -n microsoft-[channel] https://packages.microsoft.com/config/[distro]/[version]/[channel].repo
    ```

    For example, if you are running SLES 12 and wish to deploy Microsoft Defender for Endpoint on Linux from the *prod* channel:

    ```bash
    sudo zypper addrepo -c -f -n microsoft-prod https://packages.microsoft.com/config/sles/12/prod.repo
    ```

- Install the Microsoft GPG public key:

    ```bash
    sudo rpm --import http://packages.microsoft.com/keys/microsoft.asc
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

- Note your distribution and version, and identify the closest entry (by major, then minor) for it under `https://packages.microsoft.com/config`.

    In the below command, replace *[distro]* and *[version]* with the information you've identified:

    ```bash
    curl -o microsoft.list https://packages.microsoft.com/config/[distro]/[version]/[channel].list
    ```

    For example, if you are running Ubuntu 18.04 and wish to deploy MDE for Linux from the *prod* channel:

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

  If `gpg` is not available, then install `gnupg`.

- Install the Microsoft GPG public key:

    ```bash
    curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    ```

- Install the https driver if it's not already present:

    ```bash
    sudo apt-get install apt-transport-https
    ```

- Update the repository metadata:

    ```bash
    sudo apt-get update
    ```

## Application installation

- RHEL and variants (CentOS and Oracle Linux):

    ```bash
    sudo yum install mdatp
    ```

    If you have multiple Microsoft repositories configured on your device, you can be specific about which repository to install the package from. The following example shows how to install the package from the `production` channel if you also have the `insiders-fast` repository channel configured on this device. This situation can happen if you are using multiple Microsoft products on your device. Depending on the distribution and the version of your server, the repository alias might be different than the one in the following example.

    ```bash
    # list all repositories
    yum repolist
    ```

    ```Output
    ...
    packages-microsoft-com-prod               packages-microsoft-com-prod        316
    packages-microsoft-com-prod-insiders-fast packages-microsoft-com-prod-ins      2
    ...
    ```

    ```bash
    # install the package from the production repository
    sudo yum --enablerepo=packages-microsoft-com-prod install mdatp
    ```

- SLES and variants:

    ```bash
    sudo zypper install mdatp
    ```

    If you have multiple Microsoft repositories configured on your device, you can be specific about which repository to install the package from. The following example shows how to install the package from the `production` channel if you also have the `insiders-fast` repository channel configured on this device. This situation can happen if you are using multiple Microsoft products on your device.

    ```bash
    zypper repos
    ```

    ```Output
    ...
    #  | Alias | Name | ...
    XX | packages-microsoft-com-insiders-fast | microsoft-insiders-fast | ...
    XX | packages-microsoft-com-prod | microsoft-prod | ...
    ...

    ```

    ```bash
    sudo zypper install packages-microsoft-com-prod:mdatp
    ```

- Ubuntu and Debian system:

    ```bash
    sudo apt-get install mdatp
    ```

    If you have multiple Microsoft repositories configured on your device, you can be specific about which repository to install the package from. The following example shows how to install the package from the `production` channel if you also have the `insiders-fast` repository channel configured on this device. This situation can happen if you are using multiple Microsoft products on your device.

    ```bash
    cat /etc/apt/sources.list.d/*
    ```

    ```Output
    deb [arch=arm64,armhf,amd64] https://packages.microsoft.com/ubuntu/18.04/prod insiders-fast main
    deb [arch=amd64] https://packages.microsoft.com/ubuntu/18.04/prod bionic main
    ```

    ```bash
    sudo apt -t bionic install mdatp
    ```

## Download the onboarding package

Download the onboarding package from Microsoft 365 Defender portal:

1. In the Microsoft 365 Defender portal, go to **Settings > Endpoints > Device management > Onboarding**.
2. In the first drop-down menu, select **Linux Server** as the operating system. In the second drop-down menu, select **Local Script** as the deployment method.
3. Select **Download onboarding package**. Save the file as WindowsDefenderATPOnboardingPackage.zip.

    ![Microsoft 365 Defender portal screenshot](images/portal-onboarding-linux.png)

4. From a command prompt, verify that you have the file.
    Extract the contents of the archive:

    ```bash
    ls -l
    ```

    ```Output
    total 8
    -rw-r--r-- 1 test  staff  5752 Feb 18 11:22 WindowsDefenderATPOnboardingPackage.zip
    ```

    ```bash
    unzip WindowsDefenderATPOnboardingPackage.zip
    ```

    ```Output
    Archive:  WindowsDefenderATPOnboardingPackage.zip
    inflating: MicrosoftDefenderATPOnboardingLinuxServer.py
    ```

## Client configuration

1. Copy MicrosoftDefenderATPOnboardingLinuxServer.py to the target device.

    Initially the client device is not associated with an organization. Note that the *orgId* attribute is blank:

    ```bash
    mdatp health --field org_id
    ```

2. Run MicrosoftDefenderATPOnboardingLinuxServer.py.

    > [!NOTE]
    > To run this command, you must have `python` installed on the device. If you're running RHEL 8.x or Ubuntu 20.04 or higher, then you will need to use Python 3 instead of Python.

    ```bash
    python MicrosoftDefenderATPOnboardingLinuxServer.py
    ```

3. Verify that the device is now associated with your organization and reports a valid organization identifier:

    ```bash
    mdatp health --field org_id
    ```

4. A few minutes after you complete the installation, you can see the status by running the following command. A return value of `1` denotes that the product is functioning as expected:

    ```bash
    mdatp health --field healthy
    ```

    > [!IMPORTANT]
    > When the product starts for the first time, it downloads the latest antimalware definitions. Depending on your Internet connection, this can take up to a few minutes. During this time the above command returns a value of `false`. You can check the status of the definition update using the following command:
    >
    > ```bash
    > mdatp health --field definitions_status
    > ```
    >
    > Please note that you may also need to configure a proxy after completing the initial installation. See [Configure Defender for Endpoint on Linux for static proxy discovery: Post-installation configuration](/microsoft-365/security/defender-endpoint/linux-static-proxy-configuration#post-installation-configuration).

5. Run a detection test to verify that the device is properly onboarded and reporting to the service. Perform the following steps on the newly onboarded device:

    - Ensure that real-time protection is enabled (denoted by a result of `1` from running the following command):

        ```bash
        mdatp health --field real_time_protection_enabled
        ```

    - Open a Terminal window. Copy and execute the following command:

        ``` bash
        curl -o /tmp/eicar.com.txt https://www.eicar.org/download/eicar.com.txt
        ```

    - The file should have been quarantined by Defender for Endpoint on Linux. Use the following command to list all the detected threats:

        ```bash
        mdatp threat list
        ```

## Experience Linux endpoint detection and response (EDR) capabilities with simulated attacks

To test out the functionalities of EDR for Linux, follow the steps below to simulate a detection on your Linux server and investigate the case.

1. Verify that the onboarded Linux server appears in Microsoft 365 Defender. If this is the first onboarding of the machine, it can take up to 20 minutes until it appears.

2. Download and extract the [script file](https://aka.ms/LinuxDIY) to an onboarded Linux server and run the following command: `./mde_linux_edr_diy.sh`

3. After a few minutes, a detection should be raised in Microsoft 365 Defender.

4. Look at the alert details, machine timeline, and perform your typical investigation steps.

## Installer script

Alternatively, you can use an automated [installer bash script](https://github.com/microsoft/mdatp-xplat/blob/master/linux/installation/mde_installer.sh) provided in our [public GitHub repository](https://github.com/microsoft/mdatp-xplat/).
The script identifies the distribution and version, and sets up the device to pull the latest package and install it.
You can also onboard with a provided script.

```bash
❯ ./mde_installer.sh --help
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

## Log installation issues

See [Log installation issues](linux-resources.md#log-installation-issues) for more information on how to find the automatically generated log that is created by the installer when an error occurs.

## Operating system upgrades

When upgrading your operating system to a new major version, you must first uninstall Defender for Endpoint on Linux, install the upgrade, and finally reconfigure Defender for Endpoint on Linux on your device.

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

1. Redeploy MDE for Linux using the "Production channel".

## Uninstallation

See [Uninstall](linux-resources.md#uninstall) for details on how to remove Defender for Endpoint on Linux from client devices.

## See also

- [Investigate agent health issues](health-status.md)
