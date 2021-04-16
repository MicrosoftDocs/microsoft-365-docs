---
title: Report and troubleshoot Microsoft Defender for ATP ASR Rules
description: This topic describes how to report and troubleshoot Microsoft Defender for ATP ASR Rules
keywords: Attack surface reduction rules, asr, hips, host intrusion
prevention system, protection rules, anti-exploit, antiexploit, 
exploit, infection prevention, microsoft defender for endpoint
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
audience: ITPro
author: lovina-saldanha
ms.author: v-lsaldanha
ms.reviewer: 
manager: dansimp
ms.custom: asr
ms.technology: mde
---

# Report and troubleshoot Microsoft Defender for ATP ASR Rules

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

The Microsoft 365 security center is the new interface for monitoring and managing security across your Microsoft identities, data, devices, apps, and infrastructure. Here you can easily view the security health of your organization, act to configure devices, users, and apps, and get alerts for suspicious activity. The Microsoft 365 security center is specifically intended for security admins and security operations teams to better manage and protect their organization. Visit the Microsoft 365 security center at https://security.microsoft.com.
In Microsoft 365 security center, we offer you a complete look at the current ASR rules configuration and events in your estate. Please note that your devices must be onboarded into the Microsoft Defender ATP service for these reports to be populated.
Here is a screenshot from the Microsoft 365 security center (under **Reports** > **Devices** > **Attack surface reduction** ). At the device level, select **Configuration** from the **Attack surface reduction rules** pane. The following screen is displayed, where you can select a specific device and check its individual ASR rule configuration.

:::image type="content" source="images/ASRrules.png" alt-text="ASR rules screen":::

## Microsoft Defender ATP – Advanced hunting

One of the most powerful features of Microsoft Defender ATP is advanced hunting. If you are unfamiliar with advanced hunting, please refer [proactively hunt for threats with advanced hunting](advanced-hunting-overview.md).

Advanced hunting is a query-based (Kusto Query Language) threat-hunting tool that lets you explore up to 30 days of the captured (raw) data, that Microsoft Defender ATP Endpoint Detection and Response (EDR) collects from all your machines. Through advanced hunting you can proactively inspect events in order to locate interesting indicators and entities. The flexible access to data facilitates unconstrained hunting for both known and potential threats.

Through advanced hunting, it is possible to extract ASR rules information, create reports, and get in-depth information on the context of a given ASR rule audit or block event.

ASR rules events are available to be queried from the DeviceEvents table in the advanced hunting section of the Microsoft Defender Security Center. For example, a simple query such as the one below can report all the events that have ASR rules as data source, for the last 30 days, and will summarize them by the ActionType count, that in this case it will be the actual codename of the ASR rule.

:::image type="content" source="images/adv-hunt-query.PNG" alt-text="Advanced hunting query":::

:::image type="content" source="images/adv-hunt-sc-2.PNG" alt-text="advanced hunting screen":::

With advanced hunting you can shape the queries to your liking, so that you can see what is happening, regardless of whether you want to pinpoint something on an individual machine, or you want to extract insights from your entire environment.

## Microsoft Defender ATP machine timeline

An alternative to advanced hunting, but with a narrower scope, is the Microsoft Defender ATP machine timeline. You can view all the collected events of a device, for the past 6 months, in the Microsoft Defender Security Center, by going to the Machines list, select a given machine, and then click on the Timeline tab.

Pictured below is a screenshot of the Timeline view of these events on a given endpoint.  From this view, you can filter the events list based on any of the Event Groups along the right-side pane. You can also enable or disable Flagged and Verbose events while viewing alerts and scrolling through the historical timeline.

:::image type="content" source="images/mic-sec-def-timeline.PNG" alt-text="microsoft defender security center timeline":::

## How to troubleshoot ASR rules?

The first and most immediate way is to check locally, on a Windows device, which ASR rules are enabled (and their configuration) is by using the PowerShell cmdlets.

Here are a few other sources of information that Windows offers, to troubleshoot ASR rules’ impact and operation.

### Querying which rules are active
One of the easiest ways to determine if ASR rules are already enabled—and, is through a PowerShell cmdlet, Get-MpPreference.
Here is an example:

:::image type="content" source="images/getmpreferencescript.PNG" alt-text="get mppreference script":::

There are multiple ASR rules active, with different configured actions.

To expand the above information on ASR rules, you can use the properties **AttackSurfaceReductionRules_Ids** and/or **AttackSurfaceReductionRules_Actions**.

Example:

*Get-MPPreference | Select-Object -ExpandProperty**AttackSurfaceReductionRules_Ids*

:::image type="content" source="images/getmpref-example.PNG" alt-text="get mpreference example":::

The above shows all the IDs for ASR rules that have a setting different from 0 (Not Configured).

The next step is then to list the actual actions (Block or Audit) that each rule is configured with. 

*Get-MPPreference | Select-Object -ExpandProperty**AttackSurfaceReductionRules_Actions*

:::image type="content" source="images/getmpref-example2.PNG" alt-text="get mppreference example2":::

### Querying blocking and auditing events
ASR rule events can be viewed within the Windows Defender log.

To access it, open Windows Event Viewer, and browse to **Applications and Services Logs** > **Microsoft** > **Windows** > **Windows Defender** > **Operational**.

:::image type="content" source="images/eventviewerscr.PNG" alt-text="event viewer scr":::

## Microsoft Defender Malware Protection Logs
You can also view rule events through the Microsoft Defender Antivirus dedicated command-line tool, called `*mpcmdrun.exe*`, that can be used to manage and configure, as well as automate tasks if needed.

You can find this utility in *%ProgramFiles%\Windows Defender\MpCmdRun.exe*. You must run it from an elevated command prompt (i.e. run as Admin).

To generate the support information, type *MpCmdRun.exe -getfiles*. After a while, several logs will be packaged into an archive (MpSupportFiles.cab) and made available in *C:\ProgramData\Microsoft\Windows Defender\Support*.

:::image type="content" source="images/malware-prot-logs.PNG" alt-text="malware protection logs":::

Extract that archive and you will have many files available for troubleshooting purposes.

The most relevant files are as follows:

- **MPOperationalEvents.txt** - This file contains same level of information found in Event Viewer for Windows Defender’s Operational log.
- **MPRegistry.txt** – In this file you will be able to analyze all the current Windows Defender configurations, from the moment the support logs were captured.
- **MPLog.txt** – This log contains more verbose information about all the actions/operations of the Windows Defender.


