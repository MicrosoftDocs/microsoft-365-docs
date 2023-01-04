---
title: Review unneeded allow list entries with Advanced Hunting in Microsoft Defender for Office 365
description: Steps and sample queries for advanced hunting to start reviewing your security configuration and removing unnecessary allow list entries.
search.product: 
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTBen
ms.localizationpriority: medium
manager: jarogers
audience: ITPro
ms.collection: 
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
ms.subservice: mdo
search.appverid: met150
---

# Introduction

Allow lists are a historic way of telling Exchange Online Protection to ignore the signals indicating an email is malicious, it is commonplace for vendors to request IPs, domains and sender addresses are all overridden unnecessarily. Attackers have been known to take advantage of this and it is a considerable security loophole to have unnecessary allow list entries, this guide will walk you through using advanced hunting to identify such overrides and remove them to increase your organizations security posture. 

## What you will need
- Microsoft Defender for Office 365 Plan 2 (Included in E5 plans, or trial available at aka.ms/trymdo)
- Sufficient permissions (Security reader role)
- 5-10 minutes to perform the steps below.

## Common steps for all the below queries

1. Login to the security portal and navigate to advanced hunting https://security.microsoft.com/advanced-hunting 
1. Enter the KQL query into the query box, and press **Run Query**
1. Pressing the **NetworkMessageId** hyperlink for individual emails when shown in the results will load a flyout, allowing easy access to the email entity page, where the **analysis** tab will provide further details, such as the transport rule(s) which that email matched.  
1. The results can also be exported by pressing **Export** for manipulation / analysis offline. 

> [!TIP]
> Changing **“OrgLevelAction”** to **“UserLevelAction”** will allow you to search for emails being overridden by users rather than administrators and can also be a useful insight.

## Queries

### Top override source 
Use this query to find where the most unneeded overrides are located, this query looks for emails which have been overridden without any detection to have needed an override. 

`EmailEvents 
| where OrgLevelAction == "Allow" 
| summarize count() by OrgLevelPolicy, ThreatTypes`

### Top overridden threat type 
Use this query to find the most overridden types of threat detected, this query looks for emails which have had the threat detected within them overridden, DMARC or Spoof indicates authentication issues which can be resolved to remove the need for an override. 

`EmailEvents 
| where OrgLevelAction == "Allow" and ThreatTypes != "" 
|summarize count() by DetectionMethods `

### Top overridden IPs
This query looks for emails which have been overridden by IP without any detection to have needed an override.

`EmailEvents 
| where OrgLevelAction == "Allow" and ThreatTypes != "" 
|summarize count() by SenderIPv4 
| top 10 by count_ `

### Top overridden domains
This query looks for emails which have been overridden by sending domain without any detection to have needed an override. **(change to SenderMailFromDomain to check the 5321.MailFrom)**

`EmailEvents 
| where OrgLevelAction == "Allow" and ThreatTypes != "" 
|summarize count() by SenderFromDomain 
| top 10 by count_ `

### Top overridden senders
This query looks for emails which have been overridden by sending address without any detection to have needed an override. **(change to SenderMailFromAddress to check the 5321.MailFrom)**

`EmailEvents
| where OrgLevelAction == "Allow" and ThreatTypes != "" 
|summarize count() by SenderFromAddress 
| top 10 by count_ `

## Learn More
Hopefully you found this useful, with some basic queries to get you started with advanced hunting, to learn more check out the below articles

Learn more about advanced hunting: [Overview - Advanced hunting | Microsoft Docs](/microsoft-365/security/defender/advanced-hunting-overview)

Learn more about authentication: [Email Authentication in Exchange Online Protection](/microsoft-365/security/office-365-security/email-authentication-about)
