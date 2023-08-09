---
title: Manage tamper protection using tenant attach with Configuration Manager, version 2006
ms.reviewer: joshbregman, mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Turn tamper protection on or off using tenant attach with Configuration Manager.
keywords: malware, defender, antivirus, tamper protection, Configuration Manager
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.date: 06/23/2023
audience: ITPro
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.custom: 
- nextgen
- admindeeplinkDEFENDER
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Manage tamper protection using tenant attach with Configuration Manager, version 2006

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Antivirus](microsoft-defender-antivirus-windows.md)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)
- [Microsoft 365 Business Premium](../../business-premium/index.md)

**Platforms**
- Windows

[Tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) helps protect certain [security settings](prevent-changes-to-security-settings-with-tamper-protection.md#what-happens-when-tamper-protection-is-turned-on), such as virus and threat protection, from being disabled or changed. If you're part of your organization's security team, and you're using [version 2006 of Configuration Manager](/mem/configmgr/core/plan-design/changes/whats-new-in-version-2006), you can manage tamper protection for devices by using a method called *tenant attach*. Tenant attach enables you to sync your on-premises-only Configuration Manager devices into the Intune admin center, and then deliver endpoint security configuration policies to on-premises collections & devices. 

Using Configuration Manager with tenant attach, you can turn tamper protection on (or off) for some or all devices. 

> [!IMPORTANT]
> When tamper protection is turned on, [tamper-protected settings](prevent-changes-to-security-settings-with-tamper-protection.md#what-is-tamper-protection) cannot be changed. To avoid breaking management experiences, including Intune and Configuration Manager, keep in mind that changes to tamper-protected settings might appear to succeed but are actually blocked by tamper protection. Depending on your particular scenario, you have several options available: 
> - If you must make changes to a device and those changes are blocked by tamper protection, use [troubleshooting mode](/microsoft-365/security/defender-endpoint/enable-troubleshooting-mode) to temporarily disable tamper protection on the device.
> - Use [Intune](manage-tamper-protection-intune.md) or Configuration Manager to exclude devices from tamper protection. 

:::image type="content" source="media/tamper-protect-configmgr.png" alt-text="Screenshot showing Windows Security settings with tamper protection enabled.":::

1. Set up tenant attach. To learn more, see [Get started: Create and deploy endpoint security policies from the admin center](/mem/configmgr/tenant-attach/endpoint-security-get-started).

2. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Endpoint security** \> **Antivirus**, and then choose **+ Create Policy**.

   - In the **Platform** list, select **Windows 10, Windows 11, and Windows Server (ConfigMgr)**.
   - In the **Profile** list, select **Windows Security experience (preview)**.

3. On the **Configuration settings** step, under **Windows Security**, set **Enable tamper protection to prevent Microsoft Defender from being disabled** to **Enabled**.

4. Finish selecting options and settings for your policy.

5. Deploy the policy to your devices.

## See also

- [Frequently asked questions (FAQs) on tamper protection](faqs-on-tamper-protection.yml)
- [Protect macOS security settings with tamper protection](tamperprotection-macos.md)
- [Settings for the Windows Security experience profile in Microsoft Intune](/mem/intune/protect/antivirus-security-experience-windows-settings)
- [Tech Community Blog: Announcing Tamper Protection for Configuration Manager Tenant Attach clients](https://techcommunity.microsoft.com/t5/microsoft-endpoint-manager-blog/announcing-tamper-protection-for-configuration-manager-tenant/ba-p/1700246#.X3QLR5Ziqq8.linkedin)
- [Troubleshoot problems with tamper protection](troubleshoot-problems-with-tamper-protection.yml)
- [Manage Microsoft Defender for Endpoint on devices with Microsoft Intune](/mem/intune/protect/mde-security-integration)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
