---
title: Enable block at first sight to detect malware in seconds
description: Turn on the block at first sight feature to detect and block malware within seconds.
keywords: scan, block at first sight, malware, first sight, cloud, defender, antivirus
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
author: denisebmsft
ms.author: deniseb
ms.reviewer: marcmcc
manager: dansimp
ms.custom: nextgen
ms.date: 04/10/2023
ms.subservice: mde
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Turn on block at first sight

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus 

**Platforms**
- Windows

This article describes an antivirus/antimalware feature known as "block at first sight", and describes how to enable block at first sight for your organization.

> [!TIP]
> This article is intended for enterprise admins and IT Pros who manage security settings for organizations. If you are not an enterprise admin or IT Pro but you have questions about block at first sight, see the [Not an enterprise admin or IT Pro?](#not-an-enterprise-admin-or-it-pro) section.

## What is "block at first sight"?

Block at first sight is a threat protection feature of next-generation protection that detects new malware and blocks it within seconds. Block at first sight is enabled when certain security settings are enabled: 

- [Cloud protection](cloud-protection-microsoft-defender-antivirus.md) is turned on;
- [Sample submission](cloud-protection-microsoft-antivirus-sample-submission.md) is configured for samples to be sent automatically; and
- [Microsoft Defender Antivirus is up to date](microsoft-defender-antivirus-updates.md) on devices.

In most enterprise organizations, the settings needed to enable block at first sight are configured with Microsoft Defender Antivirus deployments. See [Turn on cloud protection in Microsoft Defender Antivirus](enable-cloud-protection-microsoft-defender-antivirus.md).

## How it works

When Microsoft Defender Antivirus encounters a suspicious but undetected file, it queries our cloud protection backend. The cloud backend applies heuristics, machine learning, and automated analysis of the file to determine whether the files are malicious or not a threat.

Microsoft Defender Antivirus uses multiple detection and prevention technologies to deliver accurate, intelligent, and real-time protection.

:::image type="content" source="images/microsoft-defender-atp-next-generation-protection-engines.png" alt-text="The list of Microsoft Defender Antivirus engines" lightbox="images/microsoft-defender-atp-next-generation-protection-engines.png":::

> [!TIP]
> To learn more, see [(Blog) Get to know the advanced technologies at the core of Microsoft Defender for Endpoint next-generation protection](https://www.microsoft.com/security/blog/2019/06/24/inside-out-get-to-know-the-advanced-technologies-at-the-core-of-microsoft-defender-atp-next-generation-protection/).

## A few things to know about block at first sight

- Block at first sight can block non-portable executable files (such as JS, VBS, or macros) and executable files, running the [latest Defender antimalware platform](microsoft-defender-antivirus-updates.md) on Windows or Windows Server.

- Block at first sight only uses the cloud protection backend for executable files and non-portable executable files that are downloaded from the Internet, or that originate from the Internet zone. A hash value of the `.exe` file is checked via the cloud backend to determine if the file is a previously undetected file.

- If the cloud backend is unable to make a determination, Microsoft Defender Antivirus locks the file and uploads a copy to the cloud. The cloud performs more analysis to reach a determination before it either allows the file to run or blocks it in all future encounters, depending on whether it determines the file to be malicious or not a threat.

- In many cases, this process can reduce the response time for new malware from hours to seconds.

- You can [specify how long a file should be prevented from running](configure-cloud-block-timeout-period-microsoft-defender-antivirus.md) while the cloud-based protection service analyzes the file. And, you can [customize the message displayed on users' desktops](/windows/security/threat-protection/windows-defender-security-center/wdsc-customize-contact-information) when a file is blocked. You can change the company name, contact information, and message URL.

## Turn on block at first sight with Microsoft Intune

1. In the Microsoft Intune admin center (<https://endpoint.microsoft.com>), go to **Endpoint security** \> **Antivirus**.

2. Select an existing policy, or create a new policy using the **Microsoft Defender Antivirus** profile type. In our example, we selected **Windows 10, Windows 11, or Windows Server** for the platform.

   :::image type="content" source="media/intune-mdav-policy.png" alt-text="Screenshot of new MDAV policy creation in Intune." lightbox="media/intune-mdav-policy.png":::

3. Set **Allow cloud protection** to **Allowed. Turns on Cloud Protection**. 

   :::image type="content" source="media/intune-mdav-cpallowed.png" alt-text="Screenshot of Cloud Protection set to allowed in Intune.":::

4. Scroll down to **Submit Samples Consent**, and select one of the following settings:

   - **Send all samples automatically**
   - **Send safe samples automatically**

5. Apply the Microsoft Defender Antivirus profile to a group, such as **All users**, **All devices**, or **All users and devices**.

## Turn on block at first sight with Group Policy

> [!NOTE]
> We recommend using Intune or Microsoft Configuration Manager to turn on block at first sight.

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and select **Edit**.

2. Using the **Group Policy Management Editor** go to **Computer configuration** \> **Administrative templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **MAPS**.

3. In the MAPS section, double-click **Configure the 'Block at First Sight' feature**, and set it to **Enabled**, and then select **OK**.

    > [!IMPORTANT]
    > Setting to **Always prompt (0)** will lower the protection state of the device. Setting to **Never send (2)** means block at first sight will not function.

4. In the MAPS section, double-click **Send file samples when further analysis is required**, and set it to **Enabled**. Under **Send file samples when further analysis is required**, select **Send all samples**, and then select **OK**.

5. Redeploy your Group Policy Object across your network as you usually do.

## Confirm block at first sight is enabled on individual client devices

You can confirm that block at first sight is enabled on individual client devices using the Windows Security app. Block at first sight is automatically enabled as long as **Cloud-delivered protection** and **Automatic sample submission** are both turned on.

1. Open the Windows Security app.

2. Select **Virus & threat protection**, and then, under **Virus & threat protection settings**, select **Manage Settings**.

   :::image type="content" source="../../media/wdav-protection-settings-wdsc.png" alt-text="The Virus & threat protection settings label in the Windows Security app" lightbox="../../media/wdav-protection-settings-wdsc.png":::

3. Confirm that **Cloud-delivered protection** and **Automatic sample submission** are both turned on.

> [!NOTE]
>
> - If the prerequisite settings are configured and deployed using Group Policy, the settings described in this section will be greyed-out and unavailable for use on individual endpoints.
> - Changes made through a Group Policy Object must first be deployed to individual endpoints before the setting will be updated in Windows Settings.

## Turn off block at first sight

> [!CAUTION]
> Turning off block at first sight will lower the protection state of your device(s) and your network. We do not recommend disabling block at first sight protection permanently.

### Turn off block at first sight with Microsoft Intune

1. Go to the Microsoft Intune admin center (<https://endpoint.microsoft.com>) and sign in.

2. Go to **Endpoint security** \> **Antivirus**, and then select your Microsoft Defender Antivirus policy.

3. Under **Manage**, choose **Properties**.

4. Next to **Configuration settings**, choose **Edit**.

5. Set **Allow cloud protection** to **Not allowed. Turns off Cloud Protection**. 

6. Review and save your settings.

### Turn off block at first sight with Group Policy

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure, and then select **Edit**.

2. Using the **Group Policy Management Editor** go to **Computer configuration** and select **Administrative templates**.

3. Expand the tree through **Windows components** \> **Microsoft Defender Antivirus** \> **MAPS**.

4. Double-click **Configure the 'Block at First Sight' feature** and set the option to **Disabled**.

    > [!NOTE]
    > Disabling block at first sight does not disable or alter the prerequisite group policies.

## Not an enterprise admin or IT Pro?

If you are not an enterprise admin or an IT Pro, but you have questions about block at first sight, this section is for you. Block at first sight is a threat protection feature that detects and blocks malware within seconds. Although there isn't a specific setting called "Block at first sight," the feature is enabled when certain settings are configured on your device.

### How to manage block at first sight on or off on your own device

If you have a personal device that is not managed by an organization, you might be wondering how to turn block at first sight on or off. You can use the Windows Security app to manage block at first sight.

1. On your Windows 10 or Windows 11 computer, open the Windows Security app.

2. Select **Virus & threat protection**.

3. Under **Virus & threat protection settings**, select **Manage settings**.

4. Take one of the following steps:

   - To enable block at first sight, make sure that both **Cloud-delivered protection** and **Automatic sample submission** are both turned on.

   - To disable block at first sight, turn off **Cloud-delivered protection** or **Automatic sample submission**.

     > [!CAUTION]
     > Turning off block at first sight lowers the level of protection for your device. We do not recommend permanently disabling block at first sight.

## See also

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md)
- [Stay protected with Windows Security](https://support.microsoft.com/windows/stay-protected-with-windows-security-2ae0363d-0ada-c064-8b56-6a39afb6a963)
- [Onboard non-Windows devices](configure-endpoints-non-windows.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
