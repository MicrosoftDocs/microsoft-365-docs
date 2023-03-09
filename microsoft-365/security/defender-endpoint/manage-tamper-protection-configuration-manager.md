---
title: Manage tamper protection using tenant attach with Configuration Manager, version 2006
ms.reviewer: mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Turn tamper protection on or off using tenant attach with Configuration Manager.
keywords: malware, defender, antivirus, tamper protection, Configuration Manager
ms.pagetype: security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.date: 03/06/2023
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
- Microsoft Defender Antivirus

**Platforms**
- Windows

If you're using [version 2006 of Configuration Manager](/mem/configmgr/core/plan-design/changes/whats-new-in-version-2006), you can manage tamper protection settings on Windows 10, Windows 10 Enterprise multi-session, Windows 11, Windows 11 Enterprise multi-session, Windows Server 2012 R2, Windows Server 2016, Windows Server 2019, and Windows Server 2022 by using a method called *tenant attach*. Tenant attach enables you to sync your on-premises-only Configuration Manager devices into the Intune admin center, and then deliver endpoint security configuration policies to on-premises collections & devices.

> [!NOTE]
> The procedure can be used to extend tamper protection to devices running Windows 10, Windows 10 Enterprise multi-session, Windows 11, Windows 11 Enterprise multi-session, Windows Server 2019, and Windows Server 2022. Make sure to review the prerequisites and other information in the resources mentioned in this procedure. For Windows Server 2012 R2 running the modern, unified solution [version 2203 of Configuration Manager](/mem/configmgr/core/plan-design/changes/whats-new-in-version-2203) is required.

1. Set up tenant attach. To learn more, see [Get started: Create and deploy endpoint security policies from the admin center](/mem/configmgr/tenant-attach/endpoint-security-get-started).

2. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Endpoint security** \> **Antivirus**, and then choose **+ Create Policy**.

   - In the **Platform** list, select **Windows 10, Windows 11, and Windows Server (ConfigMgr)**.
   - In the **Profile** list, select **Windows Security experience (preview)**.

3. Deploy the policy to your device collection.

## Need help with this method?

See the following resources:

- [Settings for the Windows Security experience profile in Microsoft Intune](/mem/intune/protect/antivirus-security-experience-windows-settings)
- [Tech Community Blog: Announcing Tamper Protection for Configuration Manager Tenant Attach clients](https://techcommunity.microsoft.com/t5/microsoft-endpoint-manager-blog/announcing-tamper-protection-for-configuration-manager-tenant/ba-p/1700246#.X3QLR5Ziqq8.linkedin)
