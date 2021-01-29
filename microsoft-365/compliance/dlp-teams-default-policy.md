---
title: "Learn about the default data loss prevention policy in Microsoft Teams (preview)"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
search.appverid: 
- MET150
description: "Learn about the default data loss prevention policy in Microsoft Teams"
---

# Learn about the default data loss prevention policy in Microsoft Teams (preview)

[Data loss prevention](data-loss-prevention-policies.md) (DLP) capabilities have been extended to include Microsoft Teams chat and channel messages, including private channel messages. As a part of this release, we created a default DLP policy for first time customers to Compliance center.

## Applies to

Any tenant who are licensed with one or more of the below licenses and have active Teams users
 
- ME5, 
- MA5, 
- E5/A5 Compliance, 
- IP+G, 
- OE5, 
- O365 Adv Compliance and 
- EMS E5


## What does the default policy do?

The default DLP policy, which is on by default on all users of the tenant, tracks all the credit card numbers shared internally and externally to the organization. It does not generate any policy tips for end users but does generate an Alert event and also triggers a low severity email to the admin (added in the policy). Administrator can view the activities and edit the policies details by logging into the Compliance center.

Admins can view this policy in the [Compliance center](https://compliance.microsoft.com/compliancesettings) > Data Loss prevention policies page.


> [!div class="mx-imgBorder"]
> ![default Teams DLP policy](../media/default-teams-dlp-policy.png)

## Edit or delete the default policy

To [edit or delete](create-test-tune-dlp-policy.md#tune-a-dlp-policy) the default policy, just use an account with **DLP Compliance Management** permissions. See, [Permissions](create-test-tune-dlp-policy.md#permissions) for more information.

