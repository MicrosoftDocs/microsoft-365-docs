---
title: "Increase threat protection for Microsoft 365 Business Premium"
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

Your Microsoft 365 Business Premium comes with compliance and privacy features to help protect your company's data, and to help you keep your and your customers' sensitive information secure.

## Before you begin

Make sure you have one of the following roles assigned in Azure Active Directory:

- Global Administrator
- Compliance Administrator

To learn more, see [Get started with the roles page](../add-users/admin-roles-page.md).

## Use Compliance Manager to get started

:::image type="content" source="../../business-premium/media/m365bp-compliancemanager.png" alt-text="Screenshot of Compliance Manager in Microsoft 365 Business Premium.":::

Microsoft 365 Business Premium includes Compliance Manager, which can help you get started setting up your compliance features (such as data loss prevention, information governance, and insider risk management, to name a few). Compliance Manager can save you time by highlighting recommendations, a compliance score, and ways to improve your score.

Here's how to get started:

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com) and sign in.

2. In the navigation pane, choose **Compliance Manager**.

3. On the **Overview** tab, review the information. Select an item or link to view more information, or to take actions, such as configuring a data loss prevention (DLP) policy. For example, in the **Solutions that affect your score** section, you might select the link in the **Remaining actions** column.

   :::image type="content" source="../../business-premium/media/m365bp-compliancesolutions.png" alt-text="Screenshot of Solutions That Affect Your Score pane.":::

   That action takes you to the **Improvement actions** tab, which is filtered for the item you selected. In this example we are looking at DLP policies to configure.

   :::image type="content" source="../../business-premium/media/m365bp-dlppoliciestoconfigure.png" alt-text="Screenshot of DLP policies to configure.":::

4. On the Improvement actions tab, 

## 

See [Create a DLP policy from a template](../../compliance/create-a-dlp-policy-from-a-template.md) for an example on how to set up a policy to protect against protect loss of personal data. 
  
DLP comes with many ready-to-use policy templates for many different locales. For example, Australia Financial Data, Canada Personal Information Act, U.S. Financial Data, and so on. See [What the DLP policy templates include](../../compliance/what-the-dlp-policy-templates-include.md) for a full list. All of these templates can be enabled similar to the PII template example.
 
## Set up email retention with Exchange Online Archiving

 **Exchange Online Archiving** license features help maintain compliance and regulatory standards by preserving email content for eDiscovery. It also helps reduce your risk if there is a lawsuit, and provides a way to recover data after a security breach or when you need to recover deleted items. You can use litigation hold to preserve all of a user's content, or use retention policies to customize what you want to preserve.
  
**Litigation hold:** You can preserve all mailbox content including deleted items by putting a user's entire mailbox on litigation hold. 
    
To place a mailbox on litigation hold, in the Admin center:
    
1. In the left nav, go to **Users** \> **Active users**.
    
2. Select a user whose mailbox you want to place on litigation hold. In the user pane, expand **Mail settings**, and next to **More settings**, choose **Edit Exchange properties**.
    
3. On the mailbox page for the user, choose ** mailbox features ** on the left nav, and then choose the **Enable** link under **Litigation hold**.
    
4. In the **litigation hold** dialog box, you can specify the litigation hold duration in the **Litigation hold duration** field. Leave the field empty if you want to place an infinite hold. You can also add notes and direct the mailbox owner to a website you might have to explain more about the litigation hold. \> **Save**.
    
**Retention:** You can enable customized retention policies, for example, to preserve for a specific amount of time or delete content permanently at the end of the retention period. To learn more, see [Overview of retention policies](../../compliance/retention.md).

## Watch: Set up Sensitivity labels

Sensitivity labels come with Azure Information Protection (AIP) Plan 1, and help you classify, and optionally protect your documents and emails, by applying labels. Labels can be applied automatically by administrators who define rules and conditions, manually by users, or by using a combination where users are given recommendations.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE3VRGT?autoplay=false]

1. In the [admin center](https://admin.microsoft.com), select the **Compliance** admin center.
1. Select **Classification**, and then **Sensitivity labels**.
1. Select **Create a label**, and when the warning appears, select **Yes**.
1. Review your settings, and select **Create**. Your label has been created. Repeat this process for any additional labels you want.
1. By default, labels appear in Office apps in this order: **Confidential**, **Internal**, and **Public**. To change the order, for each label, select the three dots (more actions), and then move the label up or down. Typically, permissions are listed from the lowest to highest level of permissions.
1. Review your settings, then select **Publish**.

For your labels to work, each user needs to download the Azure Information Protection unified labeling client. Search the web for **AzinfoProtection_UL.exe**, then download it from the Microsoft Download Center, and run it on your users' computers.

The next time you open an Office app like Word, you'll see the sensitivity labels that were created. To change or apply a label, select Sensitivity, and choose a label.

