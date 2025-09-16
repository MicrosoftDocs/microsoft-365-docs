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
ms.date: 08/14/2025
ms.localizationpriority: medium
ms.collection:
- m365-security
- tier2
- trust-pod
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
description: "Set up your information protection capabilities in Microsoft 365 Business Premium for compliance and privacy. Use these features to prevent data loss and help keep your and your customers' sensitive information secure."
appliesto:
  - ✅ <a href="https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium" target="_blank">Microsoft 365 Business Premium</a>
  - ✅ <a href="https://m365forcampaigns.microsoft.com/" target="_blank">Microsoft 365 for Campaigns</a>
---

# Set up information protection in Microsoft 365 Business Premium

Microsoft 365 Business Premium includes information protection capabilities for compliance and privacy:

- Sensitivity labels for [email and files](/purview/get-started-with-sensitivity-labels) and [meetings in Microsoft Teams](/purview/sensitivity-labels-meetings)
- [Microsoft Purview Data Loss Prevention (DLP)](/purview/dlp-create-deploy-policy).
- [Microsoft Purview Message Encryption](/purview/email-encryption)

:::image type="content"source="../../media/m365-campaign-email-encrypt.png" alt-text="Diagram of an email with callouts for labels and encryption." lightbox="../../media/m365-campaign-email-encrypt.png":::

You can use these capabilities to help protect your company's data, and keep your and your customers' sensitive information more secure.

Use this article to get started with your information protection capabilities.

## What do you need to know before you begin?

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft Entra permissions](/entra/identity/role-based-access-control/manage-roles-portal): Membership in the **Global Administrator**<sup>\*</sup> or **Compliance Administrator** roles.

    > [!IMPORTANT]
    > <sup>\*</sup> Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

## Use Compliance Manager

:::image type="content"source="../../media/m365bp-compliancemanager.png" alt-text="Screenshot of Compliance Manager in the Microsoft Purview portal in Microsoft 365 Business Premium." lightbox="../../media/m365bp-compliancemanager.png":::

Business Premium includes Microsoft Purview Compliance Manager, which can help you get started setting up your compliance features. Features include data loss prevention (DLP), data lifecycle management, and insider risk management. Compliance Manager saves time by highlighting recommendations, a compliance score, and ways to improve your score.

Here's how to get started:

1. In the Microsoft Purview portal at <https://purview.microsoft.com>, go to **Solutions** \> **Compliance Manager**. Or, to go directly to the **Overview** page of **Compliance Manager**, use <https://purview.microsoft.com/compliancemanager/overviewpage>.

2. On the **Overview** page of **Compliance Manager**, review the information. Select an entry or link to view more information or to take action.

   Selecting the **Remaining actions** value for a solution entry in the **Solutions that affect your score** section opens the **Improvement actions** page that's filtered by the solution you selected.

   :::image type="content"source="../../media/m365bp-compliancesolutions.png" alt-text="Screenshot of the Solutions that affect your score section." lightbox="../../media/m365bp-compliancesolutions.png":::

   For example, in the **Solutions that affect your score** section, selecting the value in the **Remaining actions** column for the **Data loss prevention** solution opens the **Improvement actions** page filtered by **Solutions: Data loss prevention**.

   :::image type="content"source="../../media/m365bp-dlppoliciestoconfigure.png" alt-text="Screenshot of the Improvement actions page in Compliance Manager filtered by data loss prevention solutions." lightbox="../../media/m365bp-dlppoliciestoconfigure.png":::

3. On the **Improvement actions** page, selecting an **Improvement action** entry takes you to a detailed actions page.

   For example, selecting **Create customized DLP policies for personally identifiable information (PII)** opens the detailed actions page with more information about the policy to configure.

   :::image type="content"source="../../media/m365bp-dlppolicyinfo.png" alt-text="Screenshot of the Create customized DLP policies for personally identifiable information (PII) detailed action page." lightbox="../../media/m365bp-dlppolicyinfo.png":::

   Follow the information on the page to set up your DLP policy.

For more information about Compliance Manager, see [Microsoft Purview Compliance Manager](/purview/compliance-manager).

## Use sensitivity labels

Sensitivity labels are available in Microsoft 365 Apps (such as Outlook, Word, Excel, and PowerPoint). For example:

- Normal
- Personal
- Private
- Confidential

You can also create custom labels.

Use the following articles to get started with sensitivity labels:

1. [Learn about sensitivity labels](/purview/sensitivity-labels).
2. [Get started with sensitivity labels](/purview/get-started-with-sensitivity-labels).
3. [Create and configure sensitivity labels and their policies](/purview/create-sensitivity-labels).
4. [Show people in your company how to use sensitivity labels](https://support.microsoft.com/office/2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)

## Use DLP policies

Microsoft Purview Data Loss Prevention helps protect sensitive information by preventing intentionally or unintentionally sharing it with others who shouldn't have it. With a DLP policy, you can identify, monitor, and automatically protect sensitive items across Microsoft 365 Apps (such as Word, Excel, and PowerPoint), and in email.

Use the following articles to get started with DLP:

1. [Learn about data loss prevention](/purview/dlp-learn-about-dlp).
2. [Create and Deploy DLP policies](/purview/dlp-get-started-with-the-default-policy).

## Use email encryption

Use Microsoft Purview Message Encryption to protect the information in email messages. The contents of an encrypted email message are converted from readable plain text into scrambled cypher text. Only recipients with the private key that corresponds to the public key used to encrypt the message can decipher the message for reading. Any recipient without the corresponding private key sees scrambled cypher text.

Admins can define rules to automatically encrypt messages that meet certain criteria. For instance, your admin can create a rule that encrypts all messages sent outside your organization or all messages that mention specific words or phrases. Any encryption rules are applied automatically.

Use the following articles to get started with encryption:

1. [Set up Message Encryption](/purview/set-up-new-message-encryption-capabilities), including [optional customized branding](/purview/add-your-organization-brand-to-encrypted-messages).
2. **Automatic**: [Define mail flow rules to encrypt email messages](/purview/define-mail-flow-rules-to-encrypt-email).
3. **Manual**: [Send Microsoft Purview encrypted email in Outlook](https://support.microsoft.com/office/373339cb-bf1a-4509-b296-802a39d801dc).
