---
title: Specify additional definition sets for network traffic inspection for Microsoft Defender Antivirus
description: Specify additional definition sets for network traffic inspection for Microsoft Defender Antivirus.
keywords: Microsoft Defender Antivirus, antimalware, security, defender, network traffic inspection
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.date: 05/07/2021
ms.reviewer:
manager: dansimp
ms.custom: nextgen
ms.subservice: mde
ms.topic: article
ms.collection: M365-security-compliance
---

# Specify additional definition sets for network traffic inspection

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

You can specify additional definition sets for network traffic inspection using Group Policy.

## Use Group Policy to specify additional definition sets for network traffic inspection

1. On your Group Policy management endpoint, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)).

2. Go to **Windows Components** \> **Microsoft Defender Antivirus** \> **Network Inspection System**.

3. Select **Specify additional definition sets for network traffic inspection**. By default, this policy is set to **Not configured**.

4. To edit the policy, select the **edit policy setting** link.

5. Select **Enabled**, and then in the **Options** section, select **Show...**.

6. Add entries to the list, and then select **OK**.

   Each entry must be listed as a name-value pair, where the name is a string representation of a definition set GUID. As an example, the definition set GUID to enable test security intelligence is defined as: `{b54b6ac9-a737-498e-9120-6616ad3bf590}`. The value is not used, so we recommend setting it to `0`.

7. Select **OK**, and then deploy your updated Group Policy Object. See [Group Policy Management Console](/windows/win32/srvnodes/group-policy).

> [!TIP]
> Are you using Group Policy Objects on premises? See how they translate in the cloud. [Analyze your on-premises group policy objects using Group Policy analytics in Microsoft Endpoint Manager - Preview](/mem/intune/configuration/group-policy-analytics).

## Related articles

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md)
- [How to create and deploy antimalware policies: Cloud-protection service](/configmgr/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service)