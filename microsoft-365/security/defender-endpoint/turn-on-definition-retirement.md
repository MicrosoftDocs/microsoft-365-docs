---
title: Turn on definition retirement for Microsoft Defender Antivirus
description: Turn on definition retirement for Microsoft Defender Antivirus.
keywords: Microsoft Defender Antivirus, antimalware, security, defender, definition retirement
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.date: 06/10/2021
ms.reviewer:
manager: dansimp
ms.custom: nextgen
ms.subservice: mde
ms.topic: conceptual
ms.collection: 
- m365-security
- tier3
search.appverid: met150
---

# Turn on definition retirement

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

You can configure definition retirement using Group Policy. Definition retirement checks to see if a computer has the required security updates necessary to protect it against a particular vulnerability. If the system isn't vulnerable to the exploit detected by a definition, then that definition is "retired". If all security intelligence for a given protocol is retired, then that protocol is no longer parsed. Enabling this feature helps to improve performance. On a computer that is up-to-date with all the latest security updates, network protection has no impact on network performance.

## Use Group Policy to configure definition retirement

1. On your Group Policy management endpoint, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)).

2. Go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Network Inspection System**.

3. Select **Turn on definition retirement**. By default, this policy is enabled. If set **Not configured**, definition retirement is enabled.

4. To edit the policy, select the **edit policy setting** link.

5. Select **Enabled**, and then select **OK**.

6. Deploy your updated Group Policy Object. See [Group Policy Management Console](/windows/win32/srvnodes/group-policy).

> [!TIP]
> Are you using Group Policy Objects on premises? See how they translate in the cloud. [Analyze your on-premises group policy objects using Group Policy analytics in Microsoft Intune](/mem/intune/configuration/group-policy-analytics).
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
