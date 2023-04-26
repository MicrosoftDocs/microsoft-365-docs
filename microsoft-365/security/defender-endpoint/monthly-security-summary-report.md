---
title: Monthly security summary reporting in Microsoft Defender for Endpoint
description: Use the monthly security summary to see threats detected and prevented, current status from Microsoft Secure Score, and recommended actions.
keywords: month report, security summary, managed devices, secure score, incidents
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
ms.date: 04/26/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
ms.reviewer: yaelbenari
---

# Monthly security summary report in Microsoft Defender for Endpoint

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)


The monthly security report provides information about an organization's protection state and the work that was done to prevent and respond to cyberthreats. This report helps organizations get a visual summary of key findings and overall preventative actions taken to enhance the organization's overall security posture completed in the last month. 

To access this report, in the navigation pane, choose **Reports > Endpoints > Monthly Security Summary**. The monthly security summary report contains the following sections:

- Devices
- Secure score
- Posture initiatives
- Incidents

You can generate a PDF report of the summary, by selecting **Generate PDF report**. The generated report is a summary of the last 30 days.


## Devices
Devices must be onboarded to the service so that they can be protected. The devices card provides information on the number of devices that were onboarded in the last month as well as devices not yet onboarded. It also shows a graph which reflects the trend of devices being onboarded. In general, an upward trend is a good indication that devices are being onboarded to the service and are receiving protection.

## Secure score
Microsoft Secure Score is a measurement of an organization's security posture. A higher number indicates more recommended actions taken and a better posture and overall ability to predict, prevent, and respond to threats. The secure score card shows how the overall cybersecurity strength of an organization has improved in the past month and how it compares to other companies with similar number of managed devices.


## Posture initiatives 
This card shows how resilient your organization is to specific attacks. A higher number indicates better defense in place against phishing and ransomware. Recommendations are provided so you can take action to increase the score and improve your defenses against these types of attacks. You'll also be able to see how the protection increased in the last month and how many malicious URLs were clicked and malware was blocked.<-- YAEL: PLEASE VERIFY THIS. IN THE SLIDES YOU SHOW, THERE ARE "ACTIONS CAN BE TAKEN" ETC... BUT IN THE STAGING, THERE IS NONE.

## Incidents
Track how many incidents and alerts were resolved in the past month using the incidents card. The card also shows all active incidents and alerts. You'll also be able to see a list of the top 10 severe incidents, their status, number of alerts, and the impacted devices and users. 


 