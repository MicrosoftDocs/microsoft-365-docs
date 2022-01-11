---
title: Manage custom rules for firewall policies in Microsoft Defender for Business
description: Custom rules provide exceptions to firewall policies. You can use custom rules to block or allow specific connections in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 12/13/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Manage your custom rules for firewall policies in Microsoft Defender for Business (preview)

> [!IMPORTANT]
> Microsoft Defender for Business is now in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. We will onboard an initial set of customers and partners in the coming weeks and will expand the preview leading up to general availability. Note that preview will launch with an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 


Microsoft Defender for Business (preview) includes firewall policies that help protect your devices from unwanted network traffic. You can use custom rules to define exceptions for your firewall policies. That is, you can use custom rules to block or allow specific connections.

To learn more about firewall policies and settings, see [Firewall in Microsoft Defender for Business (preview)](mdb-firewall.md).

**This article describes how to**:

- [Create a custom rule for a firewall policy](#create-a-custom-rule-for-a-firewall-policy)
- [Edit a custom rule for a firewall policy](#edit-a-custom-rule-for-a-firewall-policy)
- [Delete a custom rule](#delete-a-custom-rule)

## Create a custom rule for a firewall policy

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Endpoints** > **Device configuration**, and review the list of policies.

3. In the **Firewall** section, select an existing policy, or add a new policy.

4. On the **Configuration settings** step, review the settings. Make any needed changes to **Domain network**, **Public network**, and **Private network**.

5. To create a custom rule, follow these steps: 

   1. Under **Custom rules**, choose **+ Add rule**. (You can have up to 150 custom rules.)
   2. On the **Create new rule** flyout, specify a name and description for the rule.
   3. Select a profile. (Your options include **Domain network**, **Public network**, or **Private network**.)
   4. In the **Remote address type** list, select either **IP** or **Application file path**.
   5. In the **Value** box, specify an appropriate value. Depending on what you selected in step 6d, you might specify an IP address, an IP address range, or an application file path. (See [Firewall settings](mdb-firewall.md).)
   6. On the **Create new rule** flyout, select **Create rule**. 

6. On the **Configuration settings** screen, choose **Next**.

7. On the **Review your policy** screen, review the changes that were made to firewall policy settings. Make any needed changes, and then choose **Create policy**.

## Edit a custom rule for a firewall policy

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Endpoints** > **Device configuration**, and review the list of policies.

3. In the **Firewall** section, select an existing policy, or add a new policy.

4. Under **Custom rules**, review the list of rules.

5. Select a rule, and then choose **Edit**. Its flyout opens.

6. To edit your custom rule, follow these steps:

   1. On the **Edit rule** flyout, review and edit the rule's name and description.
   2. Review and if necessary, edit the rule's profile. (Your options include **Domain network**, **Public network**, or **Private network**.)
   3. In the **Remote address type** list, select either **IP** or **Application file path**.
   4. In the **Value** box, specify an appropriate value. Depending on what you selected in step 6c, you might specify an IP address, an IP address range, or an application file path. (See [Firewall settings](mdb-firewall.md).)
   5. Set **Enable rule** to **On** to make the rule active. Or, to disable the rule, set the switch to **Off**.
   6. On the **Edit rule** flyout, select **Update rule**. 

7. On the **Configuration settings** screen, choose **Next**.

8. On the **Review your policy** screen, review the changes that were made to firewall policy settings. Make any needed changes, and then choose **Create policy**.

## Delete a custom rule

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Endpoints** > **Device configuration**, and review the list of policies.

3. In the **Firewall** section, select an existing policy, or add a new policy.

4. Under **Custom rules**, review the list of rules.

5. Select a rule, and then choose **Delete**. Its flyout opens.

6. On the confirmation screen, choose **Delete**. 

## Next steps

- [View and manage incidents in Microsoft Defender for Business (preview)](mdb-view-manage-incidents.md)

- [Respond to and mitigate threats in Microsoft Defender for Business (preview)](mdb-respond-mitigate-threats.md)

- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)