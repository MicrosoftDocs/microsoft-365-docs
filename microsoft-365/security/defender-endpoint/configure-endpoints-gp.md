---
title: Onboard Windows devices to Microsoft Defender for Endpoint via Group Policy
description: Use Group Policy to deploy the configuration package on Windows devices so that they are onboarded to the service.
keywords: configure devices using group policy, device management, configure Microsoft Defender for Endpoint devices, onboard Microsoft Defender for Endpoint devices, group policy
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
ms.date: 12/07/2021
ms.subservice: mde
search.appverid: met150
---

# Onboard Windows devices using Group Policy 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

[!include[Prerelease information](../../includes/prerelease.md)]

**Applies to:**

- Group Policy
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configureendpointsgp-abovefoldlink)

> [!NOTE]
> To use Group Policy (GP) updates to deploy the package, you must be on Windows Server 2008 R2 or later.
>
> For Windows Server 2019 and Windows Server 2022, you may need to replace NT AUTHORITY\Well-Known-System-Account with NT AUTHORITY\SYSTEM of the XML file that the Group Policy preference creates.

> [!NOTE]
> If you're using the new, unified Microsoft Defender for Endpoint solution for Windows Server 2012 R2 and 2016, please ensure you are using the latest ADMX files in your central store to get access to the correct Microsoft Defender for Endpoint policy options. Please reference [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store) and download the latest files **for use with Windows 10**.

Check out [Identify Defender for Endpoint architecture and deployment method](deployment-strategy.md) to see the various paths in deploying Defender for Endpoint.

1. Open the GP configuration package file (`WindowsDefenderATPOnboardingPackage.zip`) that you downloaded from the service onboarding wizard. You can also get the package from the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>:

    1. In the navigation pane, select **Settings** > **Endpoints** > **Device management**  > **Onboarding**.

    1. Select the operating system.

    1. In the **Deployment method** field, select **Group policy**.

    1. Click **Download package** and save the .zip file.

2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the device. You should have a folder called *OptionalParamsPolicy* and the file *WindowsDefenderATPOnboardingScript.cmd*.

3. To create a new GPO, open the [Group Policy Management Console](/internet-explorer/ie11-deploy-guide/group-policy-and-group-policy-mgmt-console-ie11) (GPMC), right-click **Group Policy Objects** you want to configure and click **New**. Enter the name of the new GPO in the dialogue box that is displayed and click **OK**.

4. Open the [Group Policy Management Console](/internet-explorer/ie11-deploy-guide/group-policy-and-group-policy-mgmt-console-ie11) (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

5. In the **Group Policy Management Editor**, go to **Computer configuration**, then **Preferences**, and then **Control panel settings**.

6. Right-click **Scheduled tasks**, point to **New**, and then click **Immediate Task (At least Windows 7)**.

7. In the **Task** window that opens, go to the **General** tab. Under **Security options** click **Change User or Group** and type SYSTEM and then click **Check Names** then **OK**. NT AUTHORITY\SYSTEM appears as the user account the task will run as.

8. Select **Run whether user is logged on or not** and check the **Run with highest privileges** check box.

9. In the Name field, type an appropriate name for the scheduled task (for example, Defender for Endpoint Deployment).

10. Go to the **Actions** tab and select **New...** Ensure that **Start a program** is selected in the **Action** field. Enter the UNC path, using the file server's fully qualified domain name (FQDN), of the shared *WindowsDefenderATPOnboardingScript.cmd* file.

11. Select **OK** and close any open GPMC windows.

12. To link the GPO to an Organization Unit (OU), right-click and select **Link an existing GPO**. In the dialogue box that is displayed, select the Group Policy Object that you wish to link. Click **OK**.

> [!TIP]
> After onboarding the device, you can choose to run a detection test to verify that the device is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Defender for Endpoint device](run-detection-test.md).

## Additional Defender for Endpoint configuration settings

For each device, you can state whether samples can be collected from the device when a request is made through Microsoft 365 Defender to submit a file for deep analysis.

You can use Group Policy (GP) to configure settings, such as settings for the sample sharing used in the deep analysis feature.

### Configure sample collection settings

1. On your GP management device, copy the following files from the
    configuration package:

    - Copy _AtpConfiguration.admx_ into _C:\\Windows\\PolicyDefinitions_

    - Copy _AtpConfiguration.adml_ into _C:\\Windows\\PolicyDefinitions\\en-US_

    If you're using a [Central Store for Group Policy Administrative Templates](https://support.microsoft.com/help/3087759/how-to-create-and-manage-the-central-store-for-group-policy-administra), copy the following files from the
    configuration package:

    - Copy _AtpConfiguration.admx_ into _\\\\\<forest.root\>\\SysVol\\\<forest.root\>\\Policies\\PolicyDefinitions_

    - Copy _AtpConfiguration.adml_ into _\\\\\<forest.root\>\\SysVol\\\<forest.root\>\\Policies\\PolicyDefinitions\\en-US_

2. Open the [Group Policy Management Console](/internet-explorer/ie11-deploy-guide/group-policy-and-group-policy-mgmt-console-ie11), right-click the GPO you want to configure and click **Edit**.

3. In the **Group Policy Management Editor**, go to **Computer configuration**.

4. Click **Policies**, then **Administrative templates**.

5. Click **Windows components** and then **Windows Defender ATP**.

6. Choose to enable or disable sample sharing from your devices.

> [!NOTE]
> If you don't set a value, the default value is to enable sample collection.

## Other recommended configuration settings

### Update endpoint protection configuration

After configuring the onboarding script, continue editing the same group policy to add endpoint protection configurations. Perform group policy edits from a system running Windows 10 or Server 2019, Windows 11, or Windows Server 2022 to ensure you have all of the required Microsoft Defender Antivirus capabilities. You may need to close and reopen the group policy object to register the Defender ATP configuration settings.

All policies are located under `Computer Configuration\Policies\Administrative Templates`.

**Policy location:** \Windows Components\Windows Defender ATP

Policy|Setting
---|---
Enable\Disable Sample collection|Enabled - "Enable sample collection on machines" checked

<br>

**Policy location:**  \Windows Components\Microsoft Defender Antivirus

Policy|Setting
---|---
Configure detection for potentially unwanted applications|Enabled, Block

<br>

**Policy location:** \Windows Components\Microsoft Defender Antivirus\MAPS

Policy|Setting
---|---
Join Microsoft MAPS|Enabled, Advanced MAPS
Send file samples when further analysis is required | Enabled, Send safe samples

<br>

**Policy location:** \Windows Components\Microsoft Defender Antivirus\Real-time Protection

Policy|Setting
---|---
Turn off real-time protection|Disabled
Turn on behavior monitoring|Enabled
Scan all downloaded files and attachments|Enabled
Monitor file and program activity on your computer|Enabled

<br>

**Policy location:**  \Windows Components\Microsoft Defender Antivirus\Scan

These settings configure periodic scans of the endpoint. We recommend performing a weekly quick scan, performance permitting.

Policy|Setting
---|---
Check for the latest virus and spyware security intelligence before running a scheduled scan |Enabled

<br>

**Policy location:** \Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Attack Surface Reduction

Get the current list of attack surface reduction rules GUIDs from [Attack surface reduction rules deployment Step 3: Implement ASR rules](attack-surface-reduction-rules-deployment-implement.md). For additional, per rules details, see [Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md)

1. Open the **Configure Attack Surface Reduction** policy.

1. Select **Enabled**.

1. Select the **Show** button.

1. Add each GUID in the **Value Name** field with a Value of 2.

   This will set each up for audit only.

   :::image type="content" source="images/asr-guid.png" alt-text="The Attack surface reduction configuration" lightbox="images/asr-guid.png":::

Policy|Location|Setting
---|---|---
Configure Controlled folder access| \Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Controlled Folder Access| Enabled, Audit Mode

## Run a detection test to verify onboarding

After onboarding the device, you can choose to run a detection test to verify that a device is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](run-detection-test.md).

## Offboard devices using Group Policy

For security reasons, the package used to Offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to a device will be rejected. When downloading an offboarding package you'll be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same device at the same time, otherwise this will cause unpredictable collisions.

1. Get the offboarding package from the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>:

    1. In the navigation pane, select **Settings** > **Endpoints** > **Device management** > **Offboarding**.

    1. Select the operating system.
    
    1. In the **Deployment method** field, select **Group policy**.

    1. Click **Download package** and save the .zip file.

2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the device. You should have a file named *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

3. Open the [Group Policy Management Console](/internet-explorer/ie11-deploy-guide/group-policy-and-group-policy-mgmt-console-ie11) (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

4. In the **Group Policy Management Editor**, go to **Computer configuration,** then **Preferences**, and then **Control panel settings**.

5. Right-click **Scheduled tasks**, point to **New**, and then click **Immediate task**.

6. In the **Task** window that opens, go to the **General** tab. Choose the local SYSTEM user account (BUILTIN\SYSTEM) under **Security options**.

7. Select **Run whether user is logged on or not** and check the **Run with highest privileges** check-box.

8. In the Name field, type an appropriate name for the scheduled task (for example, Defender for Endpoint Deployment).

9. Go to the **Actions** tab and select **New...**. Ensure that **Start a program** is selected in the **Action** field. Enter the UNC path, using the file server's fully qualified domain name (FQDN), of the shared *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd* file.

10. Select **OK** and close any open GPMC windows.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.

## Monitor device configuration

With Group Policy there isn't an option to monitor deployment of policies on the devices. Monitoring can be done directly on the portal, or by using the different deployment tools.

## Monitor devices using the portal

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>.
2. Click **Devices inventory**.
3. Verify that devices are appearing.

> [!NOTE]
> It can take several days for devices to start showing on the **Devices list**. This includes the time it takes for the policies to be distributed to the device, the time it takes before the user logs on, and the time it takes for the endpoint to start reporting.

## Setup Defender AV policies

Create a new Group Policy or group these settings in with the other policies. This is dependent upon the customer's environment and how they would like to roll out the service by targeting different organizational units (OUs).

1. After you choose the GP, or create a new one, edit the GP.

2. Browse to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Real-time Protection**.

    :::image type="content" source="images/realtime-protect.png" alt-text="Real-time protection" lightbox="images/realtime-protect.png":::

1. In the Quarantine folder, configure removal of items from Quarantine folder.

    :::image type="content" source="images/removal-items-quarantine1.png" alt-text="Removal items quarantine folder" lightbox="images/removal-items-quarantine1.png":::

    :::image type="content" source="images/config-removal-items-quarantine2.png" alt-text="config-removal quarantine" lightbox="images/config-removal-items-quarantine2.png":::

4. In the Scan folder, configure the scan settings.

    :::image type="content" source="images/gpo-scans.png" alt-text="gpo scans" lightbox="images/gpo-scans.png":::

### Monitor all files in Real time protection

Browse to **Computer Configuration** \> **Policies** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Real-time Protection**.

:::image type="content" source="images/config-monitor-incoming-outgoing-file-act.png" alt-text="Configure monitoring for incoming outgoing file activity" lightbox="images/config-monitor-incoming-outgoing-file-act.png":::

### Configure Windows Defender SmartScreen settings

1. Browse to **Computer Configuration** \> **Policies** \> **Administrative Templates** \> **Windows Components** \> **Windows Defender SmartScreen** \> **Explorer**.

   :::image type="content" source="images/config-windows-def-smartscr-explorer.png" alt-text="Configure windows defender smart screen explorer" lightbox="images/config-windows-def-smartscr-explorer.png":::
 
2. Browse to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Windows Defender SmartScreen** > **Microsoft Edge**.

    :::image type="content" source="images/configure-windows-defender-smartscreen.png" alt-text="Configure windows defender smart screen on Microsoft Edge" lightbox="images/configure-windows-defender-smartscreen.png":::

### Configure Potentially Unwanted Applications

Browse to **Computer Configuration** \> **Policies** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus**.

:::image type="content" source="images/config-potential-unwanted-apps.png" alt-text="Config potential unwanted app" lightbox="images/config-potential-unwanted-apps.png":::

:::image type="content" source="images/config-potential-unwanted-apps2.png" alt-text="config potential" lightbox="images/config-potential-unwanted-apps2.png":::

### Configure Cloud Deliver Protection and send samples automatically

Browse to **Computer Configuration** \> **Policies** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **MAPS**.

:::image type="content" source="images/gpo-maps1.png" alt-text="maps" lightbox="images/gpo-maps1.png":::

:::image type="content" source="images/gpo-maps-block-atfirst-sight.png" alt-text="Block at first sight" lightbox="images/gpo-maps-block-atfirst-sight.png":::

:::image type="content" source="images/gpo-maps-join-ms-maps.png" alt-text="Join microsoft maps" lightbox="images/gpo-maps-join-ms-maps.png":::

:::image type="content" source="images/send-file-sample-further-analysis-require.png" alt-text="Send file sample when further analysis is required" lightbox="images/send-file-sample-further-analysis-require.png":::

> [!NOTE]
> The **Send all samples** option will provide the most analysis of binaries/scripts/docs which increases security posture.
The **Send safe samples** option limits the type of binaries/scripts/docs being analyzed, and decreases security posture. 

For more information, see [Turn on cloud protection in Microsoft Defender Antivirus](enable-cloud-protection-microsoft-defender-antivirus.md), and [Cloud protection and sample submission in Microsoft Defender Antivirus.](cloud-protection-microsoft-antivirus-sample-submission.md)

### Check for signature update

Browse to **Computer Configuration** \> **Policies** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Security Intelligence Updates**.

:::image type="content" source="images/signature-update-1.png" alt-text="Signature update" lightbox="images/signature-update-1.png":::

:::image type="content" source="images/signature-update-2.png" alt-text="Signature definition update" lightbox="images/signature-update-2.png":::

### Configure cloud deliver timeout and protection level

Browse to **Computer Configuration** \> **Policies** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **MpEngine**.
When you configure cloud protection level policy to **Default Microsoft Defender Antivirus blocking policy** this will disable the policy. This is what is required to set the protection level to the windows default.

:::image type="content" source="images/config-extended-cloud-check.png" alt-text="config extended cloud check" lightbox="images/config-extended-cloud-check.png":::

:::image type="content" source="images/cloud-protection-level.png" alt-text="config cloud protection level" lightbox="images/cloud-protection-level.png":::

## Related topics
- [Onboard Windows devices using Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md)
- [Onboard Windows devices using Mobile Device Management tools](configure-endpoints-mdm.md)
- [Onboard Windows devices using a local script](configure-endpoints-script.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) devices](configure-endpoints-vdi.md)
- [Run a detection test on a newly onboarded Microsoft Defender for Endpoint devices](run-detection-test.md)
- [Troubleshoot Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
