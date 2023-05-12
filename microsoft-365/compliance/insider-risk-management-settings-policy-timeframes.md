---
title: Set policy timeframes in insider risk management
description: Learn about the Policy timeframes settings in Microsoft Purview Insider Risk Management. 
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

# Set policy timeframes in insider risk management

> [!IMPORTANT]
> Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage, and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

Policy timeframes in Microsoft Purview Insider Risk Management allow you to define past and future review periods that are triggered after policy matches based on events and activities for the insider risk management policy templates. Depending on the policy template you choose, the following policy timeframes are available:

- **Activation window**: Available for all policy templates, *Activation window* is the defined number of days that the window activates **after** a triggering event. The window activates for 1 to 30 days after a triggering event occurs for any user assigned to the policy. For example, you've configured an insider risk management policy and set *Activation window* to 30 days. Several months have passed since you configured the policy, and a triggering event occurs for one of the users included in the policy. The triggering event activates *Activation window* and the policy is active for that user for 30 days after the triggering event occurred.
- **Past activity detection**: Available for all policy templates, *Past activity detection* is the defined number of days that the window activates **before** a triggering event. For activities in the audit log, the window activates for 0 to 90 days before a triggering event occurs for any user assigned to the policy. For example, you've configured an insider risk management policy and set *Past activity detection* to 90 days. Several months have passed since you configured the policy, and a triggering event occurs for one of the users included in the policy. The triggering event activates *Past activity detection* and the policy gathers historic activities for that user for 90 days prior to the triggering event. 

   > [!NOTE]
   > For email activities, the past activity detection period is 10 days. 

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Set policy timeframes

1. Select the **Settings** button, and then select **Policy timeframes**.
2. Move the slider for **Activation window** and **Past activity detection** to the number of days that you want.

   ![Insider risk management timeframe settings.](../media/insider-risk-settings-timeframes.png)