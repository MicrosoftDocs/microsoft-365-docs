---
title: Device groups in Microsoft Defender for Business
description: Learn how to manage devices in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.date: 11/09/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Device groups in Microsoft Defender for Business

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

## What is a device group?

A device group is a collection of devices that is grouped together because of certain specified criteria, such as operating system version. Devices that meet the criteria are included in that device group, unless you exclude them. In Microsoft Defender for Business, policies are applied to devices by using device groups. 

Defender for Business includes default device groups that you can use. However, you can create new device groups. All device groups, including your default device groups and any custom device groups that you define, are stored in [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-whatis) (Azure AD).

Initially, you might only have your default device group, which includes the devices people in your company are using to access company data and email. Create a new device group to apply a policy with specific settings that are different from the default policy.

## Create a new device group

Currently, in Defender for Business, you can create a new device group while you are creating or editing a policy, such as a next-generation protection policy. 

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Device configuration**. 

3. Take one of the following actions:

    1. Select an existing policy, and then choose **Edit**.
    2. Choose **+ Add** to create a new policy.

    > [!TIP]
    > To get help creating or editing a policy, see [View or edit next-generation protection policies in Microsoft Defender for Business](mdb-manage-next-generation-protection.md) or [Manage firewall policies in Microsoft Defender for Business](mdb-manage-firewall.md).

4. On the **General information** step, review the information, edit if necessary, and then choose **Next**.

5. Choose **+ Create new group**. 

6. Specify a name and description for the device group, and then choose **Next**.

7. Select the devices to include in the group, and then choose **Create group**.

8. On the **Device groups** step, review the list of device groups for the policy. If needed, remove a group from the list. Then choose **Next**.

9. On the **Configuration settings** page, review and edit settings as needed, and then choose **Next**. For more information about these settings, see [Configuration settings](mdb-next-gen-configuration-settings.md).

10. On the **Review your policy** step, review all the settings, make any needed edits, and then choose **Create policy** or **Update policy**.

## Next steps

- [View or edit next-generation protection policies in Microsoft Defender for Business](mdb-manage-next-generation-protection.md).

- [Respond to and mitigate threats in Microsoft Defender for Business](mdb-respond-mitigate-threats.md)