---
title: "Learn about Adaptive Protection in data loss prevention"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MET150
description: "Learn how insider risk management and data Loss prevention work together to dynamically protect your organization from risky user activities."
---

# Learn about Adaptive Protection in Data Loss Prevention (preview)

Adaptive Protection in Microsoft Purview integrates Microsoft Purview Insider Risk Management (IRM) with Microsoft Purview Data Loss Prevention (DLP). When IRM identifies a user who is engaging in risky behavior, it can automatically create a DLP policy to help protect the organization against that risky behavior. You can manually create DLP policies that help protect against risky behaviors that IRM identifies too.

Refer to [LINK TO ROBS ARTICLE](blah.md) to learn the basics of adaptive protection.

## How adaptive protection shows up in DLP




the **User's risk level for adaptive protection is** will show up as condition in rules that are configured for policies scoped to Exchange Online, Devices, and Teams locations.

When a user exhibits a risky behavior that triggers a match in an IRM policy, IRM can automatically create a DLP policy to 

**User's risk level for adaptive protection is**

**Elevated risk level**
**Moderate risk level**
**Minor risk level**

Once click configuration - configured in IRM, these get automatically created policy parameters:

Link to Rob's docs

first use Adaptive Protection in Microsoft Purview

Adaptive Protection for subsequent uses


- Test mode
- Risk level - taken from the IRM risk level
- Actions
    - check box Restrict access or encrypt the content in Microsoft 365 locations
    - radio button Block users from receiving email or accessing share SharePoint, OneDrive, and Teams files
    - radio button - Block only people outside your organization
  

ok, that's an important distinction  to make:; Auto configured policies give you 1 policy for TEams + EXO with  3 rules, one for each of the risk levels AND 1 policy for Teams with three rules, one for each of the risk levels.  IF they don't want that. then they need to create their rules manually



Manually created
user picks the risk level, actions, everything




