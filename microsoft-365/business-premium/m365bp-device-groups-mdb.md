---
title: Working with device groups in Microsoft 365 Business Premium
description: Learn about device groups in Microsoft 365 Business Premium
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.date: 03/08/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# Device groups in Microsoft 365 Business Premium

Microsoft 365 Business Premium includes endpoint protection through Microsoft Defender for Business. Device protection policies are applied to devices through certain collections that are called device groups. 

**This article describes**:  

- [What device groups are](#whats-a-device-group)
- [How to create a new device group](#how-do-i-create-a-new-device-group)

## What's a device group?

A device group is a collection of devices that are grouped together because of certain specified criteria, such as operating system version. Devices that meet the criteria are included in that device group, unless you exclude them. 

With your subscription, you have default device groups that you can use. The default device groups include all the devices that are onboarded to Defender for Business. However, you can also create new device groups to assign device protection policies with specific settings to certain devices. 

All device groups, including your default device groups and any custom device groups that you define, are stored in [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-whatis) (Azure AD).

## How do I create a new device group?

You can create a new device group while you are in the process of creating or editing a device protection policy. 

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Device configuration**. 

3. Take one of the following actions:

    1. Select an existing policy, and then choose **Edit**.
    
    2. Choose **+ Add** to create a new policy.

    > [!TIP]
    > To get help creating or editing a policy, see [View or edit policies in Microsoft Defender for Business](m365bp-view-edit-create-mdb-policies.md).

4. On the **General information** step, review the information, edit if necessary, and then choose **Next**.

5. Choose **+ Create new group**. 

6. Specify a name and description for the device group, and then choose **Next**.

7. Select the devices to include in the group, and then choose **Create group**.

8. On the **Device groups** step, review the list of device groups for the policy. If needed, remove a group from the list. Then choose **Next**.

9. On the **Configuration settings** page, review and edit settings as needed, and then choose **Next**. For more information about these settings, see [Understand next-generation configuration settings in Microsoft Defender for Business](../security/defender-business/mdb-next-gen-configuration-settings.md).

10. On the **Review your policy** step, review all the settings, make any needed edits, and then choose **Create policy** or **Update policy**.


