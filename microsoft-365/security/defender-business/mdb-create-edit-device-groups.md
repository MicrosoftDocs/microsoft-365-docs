---
title: Device groups in Microsoft Defender for Business
description: Learn about device groups in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.date: 02/07/2022
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

# Device groups in Microsoft Defender for Business

> [!IMPORTANT]
> Microsoft Defender for Business is rolling out to [Microsoft 365 Business Premium](../../business-premium/index.md) customers, beginning March 1, 2022. Defender for Business as a standalone subscription is in in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. Preview includes an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

In Microsoft Defender for Business, policies are applied to devices through certain collections that are called device groups. 

**This article describes**:  

- [What device groups are](#what-is-a-device-group)   
- [How to create device groups in Defender for Business](#create-a-new-device-group)

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about Microsoft Defender for Business</a>. We'd love to hear from you!
>

## What is a device group?

A device group is a collection of devices that are grouped together because of certain specified criteria, such as operating system version. Devices that meet the criteria are included in that device group, unless you exclude them. In Microsoft Defender for Business, policies are applied to devices by using device groups. 

Defender for Business includes default device groups that you can use. The default device groups include all the devices that are onboarded to Defender for Business. However, you can also create new device groups to assign policies with specific settings to certain devices. 

All device groups, including your default device groups and any custom device groups that you define, are stored in [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-whatis) (Azure AD).

## Create a new device group

Currently, in Defender for Business, you can create a new device group while you are in the process of creating or editing a policy, as described in the following procedure: 

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Device configuration**. 

3. Take one of the following actions:

    1. Select an existing policy, and then choose **Edit**.
    2. Choose **+ Add** to create a new policy.

    > [!TIP]
    > To get help creating or editing a policy, see [View or edit policies in Microsoft Defender for Business](mdb-view-edit-policies.md).

4. On the **General information** step, review the information, edit if necessary, and then choose **Next**.

5. Choose **+ Create new group**. 

6. Specify a name and description for the device group, and then choose **Next**.

7. Select the devices to include in the group, and then choose **Create group**.

8. On the **Device groups** step, review the list of device groups for the policy. If needed, remove a group from the list. Then choose **Next**.

9. On the **Configuration settings** page, review and edit settings as needed, and then choose **Next**. For more information about these settings, see [Configuration settings](mdb-next-gen-configuration-settings.md).

10. On the **Review your policy** step, review all the settings, make any needed edits, and then choose **Create policy** or **Update policy**.

## Next steps

Choose one or more of the following tasks:

- [View or edit policies](mdb-view-edit-policies.md)

- [Create a new policy](mdb-create-new-policy.md)

- [View and manage incidents in Microsoft Defender for Business](mdb-view-manage-incidents.md)

- [Respond to and mitigate threats in Microsoft Defender for Business](mdb-respond-mitigate-threats.md)

- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)