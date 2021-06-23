---
title: How to use Microsoft Defender for business
description: Learn how to view & manage alerts, respond to threats, manage devices, and review remediation actions
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.date: 06/23/2021
ms.prod: security
ms.technology: dforbiz
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
---

# How to use Microsoft Defender for business

After you have setup and configured Microsoft Defender for business, you are ready to start using the features and capabilities. Key tasks you can perform with Microsoft Defender for business include:
•	Monitoring alerts and incidents
•	Responding to and mitigating detected threats
•	Managing devices
•	Reviewing remediation actions
Monitor your incidents & alerts
In the Microsoft 365 Defender portal (https://security.microsoft.com), in the navigation pane, select Incidents & alerts > Alerts. Any alerts that were triggered are listed on the page.
Select an alert to open its flyout pane, where you can learn more about the alert. 
SCREENSHOT
In the flyout pane, you can see the alert title, view a list of assets (such as endpoints or user accounts) that were affected, take available actions, and use links to view more information and even open the details page for the selected alert. 
Microsoft Defender for business is designed to help you address detected threats by offering up recommended actions. When you view an alert, look for the recommended actions to take. Also take note of the alert severity, which is determined not only on the basis of the threat severity, but also on the level of risk to your company. 

Alert severity
When Microsoft Defender Antivirus assigns an alert severity based on the absolute severity of a detected threat (malware) and the potential risk to an individual endpoint (if infected).
Microsoft Defender for business assigns an alert severity based on the severity of the detected behavior, the actual risk to an endpoint (device), and more importantly, the potential risk to your company. Table 4 lists a few examples:

Table 4. Examples showing how alert severity is determined
Scenario	Alert severity	Reason
Microsoft Defender Antivirus detects and stops a threat before it does any damage.	Informational	The threat was stopped before any damage was done.
Microsoft Defender Antivirus detects malware that was executing within your company. The malware is stopped and remediated.	Low	Although some damage might have been done to an individual endpoint, the malware now poses no threat to your company.
Malware that is executing is detected by Microsoft Defender for business. The malware is blocked almost immediately.	Medium or High	The malware poses a threat to individual endpoints and to your company.
Suspicious behavior is detected but no remediation actions are taken yet.	Low, Medium, or High	The severity depends on the degree to which the behavior poses a threat to your company.

Respond to and mitigate threats
When you sign into the Microsoft 365 Defender portal, on the Home page, you’ll see cards that tell you at a glance how many threats were detected, along with how many user accounts, endpoints (devices), and other assets were affected. 

Manage devices



Review remediation actions in the Action center
As threats are detected, remediation actions come into play. Depending on the particular threat and how your security settings are configured, remediation actions might be taken automatically or only upon approval. Examples of remediation actions include sending a file to quarantine, stopping a process from running, and removing a scheduled task. 

Remediation actions in Microsoft Defender for business


 
