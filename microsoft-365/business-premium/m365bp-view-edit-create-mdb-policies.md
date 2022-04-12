---
title: View or edit device protection policies
description: View, edit, create, and delete device protection policies in Microsoft 365 Business Premium
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 03/14/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# View and edit your device protection policies

In Microsoft 365 Business Premium, security settings for managed devices are configured through device protection policies. To help simplify your setup and configuration experience, you have preconfigured policies that help protect your organization's devices as soon as they are onboarded. Use the default policies, edit existing policies, or create your own policies.

**This guidance describes how to**:

- Get an overview of your default policies
- View your existing policies
- Edit an existing policy
- Create a new policy

## Default device protection policies

Microsoft 365 Business Premium includes two main types of policies to protect your organization's devices:

- **Next-generation protection policies**, which determine how Microsoft Defender Antivirus and other threat protection features are configured

- **Firewall policies**, which determine what network traffic is permitted to flow to and from your organization's devices

These policies are part of Microsoft Defender for Business, which is included in your Microsoft 365 Business Premium subscription.

## View your existing device protection policies

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. 

2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**). 

   :::image type="content" source="../media/mdb-deviceconfiguration.png" alt-text="Screenshot of Device Configuration page.":::

3. Select an operating system tab (for example, **Windows clients**), and then review the list of policies under the **Next-generation protection** and **Firewall** categories. 

4. To view more details about a policy, select its name. A side pane will open that provides more information about that policy, such as which devices are protected by that policy.

   :::image type="content" source="../media/mdb-deviceconfig-selectedpolicy.png" alt-text="Screenshot of a policy selected in the Device Configuration page.":::

## Edit an existing device protection policy

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. 

2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**). 

3. Select an operating system tab (for example, **Windows clients**), and then review the list of policies under the **Next-generation protection** and **Firewall** categories. 

4. To edit a policy, select its name, and then choose **Edit**.

5. On the **General information** tab, review the information. If necessary, you can edit the description. Then choose **Next**.

6. On the **Device groups** tab, determine which device groups should receive this policy.  

   - To keep the selected device group as it is, choose **Next**.
   - To remove a device group from the policy, select **Remove**.
   - To set up a new device group, select **Create new group**, and then set up your device group. (To get help with this task, see [Device groups in Microsoft 365 Business Premium](m365bp-device-groups-mdb.md).)
   - To apply the policy to another device group, select **Use existing group**.

   After you have specified which device groups should receive the policy, choose **Next**.

7. On the **Configuration settings** tab, review the settings. If necessary, you can edit the settings for your policy. To get help with this task, see the following articles: 

   - [Understand next-generation configuration settings](../security/defender-business/mdb-next-gen-configuration-settings.md)   
   - [Firewall settings](../security/defender-business/mdb-firewall.md)

   After you have specified your next-generation protection settings, choose **Next**.

8. On the **Review your policy** tab, review the general information, targeted devices, and configuration settings. 

   - Make any needed changes by selecting **Edit**.
   - When you’re ready to proceed, choose **Update policy**.

## Create a new device protection policy

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. 

2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**). 

3. Select an operating system tab (for example, **Windows clients**), and then review the list of **Next-generation protection** policies. 

4. Under **Next-generation protection** or **Firewall**, select **+ Add**.

5. On the **General information** tab, take the following steps:

   1. Specify a name and description. This information will help you and your team identify the policy later on.
   2. Review the policy order, and edit it if necessary. (For more information, see [Policy order](../security/defender-business/mdb-policy-order.md).)
   3. Choose **Next**. 

7. On the **Device groups** tab, either create a new device group, or use an existing group. Policies are assigned to devices through device groups. Here are some things to keep in mind:

   - Initially, you might only have your default device group, which includes the devices people in your organization are using to access organization data and email. You can keep and use your default device group.
   - Create a new device group to apply a policy with specific settings that are different from the default policy. 
   - When you set up your device group, you specify certain criteria, such as the operating system version. Devices that meet the criteria are included in that device group, unless you exclude them. 
   - All device groups, including the default and custom device groups that you define, are stored in Azure Active Directory (Azure AD).

   To learn more about device groups, see [Device groups in Microsoft Defender for Business](../security/defender-business/mdb-create-edit-device-groups.md).

8. On the **Configuration settings** tab, specify the settings for your policy, and then choose **Next**. For more information about the individual settings, see [Understand next-generation configuration settings in Microsoft Defender for Business](../security/defender-business/mdb-next-gen-configuration-settings.md).

9. On the **Review your policy** tab, review the general information, targeted devices, and configuration settings. 

   - Make any needed changes by selecting **Edit**.
   - When you’re ready to proceed, choose **Create policy**.

## Next objective

Set up and manage [device groups](m365bp-device-groups-mdb.md).

