---
title: Create a new policy in Microsoft Defender for Business
description: Learn how to create a new security policy in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 11/11/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Create a new policy in Microsoft Defender for Business

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

Microsoft Defender for Business includes default policies that use recommended settings to protect your company's devices from day one. However, you can create new policies as well. If you want to edit an existing policy, see [View or edit policies in Microsoft Defender for Business](mdb-view-edit-policies.md).

## Create a new policy

1. Go to [https://security.microsoft.com](https://security.microsoft.com) and sign in. You’re now in the Microsoft 365 Defender portal.

2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**). 

3. Select an operating system tab (for example, **Windows clients**), and then review the list of **Next-generation protection** policies. 

4. Under **Next-generation protection** or **Firewall**, select **+ Add**.

5. On the **General information** tab, take the following steps:

   1. Specify a name and description. This information will help you and your team identify the policy later on.
   2. Review the policy order, and edit it if necessary. (For more information, see [Policy order](mdb-policy-order.md).)
   3. Choose **Next**. 

7. On the **Device groups** tab, either create a new device group, or use an existing group. Policies are assigned to devices through device groups. Here are some things to keep in mind:

   - Initially, you might only have your default device group, which includes the devices people in your company are using to access company data and email. You can keep and use your default device group.
   - Create a new device group to apply a policy with specific settings that are different from the default policy. 
   - When you set up your device group, you specify certain criteria, such as the operating system version. Devices that meet the criteria are included in that device group, unless you exclude them. 
   - All device groups, including the default and custom device groups that you define, are stored in Azure Active Directory (Azure AD).

   To learn more about device groups, see . 

8. On the **Configuration settings** tab, specify the settings for your policy, and then choose **Next**. For more information about the individual settings, see [Configuration settings for Microsoft Defender for Business](mdb-next-gen-configuration-settings.md).

9. On the **Review your policy** tab, review the general information, targeted devices, and configuration settings. 

   - Make any needed changes by selecting **Edit**.
   - When you’re ready to proceed, choose **Create policy**.

## Next steps

Choose one or more of the following tasks:

- [Get started using Defender for Business](mdb-get-started.md)

- [View or edit policies](mdb-view-edit-policies.md)

- [Manage devices](mdb-manage-devices.md)

- [View and manage incidents](mdb-view-manage-incidents.md)

- [Respond to and mitigate threats](mdb-respond-mitigate-threats.md)

- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)