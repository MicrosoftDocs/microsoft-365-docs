---
title: Training campaigns in Attack simulation training
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.collection: 
  - m365-security
  - m365initiative-defender-office365
description: Admins can learn how to create training campaigns in Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
---

# Training campaigns in Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
 [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

In Attack simulation training in Microsoft Defender for Office 365 Plan 2, Training campaigns are a faster, more direct way to provide security training to users. Instead of creating and launching [simulated phishing attacks](attack-simulation-training-simulations.md) that eventually lead to training, you create and assign Training campaigns directly to users.

A Training campaign contains one or more built-in Training modules that you select. Currently, there are over 70 Training modules to select from. For more information about Training modules, see [Training modules for Training campaigns in Attack simulation training](attack-simulation-training-training-modules.md).

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

To see the existing Training campaigns, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Training** tab. To go directly to the **Training** tab, use <https://security.microsoft.com/attacksimulator?viewid=trainingcampaign>.

The **Training campaigns** tab lists the Training campaigns that you've created. The list includes the following information for each Training campaign:

- **Name**
- **Description**
- **Duration (mins)**
- **Date of completion**
- **Training completion**: The number of users who were included in the Training campaign and how many of them completed the training. The information is shown as a fraction (for example, **2/5**) and in a corresponding horizontal bar graph.
- **No. of training modules**: The number of training modules that are included in the Training campaign.
- **Created by**
- **Created time**
- **Status**: One of the following values:
  - **Completed**<sup>\*</sup>
  - **In progress**<sup>\*</sup>
  - **Draft**<sup>\*</sup>
  - **Cancelled**
  - **Deleted**
  - **Failed**<sup>\*</sup>
  - **Scheduled**<sup>\*</sup>

To find a Training campaign in the list, use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find the name of the Training campaign.

Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the information on the page by the **Status** value of the Training campaign.

<sup>\*</sup> The total count of Training campaigns with these **Status** values is also shown at the top of the page. But if you filter the information (for example, exclude on of these **Status** values), the count at the top of the page will be **0** for that excluded **Status** value.

## Create Training campaigns

To create a Training campaign, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Training** tab.

   Or, to go directly to the **Training** tab, use <https://security.microsoft.com/attacksimulator?viewid=trainingcampaign>

2. On the **Training** tab
