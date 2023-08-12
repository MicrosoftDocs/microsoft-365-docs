---
title: Use automated investigations to investigate and remediate threats
description: Understand the automated investigation flow in Microsoft Defender for Endpoint.
keywords: automated, investigation, detection, Microsoft Defender for Endpoint
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.service: microsoft-365-security
ms.subservice: mde
author: dansimp
ms.author: dansimp
ms.localizationpriority: medium
ms.date: 08/31/2022
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: how-to
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs
ms.custom: AIR
search.appverid: met150
---

# Overview of automated investigations

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)

**Platforms**
- Windows

Want to see how it works? Watch the following video:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bOeh]

The technology in automated investigation uses various inspection algorithms and is based on processes that are used by security analysts. AIR capabilities are designed to examine alerts and take immediate action to resolve breaches. AIR capabilities significantly reduce alert volume, allowing security operations to focus on more sophisticated threats and other high-value initiatives. All remediation actions, whether pending or completed, are tracked in the [Action center](auto-investigation-action-center.md). In the Action center, pending actions are approved (or rejected), and completed actions can be undone if needed.

This article provides an overview of AIR and includes links to next steps and additional resources.

> [!TIP]
> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-automated-investigations-abovefoldlink)

## How the automated investigation starts

An automated investigation can start when an alert is triggered or when a security operator initiates the investigation.

|Situation|What happens|
|---|---|
|An alert is triggered|In general, an automated investigation starts when an [alert](review-alerts.md) is triggered, and an [incident](view-incidents-queue.md) is created. For example, suppose a malicious file resides on a device. When that file is detected, an alert is triggered, and incident is created. An automated investigation process begins on the device. As other alerts are generated because of the same file on other devices, they are added to the associated incident and to the automated investigation.|
|An investigation is started manually|An automated investigation can be started manually by your security operations team. For example, suppose a security operator is reviewing a list of devices and notices that a device has a high risk level. The security operator can select the device in the list to open its flyout, and then select **Initiate Automated Investigation**.|

## How an automated investigation expands its scope

While an investigation is running, any other alerts generated from the device are added to an ongoing automated investigation until that investigation is completed. In addition, if the same threat is seen on other devices, those devices are added to the investigation.

If an incriminated entity is seen in another device, the automated investigation process expands its scope to include that device, and a general security playbook starts on that device. If 10 or more devices are found during this expansion process from the same entity, then that expansion action requires an approval, and is visible on the **Pending actions** tab.

## How threats are remediated

As alerts are triggered, and an automated investigation runs, a verdict is generated for each piece of evidence investigated. Verdicts can be:

- *Malicious*;
- *Suspicious*; or
- *No threats found*.

As verdicts are reached, automated investigations can result in one or more remediation actions. Examples of remediation actions include sending a file to quarantine, stopping a service, removing a scheduled task, and more. To learn more, see [Remediation actions](manage-auto-investigation.md#remediation-actions).

Depending on the [level of automation](automation-levels.md) set for your organization, as well as other security settings, remediation actions can occur automatically or only upon approval by your security operations team. Additional security settings that can affect automatic remediation include [protection from potentially unwanted applications](/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus) (PUA).

All remediation actions, whether pending or completed, are tracked in the [Action center](auto-investigation-action-center.md). If necessary, your security operations team can undo a remediation action. To learn more, see [Review and approve remediation actions following an automated investigation](/microsoft-365/security/defender-endpoint/manage-auto-investigation).

> [!TIP]
> Check out the new, unified investigation page in the Microsoft 365 Defender portal. To learn more, see [Unified investigation page](/microsoft-365/security/defender/m365d-autoir-results#new-unified-investigation-page).

## Requirements for AIR

Your subscription must include [Defender for Endpoint](microsoft-defender-endpoint.md) or [Defender for Business](../defender-business/mdb-overview.md).

> [!NOTE]
> Automated investigation and response requires Microsoft Defender Antivirus for running in passive mode or active mode. If Microsoft Defender Antivirus is disabled or uninstalled, Automated Investigation and Response will not function correctly.

Currently, AIR only supports the following OS versions:

- Windows Server 2012 R2 (Preview)
- Windows Server 2016 (Preview)
- Windows Server 2019
- Windows Server 2022
- Windows 10, version 1709 (OS Build 16299.1085 with [KB4493441](https://support.microsoft.com/help/4493441/windows-10-update-kb4493441)) or later
- Windows 10, version 1803 (OS Build 17134.704 with [KB4493464](https://support.microsoft.com/help/4493464/windows-10-update-kb4493464)) or later
- Windows 10, version [1803](/windows/release-information/status-windows-10-1809-and-windows-server-2019) or later
- Windows 11

> [!NOTE]
> Automated investigation and response on Windows Server 2012 R2 and Windows Server 2016 requires the [Unified Agent](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution) to be installed. 

## Next steps

- [Learn more about automation levels](automation-levels.md)
- [See the interactive guide: Investigate and remediate threats with Microsoft Defender for Endpoint](https://aka.ms/MDATP-IR-Interactive-Guide)
- [Configure automated investigation and remediation capabilities in Microsoft Defender for Endpoint](configure-automated-investigations-remediation.md)

## See also

- [PUA protection](/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus)
- [Automated investigation and response in Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/air-about)
- [Automated investigation and response in Microsoft 365 Defender](/microsoft-365/security/defender/m365d-autoir)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
