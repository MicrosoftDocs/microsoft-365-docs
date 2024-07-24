---
title: "Set up information protection capabilities"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business-security
ms.date: 06/07/2024
ms.localizationpriority: medium
ms.collection:
- m365-security
- tier2
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
description: "Set up your information protection capabilities for compliance and privacy. Use these features to prevent data loss and help keep your and your customers' sensitive information secure."
---
# Set up information protection capabilities

Your Microsoft 365 Business Premium subscription includes information protection capabilities for compliance and privacy. These capabilities include sensitivity labels, data loss prevention (DLP), and encryption. You can use your information protection capabilities to help protect your company's data, and keep your and your customers' sensitive information more secure.

Use this article to get started with your information protection capabilities.

## Before you begin

Make sure you have one an appropriate role, such as Compliance Administrator assigned in Microsoft Entra ID. For more information, see [Get started with the roles page](../admin/add-users/admin-roles-page.md).

## Use Compliance Manager to get started

:::image type="content" source="media/m365bp-compliancemanager.png" alt-text="Screenshot of Compliance Manager in Microsoft 365 Business Premium." lightbox="media/m365bp-compliancemanager.png":::

Microsoft 365 Business Premium includes Compliance Manager, which can help you get started setting up your compliance features. Such features include data loss prevention, data lifecycle management, and insider risk management, to name a few. Compliance Manager can save you time by highlighting recommendations, a compliance score, and ways to improve your score.

Here's how to get started:

1. Go to <https://compliance.microsoft.com> and sign in.

2. In the navigation pane, choose **Compliance Manager**.

3. On the **Overview** tab, review the information. Select an item or link to view more information, or to take actions, such as configuring a data loss prevention (DLP) policy. For example, in the **Solutions that affect your score** section, you might select the link in the **Remaining actions** column.

   :::image type="content" source="media/m365bp-compliancesolutions.png" alt-text="Screenshot of Solutions That Affect Your Score pane." lightbox="media/m365bp-compliancesolutions.png":::

   That action takes you to the **Improvement actions** tab, which is filtered for the item you selected. In this example we're looking at DLP policies to configure.

   :::image type="content" source="media/m365bp-dlppoliciestoconfigure.png" alt-text="Screenshot of DLP policies to configure." lightbox="media/m365bp-dlppoliciestoconfigure.png":::

4. On the **Improvement actions** tab, select an item. In our example, we've selected **Create customized DLP policies or personally identifiable information**. A page loads that provides more information about the policy to configure.

   :::image type="content" source="media/m365bp-dlppolicyinfo.png" alt-text="Screenshot of information about DLP policy for customer content." lightbox="media/m365bp-dlppolicyinfo.png":::

   Follow the information on the screen to set up your DLP policy.

For more information about compliance features in Microsoft 365 for business, see [Microsoft Purview documentation](/purview/).

## Use sensitivity labels

Sensitivity labels are available in Microsoft 365 Apps (such as Outlook, Word, Excel, and PowerPoint). Examples of labels include:

- Normal
- Personal
- Private
- Confidential

However, you can define other labels for your company as well.

Use the following articles to get started with sensitivity labels:

1. [Learn about sensitivity labels](/purview/sensitivity-labels).

2. [Get started with sensitivity labels](/purview/get-started-with-sensitivity-labels).

3. [Create and configure sensitivity labels and their policies](/purview/create-sensitivity-labels).

4. [Show people in your company how to use sensitivity labels](https://support.microsoft.com/office/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)

## Set up your DLP policies

Data loss prevention (DLP) policies are designed to help protect sensitive information by preventing people from inappropriately sharing it with others who shouldn't have it. With a DLP policy, you can identify, monitor, and automatically protect sensitive items across Microsoft 365 Apps (such as Word, Excel, and PowerPoint), and in email.

Use the following articles to get started with DLP:

1. [Learn about data loss prevention](/purview/dlp-learn-about-dlp).

2. [Get started with the default DLP policy](/purview/dlp-get-started-with-the-default-policy).

## Next steps

- [Set up BYOD devices](m365bp-set-up-unmanaged-devices.md) or [Set up and secure managed devices](m365bp-protect-managed-devices.md)
- [Use email securely](m365bp-use-email-securely.md)
- [Collaborate and share securely](m365bp-collaborate-share-securely.md)
