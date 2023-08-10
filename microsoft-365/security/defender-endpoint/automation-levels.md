---
title: Automation levels in automated investigation and remediation
description: Get an overview of automation levels and how they work in Microsoft Defender for Endpoint
author: dansimp
ms.service: microsoft-365-security
ms.subservice: mde
ms.author: dansimp
ms.localizationpriority: medium
ms.date: 07/27/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs
ms.custom: AIR
search.appverid: met150
---

# Automation levels in automated investigation and remediation capabilities

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)

Automated investigation and remediation (AIR) capabilities in Microsoft Defender for Business are preconfigured and aren't configurable. In Microsoft Defender for Endpoint, you can configure AIR to one of several levels of automation. Your automation level affects whether remediation actions following AIR investigations are taken automatically or only upon approval.

- *Full automation* (recommended) means remediation actions are taken automatically on artifacts determined to be malicious. (*Full automation is set by default in Defender for Business*.)
- *Semi-automation* means some remediation actions are taken automatically, but other remediation actions await approval before being taken. (See the table in [Levels of automation](#levels-of-automation).)
- All remediation actions, whether pending or completed, are tracked in the Action Center ([https://security.microsoft.com](https://security.microsoft.com)).

> [!TIP]
> For best results, we recommend using full automation when you [configure AIR](configure-automated-investigations-remediation.md). Data collected and analyzed over the past year shows that customers who are using full automation had 40% more high-confidence malware samples removed than customers who are using lower levels of automation. Full automation can help free up your security operations resources to focus more on your strategic initiatives.

> [!NOTE]
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

## Levels of automation

|Automation level|Description|
|---|---|
|**Full - remediate threats automatically** <br> (also referred to as *full automation*)|With full automation, remediation actions are performed automatically on entities that are considered to be malicious. All remediation actions that are taken can be viewed in the [Action Center](auto-investigation-action-center.md) on the **History** tab. If necessary, a remediation action can be undone. <p> ***Full automation is recommended** and is selected by default for tenants with Defender for Endpoint that were created on or after August 16, 2020, with no device groups defined yet.*<p>*Full automation is set by default in Defender for Business.*|
|**Semi - require approval for all folders** <br> (also referred to as *semi-automation*)|With this level of semi-automation, approval is required for remediation actions on all files. Such pending actions can be viewed and approved in the [Action Center](auto-investigation-action-center.md), on the **Pending** tab. Pending actions time out after 7 days. If an action times out, the behavior is the same as if the action is rejected. <p> *This level of semi-automation is selected by default for tenants that were created before August 16, 2020 with Microsoft Defender for Endpoint, with no device groups defined.*|
|**Semi - require approval for core folders remediation** <br> (also a type of *semi-automation*)|With this level of semi-automation, approval is required for any remediation actions needed on files or executables that are in core folders. Core folders include operating system directories, such as the **Windows** (`\windows\*`). <p> Remediation actions can be taken automatically on files or executables that are in other (non-core) folders. <p> Pending actions for files or executables in core folders can be viewed and approved in the [Action Center](auto-investigation-action-center.md), on the **Pending** tab. <p> Actions that were taken on files or executables in other folders can be viewed in the [Action Center](auto-investigation-action-center.md), on the **History** tab.|
|**Semi - require approval for non-temp folders remediation** <br> (also a type of *semi-automation*)|With this level of semi-automation, approval is required for any remediation actions needed on files or executables that aren't* in temporary folders. <p> Temporary folders can include the following examples: <ul><li>`\users\*\appdata\local\temp\*`</li><li>`\documents and settings\*\local settings\temp\*`</li><li>`\documents and settings\*\local settings\temporary\*`</li><li>`\windows\temp\*`</li><li>`\users\*\downloads\*`</li><li>`\program files\`</li><li>`\program files (x86)\*`</li><li>`\documents and settings\*\users\*`</li></ul> <p> Remediation actions can be taken automatically on files or executables that are in temporary folders. <p> Pending actions for files or executables that aren't in temporary folders can be viewed and approved in the [Action Center](auto-investigation-action-center.md), on the **Pending** tab. <p> Actions that were taken on files or executables in temporary folders can be viewed and approved in the [Action Center](auto-investigation-action-center.md), on the **History** tab.|
|**No automated response** <br> (also referred to as *no automation*)|With no automation, automated investigation doesn't run on your organization's devices. As a result, no remediation actions are taken or pending as a result of automated investigation. However, other threat protection features, such as [protection from potentially unwanted applications](/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus), can be in effect, depending on how your antivirus and next-generation protection features are configured. <p> ***Using the *no automation* option is not recommended**, because it reduces the security posture of your organization's devices. [Consider setting up your automation level to full automation (or at least semi-automation)](/microsoft-365/security/defender-endpoint/machine-groups).|

## Important points about automation levels

- Full automation has proven to be reliable, efficient, and safe, and is recommended for all customers. Full automation frees up your critical security resources so they can focus more on your strategic initiatives.

- New tenants (which include tenants that were created on or after August 16, 2020) with Defender for Endpoint are set to full automation by default.

- [Defender for Business](../defender-business/compare-mdb-m365-plans.md) uses full automation by default. Defender for Business doesn't use device groups the same way as Defender for Endpoint. Thus, full automation is turned on and applied to all devices in Defender for Business.

- If your security team has defined device groups with a level of automation, those settings aren't changed by the new default settings that are rolling out.

- You can keep your default automation settings, or change them according to your organizational needs. To change your settings, [set your level of automation](/microsoft-365/security/defender-endpoint/configure-automated-investigations-remediation#set-up-device-groups).

> [!NOTE]
> [Defender for Business](../defender-business/mdb-overview.md) depends on real-time protection for automatic investigation. Real-time protection must be enabled and in active mode to enable automatic investigation.

## Next steps

- [Configure automated investigation and remediation capabilities in Defender for Endpoint](configure-automated-investigations-remediation.md)
- [Visit the Action Center](/microsoft-365/security/defender-endpoint/auto-investigation-action-center#the-action-center)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
