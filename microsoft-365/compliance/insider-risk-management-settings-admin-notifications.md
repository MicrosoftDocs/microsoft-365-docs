---
title: Enable admin notifications for insider risk management
description: Learn about enabling admin notifications setting for Microsoft Purview Insider Risk Management 
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 05/03/2023
audience: itpro
ms.collection:
- highpri 
- tier1
- purview-compliance
- m365solution-insiderrisk
- m365initiative-compliance
- highpri
ms.custom: admindeeplinkCOMPLIANCE
---

# Enable admin notifications for insider risk management

When you turn on the **Admin notifications** setting in Microsoft Purview Insider Risk Management, email notifications are automatically sent to selected role groups. You can send email notifications for the following scenarios:

- Send a notification email when the first alert is generated for a new policy. Policies are checked every 24 hours for first-time alerts and notifications aren't sent on subsequent alerts for the policy.
- Send a daily email when new high-severity alerts are generated. Policies are checked every 24 hours for high severity alerts.
- Send a weekly email summarizing policies that have unresolved warnings.

If you've enabled insider risk management analytics for your organization, members of the *Insider Risk Management Admins* role group automatically receive an email notification for initial analytics insights for data leaks, theft, and exfiltration activities.

To disable admin and analytics notifications:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management**, and then select the **Settings** button.
2. Select **Admin notifications**.
3. Clear the check boxes for the following options, as applicable:

    - **Send a notification email when the first alert is generated for a new policy**
    - **Send an email when an analytics scan detects an insight for the first time**
    - **Send an email when analytics is turned off for your organization**

4. Select **Save**.
 
   ![Insider risk management priority admin notifications.](../media/insider-risk-settings-admin-notifications.png)