---
title: Onboard Windows devices using Configuration Manager
description: Use Configuration Manager to deploy the configuration package on devices so that they are onboarded to the Defender for Endpoint service.
keywords: onboard devices using sccm, device management, configure Microsoft Defender for Endpoint devices
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.date: 09/22/2021
ms.subservice: mde
search.appverid: met150
---

# Onboard Windows devices using Configuration Manager

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Configuration Manager current branch
- System Center 2012 R2 Configuration Manager

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configureendpointssccm-abovefoldlink)

## Prerequisites
- [Endpoint Protection point site system role](/mem/configmgr/protect/deploy-use/endpoint-protection-site-role)

> [!IMPORTANT]
> The Endpoint Protection point site system role is required so that antivirus and attack surface reduction policies are properly deployed to the targeted endpoints.  Without this role, the endpoints in the device collection won't receive the configured antivirus and attack surface reduction policies.

You can use Configuration Manager to onboard endpoints to the Microsoft Defender for Endpoint service. 

There are several options you can use to onboard devices using Configuration Manager:
- [Onboard devices using System Center Configuration Manager](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection)
- [Tenant attach](/mem/configmgr/tenant-attach/endpoint-security-get-started)



For Windows Server 2012 R2 and Windows Server 2016 - after completing the onboarding steps, you'll need to [Configure and update System Center Endpoint Protection clients](onboard-downlevel.md#configure-and-update-system-center-endpoint-protection-clients).

> [!NOTE]
> Defender for Endpoint doesn't support onboarding during the [Out-Of-Box Experience (OOBE)](/windows-hardware/test/assessments/out-of-box-experience) phase. Make sure users complete OOBE after running Windows installation or upgrading.
>
> Note that it's possible to create a detection rule on a Configuration Manager application to continuously check if a device has been onboarded. An application is a different type of object than a package and program.
> If a device is not yet onboarded (due to pending OOBE completion or any other reason), Configuration Manager will retry to onboard the device until the rule detects the status change.
>
> This behavior can be accomplished by creating a detection rule checking if the "OnboardingState" registry value (of type REG_DWORD) = 1.
> This registry value is located under "HKLM\SOFTWARE\Microsoft\Windows Advanced Threat Protection\Status".
For more information, see [Configure Detection Methods in System Center 2012 R2 Configuration Manager](/previous-versions/system-center/system-center-2012-R2/gg682159\(v=technet.10\)#step-4-configure-detection-methods-to-indicate-the-presence-of-the-deployment-type).

### Configure sample collection settings

For each device, you can set a configuration value to state whether samples can be collected from the device when a request is made through Microsoft 365 Defender to submit a file for deep analysis.

> [!NOTE]
> These configuration settings are typically done through Configuration Manager.

You can set a compliance rule for configuration item in Configuration Manager to change the sample share setting on a device.

This rule should be a *remediating* compliance rule configuration item that sets the value of a registry key on targeted devices to make sure they're compliant.

The configuration is set through the following registry key entry:

```text
Path: "HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection"
Name: "AllowSampleCollection"
Value: 0 or 1
```

Where Key type is a D-WORD. Possible values are:

- 0: Doesn't allow sample sharing  from this device
- 1: Allows sharing of all file types from this device

The default value in case the registry key doesn't exist is 1.

For more information about System Center Configuration Manager Compliance, see [Introduction to compliance settings in System Center 2012 R2 Configuration Manager](/previous-versions/system-center/system-center-2012-R2/gg682139\(v=technet.10\)).

## Other recommended configuration settings

After onboarding devices to the service, it's important to take advantage of the included threat protection capabilities by enabling them with the following recommended configuration settings.

### Device collection configuration

If you're using Configuration Manager, version 2002 or later, you can choose to broaden the deployment to include servers or down-level clients.

### Next generation protection configuration

The following configuration settings are recommended:

#### Scan

- Scan removable storage devices such as USB drives: Yes

#### Real-time Protection

- Enable Behavioral Monitoring: Yes
- Enable protection against Potentially Unwanted Applications at download and prior to installation: Yes

#### Cloud Protection Service

- Cloud Protection Service membership type: Advanced membership

#### Attack surface reduction

Configure all available rules to Audit.

> [!NOTE]
> Blocking these activities may interrupt legitimate business processes. The best approach is setting everything to audit, identifying which ones are safe to turn on, and then enabling those settings on endpoints which do not have false positive detections.

For deploying Antivirus (AV) and Attack Surface Reduction (ASR) policies through Microsoft Configuration Manager (SCCM) follow the steps:

- Enable Endpoint Protection and configure custom client settings.
- Install the Endpoint Protection client from a command prompt.
- Verify the Endpoint Protection client installation.

##### Enable Endpoint Protection and configure custom client settings
Follow the steps to enable endpoint protection and configuration of custom client settings:

1. In the Configuration Manager console, click **Administration.**
1. In the **Administration** workspace, click **Client Settings.**
1. On the **Home** tab, in the **Create** group, click **Create Custom Client Device Settings.**
1. In the **Create Custom Client Device Settings** dialog box, provide a name and a description for the group of settings, and then select **Endpoint Protection.**
1. Configure the Endpoint Protection client settings that you require. For a full list of Endpoint Protection client settings that you can configure, see the Endpoint Protection section in [About client settings.](/mem/configmgr/core/clients/deploy/about-client-settings#endpoint-protection)

    > [!IMPORTANT]
    > Install the Endpoint Protection site system role before you configure client settings for Endpoint Protection.

1. Click **OK** to close the **Create Custom Client Device Settings** dialog box. The new client settings are displayed in the **Client Settings** node of the **Administration** workspace.
1. Next, deploy the custom client settings to a collection. Select the custom client settings you want to deploy. In the **Home** tab, in the **Client Settings** group, click **Deploy.**
1. In the **Select Collection** dialog box, choose the collection to which you want to deploy the client settings and then click **OK.** The new deployment is shown in the **Deployments** tab of the details pane.

Clients are configured with these settings when they next download client policy. For more information, see [Initiate policy retrieval for a Configuration Manager client.](/mem/configmgr/core/clients/manage/manage-clients)


##### Installation of Endpoint Protection client from a command prompt
Follow the steps to complete installation of endpoint protection client from the command prompt.

1. Copy **scepinstall.exe** from the **Client** folder of the Configuration Manager installation folder to the computer on which you want to install the Endpoint Protection client software.
1. Open a command prompt as an administrator. Change directory to the folder with the installer. Then run ```scepinstall.exe```, adding any extra command-line properties that you require:

     |**Property**  |**Description**  |
     |---------|---------|
     |```/s```      |Run the installer silently|
     |```/q```      |Extract the setup files silently|
     |```/i```      |Run the installer normally|
     |```/policy``` |Specify an antimalware policy file to configure the client during installation|
     |```/sqmoptin```|Opt-in to the Microsoft Customer Experience Improvement Program (CEIP)|

1. Follow the on-screen instructions to complete the client installation.
1. If you downloaded the latest update definition package, copy the package to the client computer, and then double-click the definition package to install it.

     > [!NOTE]
     > After the Endpoint Protection client install completes, the client automatically performs a definition update check. If this update check succeeds, you don't have to manually install the latest definition update package.

**Example: install the client with an antimalware policy**

```scepinstall.exe /policy <full path>\<policy file>```

##### Verify the Endpoint Protection client installation

After you install the Endpoint Protection client on your reference computer, verify that the client is working correctly.

1. On the reference computer, open **System Center Endpoint Protection** from the Windows notification area.
1. On the **Home** tab of the **System Center Endpoint Protection** dialog box, verify that **Real-time protection** is set to **On.**
1. Verify that **Up-to-date** is displayed for **Virus and spyware definitions.**
1. To make sure that your reference computer is ready for imaging, under **Scan options,** select **Full,** and then click **Scan now.**


#### Network protection

Prior to enabling network protection in audit or block mode, ensure that you've installed the antimalware platform update, which can be obtained from the [support page](https://support.microsoft.com/help/4560203/windows-defender-anti-malware-platform-binaries-are-missing).

#### Controlled folder access

Enable the feature in audit mode for at least 30 days. After this period, review detections and create a list of applications that are allowed to write to protected directories.

For more information, see [Evaluate controlled folder access](evaluate-controlled-folder-access.md).

## Run a detection test to verify onboarding

After onboarding the device, you can choose to run a detection test to verify that a device is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](run-detection-test.md).

## Offboard devices using Configuration Manager

For security reasons, the package used to Offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to a device will be rejected. When downloading an offboarding package, you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same device at the same time, otherwise this will cause unpredictable collisions.

### Offboard devices using Microsoft Configuration Manager current branch

If you use Microsoft Configuration Manager current branch, see [Create an offboarding configuration file](/configmgr/protect/deploy-use/windows-defender-advanced-threat-protection#create-an-offboarding-configuration-file).

### Offboard devices using System Center 2012 R2 Configuration Manager

1. Get the offboarding package from <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>:
    1. In the navigation pane, select **Settings** \> **Endpoints** \> **Device management** \>  **Offboarding**.
    1. Select Windows 10 or Windows 11 as the operating system.
    1. In the **Deployment method** field, select **System Center Configuration Manager 2012/2012 R2/1511/1602**.
    1. Select **Download package**, and save the .zip file.

2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file named *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

3. Deploy the package by following the steps in the [Packages and Programs in System Center 2012 R2 Configuration Manager](/previous-versions/system-center/system-center-2012-R2/gg699369\(v=technet.10\)) article.

   Choose a predefined device collection to deploy the package to.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.

## Monitor device configuration

If you're using Microsoft Configuration Manager current branch, use the built-in Defender for Endpoint dashboard in the Configuration Manager console. For more information, see [Defender for Endpoint - Monitor](/configmgr/protect/deploy-use/windows-defender-advanced-threat-protection#monitor).

If you're using System Center 2012 R2 Configuration Manager, monitoring consists of two parts:

1. Confirming the configuration package has been correctly deployed and is running (or has successfully run) on the devices in your network.

2. Checking that the devices are compliant with the Defender for Endpoint service (this ensures the device can complete the onboarding process and can continue to report data to the service).

### Confirm the configuration package has been correctly deployed

1. In the Configuration Manager console, click **Monitoring** at the bottom of the navigation pane.

2. Select **Overview** and then **Deployments**.

3. Select on the deployment with the package name.

4. Review the status indicators under **Completion Statistics** and **Content Status**.

    If there are failed deployments (devices with **Error**, **Requirements Not Met**, or **Failed statuses**), you may need to  troubleshoot the devices. For more information, see, [Troubleshoot Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md).

    :::image type="content" source="images/sccm-deployment.png" alt-text="The Configuration Manager showing successful deployment with no errors" lightbox="images/sccm-deployment.png":::

### Check that the devices are compliant with the Microsoft Defender for Endpoint service

You can set a compliance rule for configuration item in System Center 2012 R2 Configuration Manager to monitor your deployment.

This rule should be a *non-remediating* compliance rule configuration item that monitors the value of a registry key on targeted devices.

Monitor the following registry key entry:

```console
Path: "HKLM\SOFTWARE\Microsoft\Windows Advanced Threat Protection\Status"
Name: "OnboardingState"
Value: "1"
```

For more information, see [Introduction to compliance settings in System Center 2012 R2 Configuration Manager](/previous-versions/system-center/system-center-2012-R2/gg682139\(v=technet.10\)).

## Related topics
- [Onboard Windows devices using Group Policy](configure-endpoints-gp.md)
- [Onboard Windows devices using Mobile Device Management tools](configure-endpoints-mdm.md)
- [Onboard Windows devices using a local script](configure-endpoints-script.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) devices](configure-endpoints-vdi.md)
- [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](run-detection-test.md)
- [Troubleshoot Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
