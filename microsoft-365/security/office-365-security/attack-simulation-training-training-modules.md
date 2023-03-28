---
title: Training modules for Training campaigns in Attack simulation training
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.collection: 
  - m365-security
  - tier2
description: Admins can learn about the Training modules that are available to use in Training campaigns in Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
ms.date: 01/13/2023
---

# Training modules for Training campaigns in Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
 [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

> [!NOTE]
> This article describes features that are in Public Preview, aren't available in all organizations, and are subject to change.

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, you select one or more Training modules to include in Training campaigns that you create and assign to users. For more information about Training campaigns, see [Training campaigns in Attack simulation training](attack-simulation-training-training-campaigns.md).

To see the available Training modules, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> and then select **Training modules**. To go directly to the **Content library** tab where you can select **Training modules**, use <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>.

**Training modules** shows the following information for each module:

- **Training name**
- **Languages**: The available values are: **Arabic**, **Chinese(Simplified)**, **Chinese(Traditional, Hong Kong), **Chinese(Traditional, Taiwan), **Czech**, **Danish**, **Dutch**, **English**, **English**, **Finnish**, **French**, **French**, **German**, **Hebrew**, **Hindi**, **Hungarian**, **Indonesian**, **Italian**, **Japanese**, **Korean**, **Malay**, **NorwegianBokmål**, **Persian**, **Polish**, **Portuguese**, **Portuguese**, **Russian**, **Slovakian**, **Spanish**, **Swedish**, **Thai**, **Turkish**, **Ukrainian**, **Vietnamese**

- **Tags**: Training modules are organized into one or more of the following categories:
  - **AttachmentMalware**
  - **Basic**
  - **Compliance**
  - **Compromised**
  - **CredentialHarvesting**
  - **DriveByURL**
  - **LinkInAttachment**
  - **LinkToMalwareFile**
  - **OAuthConsentGrant**
  - **Phishing**
- **Source**: All built-in modules have the value **Global**.
- **Duration (mins)**
- **Last assigned date**
- **# times used**
- **Completion rate**
- **Preview**: Click the **Preview** button in this column to watch the training.

To find a Training module in the list, use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find the name of the module.

Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the information on the page. The following filters are available in the flyout that opens:

- **Source**
- **Language**
- **Tags**: Filter the results by the previously described **Tags** values.

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

To remove one or more columns that are displayed, click ![Customize columns icon.](../../media/m365-cc-sc-customize-icon.png) **Customize columns**.

When you select a Training module from the list, a details flyout appears with the following information:

- **Description**
- **Source**
- **Languages**
- **Duration**
- **Preview**: Click this button to watch the training.

- **Active Training campaigns and simulations**: This section shows the following information about active Training campaigns that are using the selected module:
  - **Name**
  - **Type**
  - **Status**
  - **End by**
