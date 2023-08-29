---
title: Device groups in Microsoft Defender for Business
description: Security policies are applied to devices through device groups in Defender for Business.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.reviewer: nehabha
ms.date: 05/17/2023
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365-initiative-defender-business
- tier1
---

# Device groups in Microsoft Defender for Business

In Defender for Business, policies are applied to devices through certain collections that are called device groups. 

**This article describes**:  

- [What device groups are](#what-is-a-device-group)   
- [How to create device groups in Defender for Business](#create-a-new-device-group)
- [How to view an existing device group](#view-an-existing-device-group)
- [What the Add All Devices option does](#what-does-the-add-all-devices-option-do)


## What is a device group?

A device group is a collection of devices that are grouped together because of certain specified criteria, such as operating system version. Devices that meet the criteria are included in that device group, unless you exclude them. In Defender for Business, policies are applied to devices by using device groups.

Defender for Business includes default device groups that you can use. The default device groups include all the devices that are onboarded to Defender for Business. For example, there's a default device group for Windows devices. Whenever you onboard Windows devices, they're added to the default device group automatically.

You can also create new device groups to assign policies with specific settings to certain devices. For example, you might have a firewall policy assigned to one set of Windows devices, and a different firewall policy assigned to another set of Windows devices. You can define specific device groups to use with your policies.

> [!NOTE]
> As you create policies in Defender for Business, an order of priority is assigned. If you apply multiple policies to a given set of devices, those devices will receive the first applied policy only. For more information, see [Understand policy order in Defender for Business](mdb-policy-order.md).

All device groups, including your default device groups and any custom device groups that you define, are stored in [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-whatis) (Azure AD).

## Create a new device group

Currently, in Defender for Business, you can create a new device group while you are in the process of creating or editing a policy, as described in the following procedure: 

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Configuration management** and select **Device configuration**. 

3. Take one of the following actions:

    1. Select an existing policy, and then choose **Edit**.
    2. Choose **+ Add** to create a new policy.

    > [!TIP]
    > To get help creating or editing a policy, see [View or edit policies in Defender for Business](mdb-view-edit-policies.md).

4. On the **General information** step, review the information, edit if necessary, and then choose **Next**.

5. Choose **+ Create new group**. 

6. Specify a name and description for the device group, and then choose **Next**.

7. Select the devices to include in the group, and then choose **Create group**.

8. On the **Device groups** step, review the list of device groups for the policy. If needed, remove a group from the list. Then choose **Next**.

9. On the **Configuration settings** page, review and edit settings as needed, and then choose **Next**. For more information about these settings, see [Configuration settings](mdb-next-generation-protection.md).

10. On the **Review your policy** step, review all the settings, make any needed edits, and then choose **Create policy** or **Update policy**.

## View an existing device group

Currently, in Defender for Business, you can view your existing device groups while you are in the process of creating or editing a policy, as described in the following procedure: 

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Device configuration**. 

3. Take one of the following actions:

    1. Select an existing policy, and then choose **Edit**.
    2. Choose **+ Add** to create a new policy.

    > [!TIP]
    > To get help creating or editing a policy, see [View or edit policies in Defender for Business](mdb-view-edit-policies.md).

4. On the **General information** step, review the information, edit if necessary, and then choose **Next**.

5. Choose **Use existing group**. A flyout opens and displays device groups. If you don't have any device groups yet, you'll be prompted to create a new device group.

## What does the Add All Devices option do?

When you are creating or editing a policy, you might see the **Add all devices** option.

:::image type="content" source="media/add-all-devices-option.png" alt-text="Screenshot of the Add All Devices option.":::

If you select this option, all devices that are enrolled in Microsoft Intune will receive the policy that you are creating or editing by default. 

## Next steps

Choose one or more of the following tasks:

- [View or edit policies](mdb-view-edit-policies.md)
- [Create a new policy](mdb-create-new-policy.md)
- [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md)
- [Respond to and mitigate threats in Defender for Business](mdb-respond-mitigate-threats.md)
- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)
