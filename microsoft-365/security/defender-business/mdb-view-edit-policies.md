---
title: View or edit policies in Microsoft Defender for Business
description: Learn how to view, edit, create, and delete next-generation protection policies in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 11/11/2021
ms.prod: m365-security
ms.technology: mde
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# View or edit policies in Microsoft Defender for Business

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

In Microsoft Defender for Business, security settings are configured through policies. There are two main types of policies in Defender for Business:

- **Next-generation protection policies**, which determine how Microsoft Defender Antivirus and other threat protection features are configured
- **Firewall policies**, which determine what network traffic is permitted to flow to and from your company's devices

**This article describes how to**:

- [View your existing policies](#view-your-existing-policies)
- [Edit an existing policy](#edit-an-existing-policy)

> [!TIP]
> If you want to add a new policy, see [Create a new policy](mdb-create-new-policy.md).

## View your existing policies

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. 

2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**). 

3. Select an operating system tab (for example, **Windows clients**), and then review the list of policies under the **Next-generation protection** and **Firewall** categories. 

4. To view more details about a policy, select its name. A side pane will open that provides more information about that policy, such as which devices are protected by that policy.

## Edit an existing policy

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. 

2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**). 

3. Select an operating system tab (for example, **Windows clients**), and then review the list of policies under the **Next-generation protection** and **Firewall** categories. 

4. To edit a policy, select its name, and then choose **Edit**.

5. On the **General information** tab, review the information. If necessary, you can edit the description. Then choose **Next**.

6. On the **Device groups** tab, determine which device groups should receive this policy.  

   - To keep the selected device group as it is, choose **Next**.
   - To remove a device group from the policy, select **Remove**.
   - To set up a new device group, select **Create new group**, and then set up your device group. (To get help with this task, see [Add or remove devices from a group](mdb-manage-devices.md#add-or-remove-devices-from-a-group).)
   - To apply the policy to another device group, select **Use existing group**.

   After you have specified which device groups should receive the policy, choose **Next**.

7. On the **Configuration settings** tab, review the settings. If necessary, you can edit the settings for your policy. To get help with this task, see the following articles: 

   - [Understand next-generation configuration settings](mdb-next-gen-configuration-settings.md)   
   - [Firewall settings](mdb-firewall.md)

   After you have specified your next-generation protection settings, choose **Next**.

8. On the **Review your policy** tab, review the general information, targeted devices, and configuration settings. 

   - Make any needed changes by selecting **Edit**.
   - When you’re ready to proceed, choose **Update policy**.


## Next steps

Choose one or more of the following tasks:

- [Manage devices](mdb-manage-devices.md)

- [Create a new policy in Microsoft Defender for Business](mdb-create-new-policy.md)

- [View and manage incidents in Microsoft Defender for Business](mdb-view-manage-incidents.md)

- [Respond to and mitigate threats in Microsoft Defender for Business](mdb-respond-mitigate-threats.md)

- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)