---
title: "Get started with app policies"
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
description: "Get started with Learn about app policies."
---

# Get started with app policies

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

>[!Note]
>REVIEWERS: This content is in progress and not ready for review.
>

App policies for Microsoft Application Protection and Governance (MAPG) are the way that you can implement your specific needs for app compliance in your organization.

To see the list of current app policies, go to **Microsoft 365 Compliance Center > App protection & governance > Policies**.

\[Placeholder for MAPG Policies page screenshot]

## What’s available in the app policies dashboard

Describe the information on the dashboard page

You can see the number of active, inactive, and test policies, and the following information for each policy:

- **Status**

  -	Active:  All policy evaluation and actions are active. 
  - Inactive: All policy evaluation and actions are disabled. 
  - Test: Evaluation is in audit mode: active but policy actions are disabled.

- **Severity**: This will be the severity level set on any alerts triggered due to this policy being evaluated as true (set by you upon creation of any template or custom policy).
- **Number of active alerts**: Alerts that are open due to this policy’s conditions being met.
- **Number of total alerts**: Both active alerts and past alerts (includes those that were triggered in the past and actioned on) for this policy.
- **Last Alert Date**: Date of last triggered alert due to this policy.
- **Last Modified**: Date when this policy was last changed.
- **Source**: Where the policy was created.
- **Created by**: Universal Principal Name (UPN) of the account that created the policy.

You can edit or delete each policy by selecting the policy or through the vertical ellipses.

You can also:

- Create a new policy.
- Export the policy list to a comma separated value (CSV) file. For example, you could open the CVS file in Microsoft Excel and sort the policies by **Severity** and then **Number of Total Alerts**.
- Search the policy list.

## Next step

[Create an app policy.](mapg-app-policies-create.md)
