---
title: Onboarding using Microsoft Configuration Manager
description: Learn how to onboard to Microsoft Defender for Endpoint using Microsoft Configuration Manager
keywords: onboarding, configuration, deploy, deployment, configuration manager, Microsoft Defender for Endpoint, collection creation, endpoint detection response, next generation protection, attack surface reduction, microsoft configuration manager
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
  - m365solution-endpointprotect
  - m365solution-scenario
  - highpri
  - tier1
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Onboarding using Microsoft Configuration Manager

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

This article acts as an example onboarding method.

In the [Planning](deployment-strategy.md) topic, there were several methods provided to onboard devices to the service. This topic covers the co-management architecture.

:::image type="content" source="images/co-management-architecture.png" alt-text="The cloud-native architecture" lightbox="images/co-management-architecture.png":::
*Diagram of environment architectures*

While Defender for Endpoint supports onboarding of various endpoints and tools, this article does not cover them. For information on general onboarding using other supported deployment tools and methods, see [Onboarding overview](onboarding.md).

This topic guides users in:

- Step 1: Onboarding Windows devices to the service
- Step 2: Configuring Defender for Endpoint capabilities

This onboarding guidance will walk you through the following basic steps that you need to take when using Microsoft Configuration Manager:

- **Creating a collection in Microsoft Configuration Manager**
- **Configuring Microsoft Defender for Endpoint capabilities using Microsoft Configuration Manager**

> [!NOTE]
> Only Windows devices are covered in this example deployment.

## Step 1: Onboard Windows devices using Microsoft Configuration Manager

### Collection creation

To onboard Windows devices with Microsoft Configuration Manager, the deployment can target an existing collection or a new collection can be created for testing.

Onboarding using tools such as Group policy or manual method does not install any agent on the system.

Within the Microsoft Configuration Manager console the onboarding process will be configured as part of the compliance settings within the console.

Any system that receives this required configuration will maintain that configuration for as long as the Configuration Manager client continues to receive this policy from the management point.

Follow the steps below to onboard endpoints using Microsoft Configuration Manager.

1. In Microsoft Configuration Manager console, navigate to **Assets and Compliance \> Overview \> Device Collections**.

    :::image type="content" source="images/configmgr-device-collections.png" alt-text="The Microsoft Configuration Manager wizard1" lightbox="images/configmgr-device-collections.png":::

2. Right select **Device Collection** and select **Create Device Collection**.

    :::image type="content" source="images/configmgr-create-device-collection.png" alt-text="The Microsoft Configuration Manager wizard2" lightbox="images/configmgr-create-device-collection.png":::

3. Provide a **Name** and **Limiting Collection**, then select **Next**.

    :::image type="content" source="images/configmgr-limiting-collection.png" alt-text="The Microsoft Configuration Manager wizard3" lightbox="images/configmgr-limiting-collection.png":::

4. Select **Add Rule** and choose **Query Rule**.

    :::image type="content" source="images/configmgr-query-rule.png" alt-text="The Microsoft Configuration Manager wizard4" lightbox="images/configmgr-query-rule.png":::

5. Select **Next** on the **Direct Membership Wizard** and select on **Edit Query Statement**.

    :::image type="content" source="images/configmgr-direct-membership.png" alt-text="The Microsoft Configuration Manager wizard5" lightbox="images/configmgr-direct-membership.png":::

6. Select **Criteria** and then choose the star icon.

    :::image type="content" source="images/configmgr-criteria.png" alt-text="The Microsoft Configuration Manager wizard6" lightbox="images/configmgr-criteria.png":::

7. Keep criterion type as **simple value**, choose where as **Operating System - build number**, operator as **is greater than or equal to** and value **14393** and select on **OK**.

    :::image type="content" source="images/configmgr-simple-value.png" alt-text="The Microsoft Configuration Manager wizard7" lightbox="images/configmgr-simple-value.png":::

8. Select **Next** and **Close**.

    :::image type="content" source="images/configmgr-membership-rules.png" alt-text="The Microsoft Configuration Manager wizard8" lightbox="images/configmgr-membership-rules.png":::

9. Select **Next**.

    :::image type="content" source="images/configmgr-confirm.png" alt-text="The Microsoft Configuration Manager wizard9" lightbox="images/configmgr-confirm.png":::

After completing this task, you now have a device collection with all the Windows endpoints in the environment.

## Step 2: Configure Microsoft Defender for Endpoint capabilities

This section guides you in configuring the following capabilities using Microsoft Configuration Manager on Windows devices:

- [**Endpoint detection and response**](#endpoint-detection-and-response)
- [**Next-generation protection**](#next-generation-protection)
- [**Attack surface reduction**](#attack-surface-reduction)

### Endpoint detection and response

#### Windows 10 and Windows 11

From within the Microsoft 365 Defender portal it is possible to download the `.onboarding` policy that can be used to create the policy in System Center Configuration Manager and deploy that policy to Windows 10 and Windows 11 devices.

1. From a <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, select [Settings and then Onboarding](https://security.microsoft.com/preferences2/onboarding).

2. Under Deployment method, select the supported version of **Microsoft Configuration Manager**.

    :::image type="content" source="images/mdatp-onboarding-wizard.png" alt-text="The Microsoft Configuration Manager wizard10" lightbox="images/mdatp-onboarding-wizard.png":::

3. Select **Download package**.

   :::image type="content" source="images/mdatp-download-package.png" alt-text="The Microsoft Configuration Manager wizard11" lightbox="images/mdatp-download-package.png":::

4. Save the package to an accessible location.
5. In  Microsoft Configuration Manager, navigate to: **Assets and Compliance > Overview > Endpoint Protection > Microsoft Defender ATP Policies**.

6. Right-click **Microsoft Defender ATP Policies** and select **Create Microsoft Defender ATP Policy**.

    :::image type="content" source="images/configmgr-create-policy.png" alt-text="The Microsoft Configuration Manager wizard12" lightbox="images/configmgr-create-policy.png":::

7. Enter the name and description, verify **Onboarding** is selected, then select **Next**.

    :::image type="content" source="images/configmgr-policy-name.png" alt-text="The Microsoft Configuration Manager wizard13" lightbox="images/configmgr-policy-name.png":::

8. Select **Browse**.

9. Navigate to the location of the downloaded file from step 4 above.

10. Select **Next**.
11. Configure the Agent with the appropriate samples (**None** or **All file types**).

    :::image type="content" source="images/configmgr-config-settings.png" alt-text="The configuration settings1" lightbox="images/configmgr-config-settings.png":::

12. Select the appropriate telemetry (**Normal** or **Expedited**) then select **Next**.

    :::image type="content" source="images/configmgr-telemetry.png" alt-text="The configuration settings2" lightbox="images/configmgr-telemetry.png":::

13. Verify the configuration, then select **Next**.

    :::image type="content" source="images/configmgr-verify-configuration.png" alt-text="The configuration settings3" lightbox="images/configmgr-verify-configuration.png":::

14. Select **Close** when the Wizard completes.

15. In the Microsoft Configuration Manager console, right-click the Defender for Endpoint policy you just created and select **Deploy**.

    :::image type="content" source="images/configmgr-deploy.png" alt-text="The configuration settings4" lightbox="images/configmgr-deploy.png":::

16. On the right panel, select the previously created collection and select **OK**.

    :::image type="content" source="images/configmgr-select-collection.png" alt-text="The configuration settings5" lightbox="images/configmgr-select-collection.png":::

#### Previous versions of Windows Client (Windows 7 and Windows 8.1)

Follow the steps below to identify the Defender for Endpoint Workspace ID and Workspace Key that will be required for the onboarding of previous versions of Windows.

1. From a <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, select **Settings** \> **Endpoints** \> **Onboarding** (under **Device Management**).

2. Under operating system, choose **Windows 7 SP1 and 8.1**.

3. Copy the **Workspace ID** and **Workspace Key** and save them. They will be used later in the process.

   :::image type="content" source="images/91b738e4b97c4272fd6d438d8c2d5269.png" alt-text="The onboarding process" lightbox="images/91b738e4b97c4272fd6d438d8c2d5269.png":::

4. Install the Microsoft Monitoring Agent (MMA).

   MMA is currently (as of January 2019) supported on the following Windows Operating Systems:

   - Server SKUs: Windows Server 2008 SP1 or Newer
   - Client SKUs: Windows 7 SP1 and later

   The MMA agent will need to be installed on Windows devices. To install the agent, some systems will need to download the [Update for customer experience and diagnostic telemetry](https://support.microsoft.com/help/3080149/update-for-customer-experience-and-diagnostic-telemetry) in order to collect the data with MMA. These system versions include but may not be limited to:

   - Windows 8.1
   - Windows 7
   - Windows Server 2016
   - Windows Server 2012 R2
   - Windows Server 2008 R2

   Specifically, for Windows 7 SP1, the following patches must be installed:

   - Install [KB4074598](https://support.microsoft.com/help/4074598/windows-7-update-kb4074598)
   - Install either [.NET Framework 4.5](https://www.microsoft.com/download/details.aspx?id=30653) (or later) **or** [KB3154518](https://support.microsoft.com/help/3154518/support-for-tls-system-default-versions-included-in-the-net-framework). Do not install both on the same system.

5. If you're using a proxy to connect to the Internet see the Configure proxy settings section.

Once completed, you should see onboarded endpoints in the portal within an hour.

### Next generation protection

Microsoft Defender Antivirus is a built-in anti-malware solution that provides next generation protection for desktops, portable computers, and servers.

1. In the Microsoft Configuration Manager console, navigate to **Assets and Compliance \> Overview \> Endpoint Protection \> Antimalware Polices** and choose **Create Antimalware Policy**.

   :::image type="content" source="images/9736e0358e86bc778ce1bd4c516adb8b.png" alt-text="The antimalware policy" lightbox="images/9736e0358e86bc778ce1bd4c516adb8b.png":::

2. Select **Scheduled scans**, **Scan settings**, **Default actions**, **Real-time protection**, **Exclusion settings**, **Advanced**, **Threat overrides**, **Cloud Protection Service** and **Security intelligence   updates** and choose **OK**.

   :::image type="content" source="images/1566ad81bae3d714cc9e0d47575a8cbd.png" alt-text="The next-generation protection pane1" lightbox="images/1566ad81bae3d714cc9e0d47575a8cbd.png":::

    In certain industries or some select enterprise customers might have specific needs on how Antivirus is configured.

    [Quick scan versus full scan and custom scan](/windows/security/threat-protection/microsoft-defender-antivirus/scheduled-catch-up-scans-microsoft-defender-antivirus#quick-scan-versus-full-scan-and-custom-scan)

    For more information, see [Windows Security configuration framework](/windows/security/threat-protection/windows-security-configuration-framework/windows-security-configuration-framework).
  
    :::image type="content" source="images/cd7daeb392ad5a36f2d3a15d650f1e96.png" alt-text="The next-generation protection pane2" lightbox="images/cd7daeb392ad5a36f2d3a15d650f1e96.png":::

    :::image type="content" source="images/36c7c2ed737f2f4b54918a4f20791d4b.png" alt-text="The next-generation protection pane3" lightbox="images/36c7c2ed737f2f4b54918a4f20791d4b.png":::

    :::image type="content" source="images/a28afc02c1940d5220b233640364970c.png" alt-text="The next-generation protection pane4" lightbox="images/a28afc02c1940d5220b233640364970c.png":::

    :::image type="content" source="images/5420a8790c550f39f189830775a6d4c9.png" alt-text="The next-generation protection pane5" lightbox="images/5420a8790c550f39f189830775a6d4c9.png":::

    :::image type="content" source="images/33f08a38f2f4dd12a364f8eac95e8c6b.png" alt-text="The next-generation protection pane6" lightbox="images/33f08a38f2f4dd12a364f8eac95e8c6b.png":::

    :::image type="content" source="images/41b9a023bc96364062c2041a8f5c344e.png" alt-text="The next-generation protection pane7" lightbox="images/41b9a023bc96364062c2041a8f5c344e.png":::

    :::image type="content" source="images/945c9c5d66797037c3caeaa5c19f135c.png" alt-text="The next-generation protection pane8" lightbox="images/945c9c5d66797037c3caeaa5c19f135c.png":::

    :::image type="content" source="images/3876ca687391bfc0ce215d221c683970.png" alt-text="The next-generation protection pane9" lightbox="images/3876ca687391bfc0ce215d221c683970.png":::

3. Right-click on the newly created anti-malware policy and select **Deploy**.

    :::image type="content" source="images/f5508317cd8c7870627cb4726acd5f3d.png" alt-text="The next-generation protection pane10" lightbox="images/f5508317cd8c7870627cb4726acd5f3d.png":::

4. Target the new anti-malware policy to your Windows collection and select **OK**.

    :::image type="content" source="images/configmgr-select-collection.png" alt-text="The next-generation protection pane11" lightbox="images/configmgr-select-collection.png":::

After completing this task, you now have successfully configured Microsoft Defender Antivirus.

### Attack surface reduction

The attack surface reduction pillar of Defender for Endpoint includes the feature set that is available under Exploit Guard. Attack surface reduction (ASR) rules, Controlled Folder Access, Network Protection, and Exploit Protection.

All these features provide a test mode and a block mode. In test mode, there's no end-user impact. All it does is collect additional telemetry and make it available in the Microsoft 365 Defender portal. The goal with a deployment is to step-by-step move security controls into block mode.

To set ASR rules in test mode:

1. In the Microsoft Configuration Manager console, navigate to **Assets and Compliance \> Overview \> Endpoint Protection \> Windows Defender Exploit Guard** and choose **Create Exploit Guard Policy**.

   :::image type="content" source="images/728c10ef26042bbdbcd270b6343f1a8a.png" alt-text="The Microsoft Configuration Manager console0" lightbox="images/728c10ef26042bbdbcd270b6343f1a8a.png":::

2. Select **Attack Surface Reduction**.

3. Set rules to **Audit** and select **Next**.

   :::image type="content" source="images/d18e40c9e60aecf1f9a93065cb7567bd.png" alt-text="The Microsoft Configuration Manager console1" lightbox="images/d18e40c9e60aecf1f9a93065cb7567bd.png":::

4. Confirm the new Exploit Guard policy by selecting **Next**.

   :::image type="content" source="images/0a6536f2c4024c08709cac8fcf800060.png" alt-text="The Microsoft Configuration Manager console2" lightbox="images/0a6536f2c4024c08709cac8fcf800060.png":::

5. Once the policy is created select **Close**.

   :::image type="content" source="images/95d23a07c2c8bc79176788f28cef7557.png" alt-text="The Microsoft Configuration Manager console3" lightbox="images/95d23a07c2c8bc79176788f28cef7557.png":::

6. Right-click on the newly created policy and choose **Deploy**.

   :::image type="content" source="images/8999dd697e3b495c04eb911f8b68a1ef.png" alt-text="The Microsoft Configuration Manager console4" lightbox="images/8999dd697e3b495c04eb911f8b68a1ef.png":::

7. Target the policy to the newly created Windows collection and select **OK**.

   :::image type="content" source="images/0ccfe3e803be4b56c668b220b51da7f7.png" alt-text="The Microsoft Configuration Manager console5" lightbox="images/0ccfe3e803be4b56c668b220b51da7f7.png":::

After completing this task, you now have successfully configured ASR rules in test mode.

Below are additional steps to verify whether ASR rules are correctly applied to endpoints. (This may take few minutes)

1. From a web browser, go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a>.

2. Select **Configuration management** from left side menu.

3. Select **Go to attack surface management** in the Attack surface management panel.

   :::image type="content" source="images/security-center-attack-surface-mgnt-tile.png" alt-text="The attack surface management" lightbox="images/security-center-attack-surface-mgnt-tile.png":::

4. Select **Configuration** tab in Attack surface reduction rules reports. It shows ASR rules configuration overview and ASR rules status on each device.

   :::image type="content" source="images/f91f406e6e0aae197a947d3b0e8b2d0d.png" alt-text="The attack surface reduction rules reports1" lightbox="images/f91f406e6e0aae197a947d3b0e8b2d0d.png":::

5. Select each device shows configuration details of ASR rules.

   :::image type="content" source="images/24bfb16ed561cbb468bd8ce51130ca9d.png" alt-text="The attack surface reduction rules reports2" lightbox="images/24bfb16ed561cbb468bd8ce51130ca9d.png":::

See [Optimize ASR rule deployment and detections](/microsoft-365/security/defender-endpoint/configure-machines-asr) for more details.

#### Set Network Protection rules in test mode

1. In the Microsoft Configuration Manager console, navigate to **Assets and  Compliance \> Overview \> Endpoint Protection \> Windows Defender Exploit Guard** and choose **Create Exploit Guard Policy**.

   :::image type="content" source="images/728c10ef26042bbdbcd270b6343f1a8a.png" alt-text="The System Center Configuration Manager1" lightbox="images/728c10ef26042bbdbcd270b6343f1a8a.png":::

2. Select **Network protection**.

3. Set the setting to **Audit** and select **Next**.

   :::image type="content" source="images/c039b2e05dba1ade6fb4512456380c9f.png" alt-text="The System Center Configuration Manager2" lightbox="images/c039b2e05dba1ade6fb4512456380c9f.png":::

4. Confirm the new Exploit Guard Policy by selecting **Next**.

   :::image type="content" source="images/0a6536f2c4024c08709cac8fcf800060.png" alt-text="The Exploit Guard policy1" lightbox="images/0a6536f2c4024c08709cac8fcf800060.png":::

5. Once the policy is created select on **Close**.

   :::image type="content" source="images/95d23a07c2c8bc79176788f28cef7557.png" alt-text="The Exploit Guard policy2" lightbox="images/95d23a07c2c8bc79176788f28cef7557.png":::

6. Right-click on the newly created policy and choose **Deploy**.

   :::image type="content" source="images/8999dd697e3b495c04eb911f8b68a1ef.png" alt-text="The Microsoft Configuration Manager-1" lightbox="images/8999dd697e3b495c04eb911f8b68a1ef.png":::

7. Select the policy to the newly created Windows collection and choose **OK**.

   :::image type="content" source="images/0ccfe3e803be4b56c668b220b51da7f7.png" alt-text="The Microsoft Configuration Manager-2" lightbox="images/0ccfe3e803be4b56c668b220b51da7f7.png":::

After completing this task, you now have successfully configured Network Protection in test mode.

#### To set Controlled Folder Access rules in test mode

1. In the Microsoft Configuration Manager console, navigate to **Assets and Compliance** > **Overview** > **Endpoint Protection** > **Windows Defender Exploit Guard** and then choose **Create Exploit Guard Policy**.

   :::image type="content" source="images/728c10ef26042bbdbcd270b6343f1a8a.png" alt-text="The Microsoft Configuration Manager-3" lightbox="images/728c10ef26042bbdbcd270b6343f1a8a.png":::

2. Select **Controlled folder access**.

3. Set the configuration to **Audit** and select **Next**.

   :::image type="content" source="images/a8b934dab2dbba289cf64fe30e0e8aa4.png" alt-text="The Microsoft Configuration Manager-4" lightbox="images/a8b934dab2dbba289cf64fe30e0e8aa4.png":::

4. Confirm the new Exploit Guard Policy by selecting **Next**.

   :::image type="content" source="images/0a6536f2c4024c08709cac8fcf800060.png" alt-text="The Microsoft Configuration Manager-5" lightbox="images/0a6536f2c4024c08709cac8fcf800060.png":::

5. Once the policy is created select on **Close**.

   :::image type="content" source="images/95d23a07c2c8bc79176788f28cef7557.png" alt-text="The Microsoft Configuration Manager-6" lightbox="images/95d23a07c2c8bc79176788f28cef7557.png":::

6. Right-click on the newly created policy and choose **Deploy**.

   :::image type="content" source="images/8999dd697e3b495c04eb911f8b68a1ef.png" alt-text="The Microsoft Configuration Manager-7" lightbox="images/8999dd697e3b495c04eb911f8b68a1ef.png":::

7. Target the policy to the newly created Windows collection and select **OK**.

:::image type="content" source="images/0ccfe3e803be4b56c668b220b51da7f7.png" alt-text="The Microsoft Configuration Manager-8" lightbox="images/0ccfe3e803be4b56c668b220b51da7f7.png":::

You have now successfully configured Controlled folder access in test mode.

## Related topic

- [Onboarding using Microsoft Configuration Manager](onboarding-endpoint-manager.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
