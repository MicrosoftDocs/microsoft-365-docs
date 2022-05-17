---
title: Onboard devices to Microsoft Defender for Business
description: See how to get devices onboarded to Defender for Business to protect your devices from day one.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# Onboard devices to Microsoft Defender for Business

With Microsoft Defender for Business, you have several options to choose from for onboarding your company's devices. This article walks you through your options and includes an overview of how onboarding works.

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about security</a>. We'd love to hear from you!
>

## What to do

1. Select the tab for your operating system: **Windows 10 and 11**, **Windows Server**, **macOS**, **Linux**, or **mobile**.
2. View your onboarding options and follow the guidance on the selected tab.
3. Proceed to your next steps.

## [**Windows 10 and 11**](#tab/Windows10and11)

## Windows 10 and 11

Choose one of the following options to onboard Windows client devices to Defender for Business:

- [Local script](#local-script-for-windows-10-and-11) (for onboarding devices manually in the Microsoft 365 Defender portal)
- [Group Policy](#group-policy-for-windows-10-and-11) (if you're already using Group Policy in your organization)
- [Microsoft Intune](#microsoft-intune-for-windows-10-and-11) (included in [Microsoft 365 Business Premium](../../business-premium/index.md))

### Local script for Windows 10 and 11

You can use a local script to onboard Windows client devices. When you run the onboarding script on a device, it creates a trust with Azure Active Directory (if that trust doesn't already exist), enrolls the device in Microsoft Intune (if it isn't already enrolled), and then onboards the device to Defender for Business. The local script method works even if you don't currently have Intune. We recommend onboarding up to 10 devices at a time using this method.

> [!TIP]
> We recommend onboarding up to 10 devices at a time when you use the local script method.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select **Windows 10 and 11**, and then, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**. We recommend saving the onboarding package to a removable drive.

5. On a Windows device, extract the contents of the configuration package to a location, such as the Desktop folder. You should have a file named `WindowsDefenderATPLocalOnboardingScript.cmd`. 

6. Open Command Prompt as an administrator.

7. Type the location of the script file. For example, if you copied the file to the Desktop folder, you would type `%userprofile%\Desktop\WindowsDefenderATPLocalOnboardingScript.cmd`, and then press the Enter key (or select **OK**).

8. After the script runs, proceed to [Run a detection test](#running-a-detection-test-on-a-windows-client).

### Group Policy for Windows 10 and 11

If you prefer to use Group Policy to onboard Windows clients, follow the guidance in [Onboard Windows devices using Group Policy](../defender-endpoint/configure-endpoints-gp.md). This article describes the steps for onboarding to Microsoft Defender for Endpoint; however, the steps for onboarding to Defender for Business are similar.

### Microsoft Intune for Windows 10 and 11

If your subscription includes Intune, you can onboard Windows clients and other devices in the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). For example, if you have [Microsoft 365 Business Premium](../../business/index.yml), you've Intune as part of your subscription.  

There are several methods available for enrolling devices in Intune. We recommend starting with one of the following methods:

- [Enable Windows automatic enrollment](/mem/intune/enrollment/windows-enroll) for company-owned or company-managed devices
- [Ask users to enroll their own Windows 10/11 devices in Intune](/mem/intune/user-help/enroll-windows-10-device)

#### To enable automatic enrollment for Windows 10 and 11

When you set up automatic enrollment, users add their work account to the device. In the background, the device registers and joins Azure Active Directory (Azure AD), and is enrolled in Intune.

1. Go to the Azure portal ([https://portal.azure.com/](https://portal.azure.com/)) and sign in. 

2. Select **Azure Active Directory** > **Mobility (MDM and MAM)** > **Microsoft Intune**.

3. Configure the **MDM User scope** and the **MAM user scope**.

   :::image type="content" source="media/mem-mam-scope-azure-ad.png" alt-text="Screenshot of setting MDM user scope and MAM user scope in Intune.":::

   - For MDM User scope, we recommend selecting **All** so that all users can automatically enroll their Windows devices.
   - In the MAM user scope section, we recommend using the following default values for the URLs:

       - **MDM Terms of use URL**
       - **MDM Discovery URL**
       - **MDM Compliance URL**

4. Choose **Save**.

5. After a device has been enrolled in Intune, you can add it to a device group. [Learn more about device groups in Microsoft Defender for Business](mdb-create-edit-device-groups.md).


> [!TIP]
> To learn more about automatic enrollment, see [Enable Windows automatic enrollment](/mem/intune/enrollment/windows-enroll).

#### To have users enroll their own Windows 10 and 11 devices

1. Watch the following video to see how enrollment works: <br/><br/>

   > [!VIDEO https://www.youtube.com/embed/TKQxEckBHiE?rel=0]  

2. Share this article with users in your organization: [Enroll Windows 10/11 devices in Intune](/mem/intune/user-help/enroll-windows-10-device).

3. After a device has been enrolled in Intune, you can add it to a device group. [Learn more about device groups in Microsoft Defender for Business](mdb-create-edit-device-groups.md).

### Running a detection test on a Windows 10 or 11 device

After you've onboarded Windows devices to Defender for Business, you can run a detection test on a Windows device to make sure that everything is working correctly.

1. On the Windows device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command has run, the Command Prompt window will close automatically. If successful, the detection test will be marked as completed, and a new alert will appear in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device in about 10 minutes.

## View a list of onboarded devices

To view the list of devices that are onboarded to Defender for Business, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, under **Endpoints**, choose **Device inventory**.

## Next steps

- If you have other devices to onboard, select the tab that corresponds to the operating system on the devices [(Windows 10 and 11, Windows Server, macOS, Linux, or mobile devices](#what-to-do)), and follow the guidance on that tab.
- If you're done onboarding devices, proceed to [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)
- See [Get started using Microsoft Defender for Business](mdb-get-started.md).

## [**Windows Server**](#tab/WindowsServers)

## Windows Server

> [!IMPORTANT]
> The ability to onboard Windows Server endpoints is currently in preview. Make sure that you meet the following requirements before onboarding a Windows Server endpoint:
> - You have a server license for each server instance in either Defender for Business (standalone) or Microsoft 365 Business Premium.
> - You have turned on preview features. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), go to **Settings** > **Endpoints** > **General** > **Advanced features** > **Preview features**.

You can onboard an instance of Windows Server to Defender for Business by using a local script.

### Local script for Windows Server

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system, such as **Windows Server 1803, 2019, and 2022**, and then, in the **Deployment method** section, choose **Local script**. 

   If you select **Windows Server 2012 R2 and 2016**, you'll have two packages to download and run: an installation package, and an onboarding package. The installation package contains an MSI file that installs the Microsoft Defender for Business agent. The onboarding package contains the script to onboard your Windows Server endpoint to Defender for Business. 

4. Select **Download onboarding package**. We recommend saving the onboarding package to a removable drive.

   If you selected **Windows Server 2012 R2 and 2016**, also select **Download installation package**, and save it to a removable drive

5. On your Windows Server endpoint, extract the contents of the installation/onboarding package(s) to a location, such as the Desktop folder. You should have a file named `WindowsDefenderATPLocalOnboardingScript.cmd`. 

   If you're onboarding Windows Server 2012 R2 or Windows Server 2016, extract the installation package first.

6. Open Command Prompt as an administrator.

7. If you're onboarding Windows Server 2012R2 or Windows Server 2016, run the following command: `Msiexec /i md4ws.msi /quiet`. 

   If you're onboarding Windows Server 1803, 2019, or 2022, skip this step and proceed to step 8.

8. Type the location of the script file. For example, if you copied the file to the Desktop folder, you would type `%userprofile%\Desktop\WindowsDefenderATPLocalOnboardingScript.cmd`, and then press the Enter key (or select **OK**).

9. Proceed to [Run a detection test on Windows Server](#running-a-detection-test-on-windows-server)

### Running a detection test on Windows Server

After you've onboarded your Windows Server endpoint to Defender for Business, you can run a detection test to make sure that everything is working correctly.

1. On the Windows Server device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command has run, the Command Prompt window will close automatically. If successful, the detection test will be marked as completed, and a new alert will appear in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device in about 10 minutes.

## View a list of onboarded devices

To view the list of devices that are onboarded to Defender for Business, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, under **Endpoints**, choose **Device inventory**.

## Next steps

- If you have other devices to onboard, select the tab that corresponds to the operating system on the devices [(Windows 10 and 11, Windows Server, macOS, Linux, or mobile devices](#what-to-do)), and follow the guidance on that tab.
- If you're done onboarding devices, proceed to [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)
- See [Get started using Microsoft Defender for Business](mdb-get-started.md).

## [**macOS**](#tab/macOSdevices)

## macOS computers

> [!NOTE]
> - We recommend using a [local script to onboard macOS devices](#local-script-for-macos). Although you can [set up enrollment for macOS devices in Intune](/mem/intune/enrollment/macos-enroll), the local script is the simplest method for onboarding macOS devices to Defender for Business. 

Choose one of the following options to onboard macOS devices:

- [Local script for macOS](#local-script-for-macos) (*recommended*)
- [Intune for macOS](#microsoft-intune-for-macos)

### Local script for macOS

When you run the local script on a macOS device, it creates a trust with Azure Active Directory (if that trust doesn't already exist), enrolls the device in Microsoft Intune (if it isn't already enrolled), and then onboards the device to Defender for Business. The local script method works even if you don't currently have Intune. We recommend onboarding up to 10 devices at a time using this method.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select **macOS**, and then, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**, and save it to a removable drive. Also select **Download installation package**, and save it to your removable device.

5. On a macOS device, save the installation package as `wdav.pkg` to a local directory.

6. Save the onboarding package as `WindowsDefenderATPOnboardingPackage.zip` to the same directory you used for the installation package.

7. Use Finder to navigate to `wdav.pkg` you saved, and then open it.

8. Select **Continue**, agree with the License terms, and then enter your password when prompted.

9. You'll be prompted to allow a driver from Microsoft to be installed (either "System Extension Blocked" or "Installation is on hold", or both. The driver must be allowed to be installed. To allow the installation, select **Open Security Preferences** or **Open System Preferences** > **Security & Privacy**, and then select **Allow**.

10. Use the following Python command in Bash to run the onboarding package: `/usr/bin/python MicrosoftDefenderATPOnboardingMacOs.py`

11. After a device has been enrolled in Intune, you can add it to a device group. [Learn more about device groups in Microsoft Defender for Business](mdb-create-edit-device-groups.md).

### Microsoft Intune for macOS

If your subscription includes Microsoft Intune, you can onboard macOS devices in the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). For example, if you have [Microsoft 365 Business Premium](../../business/index.yml), you've Intune as part of your subscription.  

There are several methods available for enrolling devices in Intune. We recommend starting with one of the following methods:

- [Choose an option for company-owned macOS devices](#options-for-company-owned-macos-devices)
- [Ask users to enroll their own macOS devices in Intune](#ask-users-to-enroll-their-own-macos-devices-in-intune)

#### Options for company-owned macOS devices

Choose one of the options in the following table to enroll company-managed macOS devices in Intune:

| Option  | Description  |
|---------|---------|
| Apple Automated Device Enrollment |  Use this method to automate the enrollment experience on devices purchased through Apple Business Manager or Apple School Manager. Automated device enrollment deploys the enrollment profile over-the-air, so you don't need to have physical access to devices. <br/><br/>See [Automatically enroll macOS devices with the Apple Business Manager or Apple School Manager](/mem/intune/enrollment/device-enrollment-program-enroll-macos). |
| Device enrollment manager (DEM)  |  Use this method for large-scale deployments and when there are multiple people in your organization who can help with enrollment setup. Someone with device enrollment manager (DEM) permissions can enroll up to 1,000 devices with a single Azure Active Directory account. This method uses the Company Portal app or Microsoft Intune app to enroll devices. You can't use a DEM account to enroll devices via Automated Device Enrollment.<br/><br/> See [Enroll devices in Intune by using a device enrollment manager account](/mem/intune/enrollment/device-enrollment-manager-enroll).  |
| Direct enrollment  | Direct enrollment enrolls devices with no user affinity, so this method is best for devices that aren't associated with a single user. This method requires you to have physical access to the Macs you're enrolling. <br/><br/>See [Use Direct Enrollment for macOS devices](/mem/intune/enrollment/device-enrollment-direct-enroll-macos).      |

#### Ask users to enroll their own macOS devices in Intune

If your business prefers to have people enroll their own devices in Intune, ask users to follow these steps:

1. Go to the Company Portal website ([https://portal.manage.microsoft.com/](https://portal.manage.microsoft.com/)) and sign in.

2. Follow the instructions on the Company Portal website to add their device.

3. Install the Company Portal app at [https://aka.ms/EnrollMyMac](https://aka.ms/EnrollMyMac), and follow the instructions in the app.

### Confirm that a macOS device is onboarded

1. To confirm that the device is associated with your company, use the following Python command in Bash: `mdatp health --field org_id`.

2. If you're using macOS 10.15 (Catalina) or later, grant Defender for Business consent to protect your device. Go to **System Preferences** > **Security & Privacy** > **Privacy** > **Full Disk Access**. Select the lock icon to make changes (bottom of the dialog box), and then select **Microsoft Defender for Business** (or **Defender for Endpoint**, if that's what you see).

3. To verify that the device is onboarded, use the following command in Bash: `mdatp health --field real_time_protection_enabled`

4. After a device has been enrolled in Intune, you can add it to a device group. [Learn more about device groups in Microsoft Defender for Business](mdb-create-edit-device-groups.md).

## View a list of onboarded devices

To view the list of devices that are onboarded to Defender for Business, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, under **Endpoints**, choose **Device inventory**.

## Next steps

- If you have other devices to onboard, select the tab that corresponds to the operating system on the devices ([Windows 10 and 11, Windows Server, macOS, Linux, or mobile devices](#what-to-do)), and follow the guidance on that tab.
- If you're done onboarding devices, proceed to [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)
- See [Get started using Microsoft Defender for Business](mdb-get-started.md).

## [**Linux Server**](#tab/LinuxDevices)

## Linux Server

> [!IMPORTANT]
> The ability to onboard Linux Server endpoints is currently in preview. Make sure that you meet the following requirements before onboarding a Windows Server endpoint:
> - You have a server license for each server instance in either Defender for Business (standalone) or Microsoft 365 Business Premium.
> - You have turned on preview features. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), go to **Settings** > **Endpoints** > **General** > **Advanced features** > **Preview features**.
> - See [Microsoft Defender for Endpoint on Linux](../defender-endpoint/microsoft-defender-endpoint-linux.md) for a description of prerequisites and system requirements for the current software version.

You can onboard an instance of Linux Server to Defender for Business by using a local script.

### Local script for Linux Server

> [!WARNING]
> Upgrading your operating system to a new major version after the product installation requires the product to be reinstalled. You must first [uninstall](../defender-endpoint/linux-resources.md#uninstall) the existing Defender for Business application on Linux, upgrade the operating system, and then reconfigure Defender for Business using the following steps.

### Configure the Linux software repository

Defender for Business can be deployed on an instance of Linux Server from one of the following channels (denoted below as *[channel]*): *insiders-fast*, *insiders-slow*, or *prod*. Each of these channels corresponds to a Linux software repository. Instructions for configuring your device to use one of these repositories are provided below.

The choice of the channel determines the type and frequency of updates that are offered to your device. Devices in *insiders-fast* are the first ones to receive updates and new features, followed later by *insiders-slow* and lastly by *prod*.

In order to preview new features and provide early feedback, it is recommended that you configure some devices in your enterprise to use either *insiders-fast* or *insiders-slow*.

> [!WARNING]
> Switching the channel after the initial installation requires the product to be reinstalled. To switch the product channel: uninstall the existing package, re-configure your device to use the new channel, and follow the steps in this document to install the package from the new location.

#### RHEL and variants (CentOS, Fedora, Oracle Linux and Amazon Linux 2)

**Step 1**: Install `yum-utils` if it isn't installed yet:

```bash
sudo yum install yum-utils
```

> [!NOTE]
> Your distribution and version, and identify the closest entry (by major, then minor) for it under `https://packages.microsoft.com/config/rhel/`.

Use the following table to help guide you in locating the package:

|Distro & version|Package|
|---|---|
|For RHEL/Centos/Oracle 8.0-8.5|<https://packages.microsoft.com/config/rhel/8/[channel].repo>|
|For RHEL/Centos/Oracle 7.2-7.9 & Amazon Linux 2 |<https://packages.microsoft.com/config/rhel/7/[channel].repo>|
|For RHEL/Centos 6.7-6.10|<https://packages.microsoft.com/config/rhel/6/[channel].repo>|
|For Fedora 33|<https://packages.microsoft.com/config/fedora/33/prod.repo>|
|For Fedora 34|<https://packages.microsoft.com/config/fedora/34/prod.repo>|

In the following commands, replace *[version]* and *[channel]* with the information you've identified:

```bash
sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/rhel/[version]/[channel].repo
```

> [!TIP]
> Use hostnamectl command to identify system related information including release *[version]*.

For example, if you are running CentOS 7 and want to deploy Defender for Endpoint on Linux from the *prod* channel:

```bash
sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/rhel/7/prod.repo
```

Or if you wish to explore new features on selected devices, you might want to deploy Microsoft Defender for Endpoint on Linux to *insiders-fast* channel:

```bash
sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/rhel/7/insiders-fast.repo
```

**Step 2**: Install the Microsoft GPG public key:

```bash
sudo rpm --import http://packages.microsoft.com/keys/microsoft.asc
```

#### SLES and variants

> [!NOTE]
> Your distribution and version, and identify the closest entry (by major, then minor) for it under `https://packages.microsoft.com/config/sles/`.

In the following commands, replace *[distro]* and *[version]* with the information you've identified:

```bash
sudo zypper addrepo -c -f -n microsoft-[channel] https://packages.microsoft.com/config/[distro]/[version]/[channel].repo
```

> [!TIP]
> Use SPident command to identify system related information including release *[version]*.

For example, if you are running SLES 12 and wish to deploy Microsoft Defender for Endpoint on Linux from the *prod* channel:

```bash
sudo zypper addrepo -c -f -n microsoft-prod https://packages.microsoft.com/config/sles/12/prod.repo
```

Install the Microsoft GPG public key:

```bash
sudo rpm --import http://packages.microsoft.com/keys/microsoft.asc
```

#### Ubuntu and Debian systems

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

   In the below command, replace *[distro]* and *[version]* with the information you've identified:

   ```bash
    curl -o microsoft.list https://packages.microsoft.com/config/[distro]/[version]/[channel].list
   ```

   > [!TIP]
   > Use hostnamectl command to identify system related information including release *[version]*.

   For example, if you are running Ubuntu 18.04 and wish to deploy Microsoft Defender for Endpoint on Linux from the *prod* channel:

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

    ```bash
    sudo apt-get install gnupg
    ```

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

### Application installation

- RHEL and variants (CentOS and Oracle Linux):

    ```bash
    sudo yum install mdatp
    ```

    > [!NOTE]
    > If you have multiple Microsoft repositories configured on your device, you can be specific about which repository to install the package from. The following example shows how to install the package from the `production` channel if you also have the `insiders-fast` repository channel configured on this device. This situation can happen if you are using multiple Microsoft products on your device. Depending on the distribution and the version of your server, the repository alias might be different than the one in the following example.

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

    > [!NOTE]
    > If you have multiple Microsoft repositories configured on your device, you can be specific about which repository to install the package from. The following example shows how to install the package from the `production` channel if you also have the `insiders-fast` repository channel configured on this device. This situation can happen if you are using multiple Microsoft products on your device.

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

    > [!NOTE]
    > If you have multiple Microsoft repositories configured on your device, you can be specific about which repository to install the package from. The following example shows how to install the package from the `production` channel if you also have the `insiders-fast` repository channel configured on this device. This situation can happen if you are using multiple Microsoft products on your device.

    ```bash
    cat /etc/apt/sources.list.d/*
    ```

    ```Output
    deb [arch=arm64,armhf,amd64] https://packages.microsoft.com/config/ubuntu/18.04/prod insiders-fast main
    deb [arch=amd64] https://packages.microsoft.com/config/ubuntu/18.04/prod bionic main
    ```

    ```bash
    sudo apt -t bionic install mdatp
    ```

### Download the onboarding package

Download the onboarding package from Microsoft 365 Defender portal.

> [!IMPORTANT]
> If you miss this step, any command executed will show a warning message indicating that the product is unlicensed. Also the `mdatp health` command returns a value of `false`.

1. In the Microsoft 365 Defender portal, go to **Settings > Endpoints > Device management > Onboarding**.

2. In the first drop-down menu, select **Linux Server** as the operating system. In the second drop-down menu, select **Local Script** as the deployment method.

3. Select **Download onboarding package**. Save the file as WindowsDefenderATPOnboardingPackage.zip.

   :::image type="content" source="images/portal-onboarding-linux.png" alt-text="Downloading an onboarding package in the Microsoft 365 Defender portal" lightbox="images/portal-onboarding-linux.png":::

4. From a command prompt, verify that you have the file, and extract the contents of the archive:

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

### Client configuration

1. Copy MicrosoftDefenderATPOnboardingLinuxServer.py to the target device.

    > [!NOTE]
    > Initially the client device is not associated with an organization and the *orgId* attribute is blank.

    ```bash
    mdatp health --field org_id
    ```

2. Run MicrosoftDefenderATPOnboardingLinuxServer.py.

    > [!NOTE]
    > To run this command, you must have `python`  or `python3` installed on the device depending on the disto and version. If needed, see [Step-by-step Instruction for Installing Python on Linux](https://opensource.com/article/20/4/install-python-linux).
    
    If you're running RHEL 8.x or Ubuntu 20.04 or higher, you will need to use `python3`.

    ```bash
    sudo python3 MicrosoftDefenderATPOnboardingLinuxServer.py
    ```

    For the rest of distros and versions, you will need to use `python`.
    
    ```bash
    sudo python MicrosoftDefenderATPOnboardingLinuxServer.py
    ```
    
3. Verify that the device is now associated with your organization and reports a valid organization identifier:

    ```bash
    mdatp health --field org_id
    ```

4. Check the health status of the product by running the following command. A return value of `1` denotes that the product is functioning as expected:

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

    - Ensure that real-time protection is enabled (denoted by a result of `1` from running the following command):

        ```bash
        mdatp health --field real_time_protection_enabled
        ```
        
      If it is not enabled, execute the following command:
      
       ```bash
        mdatp config real-time-protection --value enabled
        ```

    - Open a Terminal window and execute the following command:

        ``` bash
        curl -o /tmp/eicar.com.txt https://www.eicar.org/download/eicar.com.txt
        ```

    - The file should have been quarantined by Defender for Endpoint on Linux. Use the following command to list all the detected threats:

        ```bash
        mdatp threat list
        ```

6. Run an EDR detection test and simulate a detection to verify that the device is properly onboarded and reporting to the service. Perform the following steps on the newly onboarded device:

    - Verify that the onboarded Linux server appears in Microsoft 365 Defender. If this is the first onboarding of the machine, it can take up to 20 minutes until it appears.

    - Download and extract the [script file](https://aka.ms/LinuxDIY) to an onboarded Linux server and run the following command: `./mde_linux_edr_diy.sh`

    - After a few minutes, a detection should be raised in Microsoft 365 Defender.

    - Look at the alert details, machine timeline, and perform your typical investigation steps.

## View a list of onboarded devices

To view the list of devices that are onboarded to Defender for Business, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, under **Endpoints**, choose **Device inventory**.

## Next steps

- If you have other devices to onboard, select the tab that corresponds to the operating system on the devices [(Windows 10 and 11, Windows Server, macOS, Linux, or mobile devices](#what-to-do)), and follow the guidance on that tab.
- If you're done onboarding devices, proceed to [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)
- See [Get started using Microsoft Defender for Business](mdb-get-started.md).

## [**mobile devices**](#tab/mobiles)

## Mobile devices

You'll need Microsoft Intune to onboard mobile devices, such as Android and iOS/iPadOS devices. If you have [Microsoft 365 Business Premium](../../business/index.yml), you've Intune. 

See the following resources to get help enrolling these devices into Intune:

- [Enroll Android devices](/mem/intune/enrollment/android-enroll)
- [Enroll iOS or iPadOS devices](/mem/intune/enrollment/ios-enroll)

After a device has been enrolled in Intune, you can add it to a device group. [Learn more about device groups in Microsoft Defender for Business](mdb-create-edit-device-groups.md).

## Next steps

- If you have other devices to onboard, select the tab that corresponds to the operating system on the devices [(Windows 10 and 11, Windows Server, macOS, Linux, or mobile devices](#what-to-do)), and follow the guidance on that tab.
- If you're done onboarding devices, proceed to [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)
- See [Get started using Microsoft Defender for Business](mdb-get-started.md).
