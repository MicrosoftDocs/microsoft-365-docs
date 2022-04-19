---
title: "Set up compliance features"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
- M365-subscription-management
- M365-identity-device-management 
- Adm_TOC
ms.custom:
- MiniMaven
- MSB365
- OKR_SMB_M365
- seo-marvel-mar
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
description: "Set up compliance features to prevent data loss and help keep your and your customers' sensitive information secure."
---
# Set up compliance features

Your Microsoft 365 Business Premium subscription includes compliance and privacy features. These capabilities help protect your company's data, and to help you keep your and your customers' sensitive information secure. This article is designed to help you get started with your compliance features.

## Before you begin

Make sure you have one of the following roles assigned in Azure Active Directory:

- Global Administrator
- Compliance Administrator

To learn more, see [Get started with the roles page](../admin/add-users/admin-roles-page.md).

## Use Compliance Manager to get started

:::image type="content" source="./media/m365bp-compliancemanager.png" alt-text="Screenshot of Compliance Manager in Microsoft 365 Business Premium.":::

Microsoft 365 Business Premium includes Compliance Manager, which can help you get started setting up your compliance features. Such features include data loss prevention, data lifecycle management, and insider risk management, to name a few. Compliance Manager can save you time by highlighting recommendations, a compliance score, and ways to improve your score.

Here's how to get started:

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com) and sign in.

2. In the navigation pane, choose **Compliance Manager**.

3. On the **Overview** tab, review the information. Select an item or link to view more information, or to take actions, such as configuring a data loss prevention (DLP) policy. For example, in the **Solutions that affect your score** section, you might select the link in the **Remaining actions** column.

   :::image type="content" source="./media/m365bp-compliancesolutions.png" alt-text="Screenshot of Solutions That Affect Your Score pane.":::

   That action takes you to the **Improvement actions** tab, which is filtered for the item you selected. In this example we're looking at DLP policies to configure.

   :::image type="content" source="./media/m365bp-dlppoliciestoconfigure.png" alt-text="Screenshot of DLP policies to configure.":::

4. On the **Improvement actions** tab, select an item. In our example, we've selected **Create customized DLP policies or personally identifiable information**. A page loads that provides more information about the policy to configure.

   :::image type="content" source="./media/m365bp-dlppolicyinfo.png" alt-text="Screenshot of information about DLP policy for customer content.":::

   Follow the information on the screen to set up your DLP policy.

For more information about compliance features in Microsoft 365 for business, see [Microsoft Purview documentation](../compliance/index.yml).

## Use sensitivity labels

Sensitivity labels are available in Office apps (such as Outlook, Word, Excel, and PowerPoint). Examples of labels include:

- Normal
- Personal
- Private
- Confidential

However, you can define other labels for your company as well.

Use the following articles to get started with sensitivity labels:

1. [Learn about sensitivity labels](../compliance/sensitivity-labels.md).

2. [Get started with sensitivity labels](../compliance/get-started-with-sensitivity-labels.md).

3. [Create and configure sensitivity labels and their policies](../compliance/create-sensitivity-labels.md).

4. [Show people in your company how to use sensitivity labels](https://support.microsoft.com/office/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)