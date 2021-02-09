---
title: "Learn about app threat detection and remediation"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.collection: m365-security-compliance
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
description: "Learn about app threat detection and remediation."
---

# Learn about app threat detection and remediation

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

>[!Note]
>REVIEWERS: This content is in progress and not ready for review.
>

With Microsoft Application Protection and Governance (MAPG), you can quickly gain visibility into and  meaningful insights on your Microsoft 365 application ecosystem. You start from the MAPG dashboard that provides a high-level summary of the apps in your tenant and from there you can efficiently navigate to top tasks.

With MAPG visibility and insights, you can see 

- A view of all the Microsoft 365 apps in your tenant in a single dashboard. 
- All the apps’ activities so that you can react or respond to them.

>[!Note]
>Azure-only apps that are not granted permissions to access Microsoft 365 resources are not displayed in MAPG.
>

Here's a quick review of required administrator roles for alerts and remediation.

| Role | | Read alerts | Update alerts |
|:-------|:-----|:-------|
| Compliance Administrator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Compliance Reader | ![Check mark](..\media\checkmark.png) |  |  |
| Global Administrator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Global Reader  | ![Check mark](..\media\checkmark.png) |  |
| Security Administrator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Security Reader  | ![Check mark](..\media\checkmark.png) |  |
| Security Operator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
||||


Review of required administrator roles for visibility and insights

With MAPG detection, be alerted and notified when there are anomalies in app activity and when non-compliant, malicious, or risky apps are used. 

With MAPG remediation, along with automatic remediation capabilities, use remediation tools and controls in a timely manner to respond to anomalous app activity detections.


**Feedback from Anand:** We should add some details on how MAPG works with M365 Defender (previously MTP). Also, we should highlight the integration with MCAS and AAD.



<!--

CFA #3 Scenario 1:  As an admin, I can investigate alerts associated to my M365 apps through MAPG.
CFA #3 Scenario 2: As an admin, I can manually remediate 
CFA #3 Scenario 3: As an admin, I can configure policies to perform automatic 

--> 

