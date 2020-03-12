---
title: "Feature permissions in EOP"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 1/30/2018
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 34674847-a6b7-4a7e-9eaa-b64f22bc150d
description: "The permissions required to perform tasks to manage Microsoft Exchange Online Protection (EOP) vary depending on the feature you are managing."
---

# Feature permissions in EOP

The permissions required to perform tasks to manage Exchange Online Protection (EOP) vary depending on the feature you are managing.

To set up EOP, you must be a global admin, or an Exchange Company Administrator (the Organization Management role group).

## Exchange Online Protection permissions

To find out what permissions you need to manage EOP features, see the following table. If a feature lists more than one role group, you only need to be assigned one of the role groups to use the feature.

|**Feature**|**Permissions required**|
|:-----|:-----|
|Anti-malware|Organization Management <br/><br/> Hygiene Management|
|Anti-spam|Organization Management <br/><br/> Hygiene Management|
|Mail flow rules|Organization Management <br/><br/> Records Management|
|Domains|Organization Management <br/><br/> View-Only Organization Management|
|Advanced Threat Protection (ATP)|Organization Management <br/><br/> Hygiene Management|
|Office 365 connectors|Organization Management|
|Message trace|Organization Management <br/><br/> View-Only Organization Management|
|Organization configuration|Organization Management|
|Quarantine|Organization Management <br/><br/> View-Only Organization Management <br/><br/> Hygiene Management|
|Users, Contacts, and Role Groups|Organization Management <br/><br/> View-Only Organization Management <br/><br/> Hygiene Management|
|Distribution Groups and Security Groups|Organization Management <br/><br/> View-Only Organization Management <br/><br/> Hygiene Management|
|View reports|Organization Management: Access to mail protection reports. <br/><br/> View-Only Recipients: Access to mail protection reports.  <br/><br/> Compliance Management: Access to mail protection reports and Data Loss Prevention (DLP) reports (if your subscription has DLP capabilities).|
