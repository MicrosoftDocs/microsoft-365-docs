---
title: Turn on definition retirement for Microsoft Defender Antivirus
description: Turn on definition retirement for Microsoft Defender Antivirus.
keywords: Microsoft Defender Antivirus, antimalware, security, defender, definition retirement
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
localization_priority: Normal
author: denisebmsft
ms.author: deniseb
ms.date: 05/07/2021
ms.reviewer: 
manager: dansimp
ms.custom: nextgen
ms.technology: mde
ms.topic: article
---

# Turn on definition retirement

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

You can configure definition retirement using Group Policy. Definition retirement checks to see if a computer has the required security updates necessary to protect it against a particular vulnerability. If the system is not vulnerable to the exploit detected by a definition, then that definition is "retired". If all security intelligence for a given protocol are retired then that protocol is no longer parsed. Enabling this feature helps to improve performance. On a computer that is up-to-date with all the latest security updates, network protection will have no impact on network performance.

## Use Group Policy to configure definition retirement

1. On your Group Policy management endpoint, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)).

2. Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Network Inspection System**. 

3. Select **Turn on definition retirement**. By default, this policy is enabled. If set **Not configured**, definition retirement is enabled. 

4. To edit the policy, select the **edit policy setting** link.

5. Select **Enabled**, and then select **OK**.

6. Deploy your updated Group Policy Object. See [Group Policy Management Console](/windows/win32/srvnodes/group-policy).

> [!TIP]
> Are you using Group Policy Objects on premises? See how they translate in the cloud. [Analyze your on-premises group policy objects using Group Policy analytics in Microsoft Endpoint Manager - Preview](/mem/intune/configuration/group-policy-analytics). 
  
## Related articles

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
 
- [Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md)

- [How to create and deploy antimalware policies: Cloud-protection service](/configmgr/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service)