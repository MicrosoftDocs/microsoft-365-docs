---
title: Manage custom rules for firewall policies in Microsoft Defender for Business
description: Custom rules provide exceptions to firewall policies. You can use custom rules to block or allow specific connections in Defender for Business.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.reviewer: shlomiakirav
ms.date: 07/19/2022
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
---

# Manage your custom rules for firewall policies in Microsoft Defender for Business

Defender for Business includes firewall policies that help protect your devices from unwanted network traffic. You can use custom rules to define exceptions for your firewall policies. That is, you can use custom rules to block or allow specific connections.

To learn more about firewall policies and settings, see [Firewall in Defender for Business](mdb-firewall.md).

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

- [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md)
- [Respond to and mitigate threats in Defender for Business](mdb-respond-mitigate-threats.md)
- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)