---
title: View or edit device protection policies
description: View, edit, create, and delete device protection policies in Microsoft 365 Business Premium
search.appverid: MET150
ms.author: chrisda
author: chrisda
manager: deniseb
audience: Admin
ms.topic: overview
ms.service: microsoft-365-business-security
ms.date: 05/31/2024
ms.localizationpriority: medium
ms.reviewer: nehabha
f1.keywords: NOCSH
ms.collection:
- SMB
- m365-security
- tier2
---

# View and edit device protection policies

In Microsoft 365 Business Premium, security settings for managed devices are configured through device protection policies in the Microsoft Defender portal or in the Microsoft Intune admin center. To help simplify setup and configuration, there are pre-configured policies that help protect your organization's devices as soon as they are onboarded. You can use the default policies, edit existing policies, or create your own policies.

**This guidance describes how to**:

- Get an overview of your default policies
- Work with device policies in either the Microsoft Defender portal or the Microsoft Intune admin center.

## About the default device protection policies

Microsoft 365 Business Premium includes two main types of policies to protect your organization's devices:

- **Next-generation protection policies**, which determine how Microsoft Defender Antivirus and other threat protection features are configured.

- **Firewall policies**, which determine what network traffic is permitted to flow to and from your organization's devices.

Additional policies include:

- **Web content filtering**, which enables your security team to track and regulate access to websites based on content categories (such as adult content, high bandwidth, legal liability, and leisure). For more information, see [Web content filtering in Microsoft Defender for Business](/defender-business/mdb-web-content-filtering).
- **Controlled folder access**, which allows only trusted apps to access protected folders on Windows devices. Think of this capability as ransomware protection. For more information, see [Set up or edit your controlled folder access policy in Microsoft Defender for Business](/defender-business/mdb-controlled-folder-access).
- **Attack surface reduction rules** that help reduce the places and ways your business might be vulnerable to cyberthreats and attacks. For more information, see [Enable your attack surface reduction rules in Microsoft Defender for Business](/defender-business/mdb-asr).

These policies are part of Microsoft Defender for Business, included in your Microsoft 365 Business Premium subscription. Information is provided for working with policies in the Microsoft Defender portal or in the Microsoft Intune admin center.

<a name='working-with-device-policies-in-the-microsoft-365-defender-portal'></a>

## Working with device policies in the Microsoft Defender portal

The following details apply to working with your policies in the Microsoft Defender portal (<https://security.microsoft.com>).

:::image type="content" source="media/m365defender.png" alt-text="Screenshot of the Microsoft Defender portal." lightbox="media/m365defender.png":::

<a name='view-existing-device-protection-policies-in-microsoft-365-defender'></a>

### View existing device protection policies in Microsoft Defender XDR

1. In the Microsoft Defender portal (<https://security.microsoft.com>), in the navigation pane, choose **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**).

    :::image type="content" source="../media/mdb-deviceconfiguration.png" lightbox="../media/mdb-deviceconfiguration.png" alt-text="The Device configuration page.":::

2. Select an operating system tab (for example, **Windows clients**), and then review the list of policies under the **Next-generation protection** and **Firewall** categories.

3. To view more details about a policy, select its name. A side pane will open that provides more information about that policy, such as which devices are protected by that policy.

   :::image type="content" source="../media/mdb-deviceconfig-selectedpolicy.png" lightbox="../media/mdb-deviceconfig-selectedpolicy.png" alt-text="Screenshot of a policy selected in the Device configuration page.":::

<a name='edit-an-existing-device-protection-policy-in-microsoft-365-defender'></a>

### Edit an existing device protection policy in Microsoft Defender XDR

1. In the Microsoft Defender portal (<https://security.microsoft.com>), in the navigation pane, choose **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**).

2. Select an operating system tab (for example, **Windows clients**), and then review the list of policies under the **Next-generation protection** and **Firewall** categories.

3. To edit a policy, select its name, and then choose **Edit**.

4. On the **General information** tab, review the information. If necessary, you can edit the description. Then choose **Next**.

5. On the **Device groups** tab, determine which device groups should receive this policy.

   - To keep the selected device group as it is, choose **Next**.
   - To remove a device group from the policy, select **Remove**.
   - To set up a new device group, select **Create new group**, and then set up your device group. (To get help with this task, see [Device groups in Microsoft 365 Business Premium](m365bp-device-groups-mdb.md).)
   - To apply the policy to another device group, select **Use existing group**.

   After you have specified which device groups should receive the policy, choose **Next**.

6. On the **Configuration settings** tab, review the settings. If necessary, you can edit the settings for your policy. To get help with this task, see the following articles:

   - [Understand next-generation configuration settings](/defender-business/mdb-next-generation-protection)
   - [Firewall settings](/defender-business/mdb-firewall)

   After you have specified your next-generation protection settings, choose **Next**.

7. On the **Review your policy** tab, review the general information, targeted devices, and configuration settings.

   - Make any needed changes by selecting **Edit**.
   - When you're ready to proceed, choose **Update policy**.

<a name='create-a-new-device-protection-policy-in-microsoft-365-defender'></a>

### Create a new device protection policy in Microsoft Defender XDR

1. In the Microsoft Defender portal (<https://security.microsoft.com>), in the navigation pane, choose **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**).

2. Select an operating system tab (for example, **Windows clients**), and then review the list of **Next-generation protection** policies.

3. Under **Next-generation protection** or **Firewall**, select **+ Add**.

4. On the **General information** tab, take the following steps:

   1. Specify a name and description. This information will help you and your team identify the policy later on.
   2. Review the policy order, and edit it if necessary. For more information, see [Policy order](/defender-business/mdb-policy-order).
   3. Choose **Next**.

5. On the **Device groups** tab, either create a new device group, or use an existing group. Policies are assigned to devices through device groups. Here are some things to keep in mind:

   - Initially, you might only have your default device group, which includes the devices people in your organization are using to access organization data and email. You can keep and use your default device group.
   - Create a new device group to apply a policy with specific settings that are different from the default policy.
   - When you set up your device group, you specify certain criteria, such as the operating system version. Devices that meet the criteria are included in that device group, unless you exclude them.
   - All device groups, including the default and custom device groups that you define, are stored in Microsoft Entra ID.

   To learn more about device groups, see [Device groups in Microsoft Defender for Business](/defender-business/mdb-create-edit-device-groups).

6. On the **Configuration settings** tab, specify the settings for your policy, and then choose **Next**. For more information about the individual settings, see [Understand next-generation configuration settings in Microsoft Defender for Business](/defender-business/mdb-next-generation-protection).

7. On the **Review your policy** tab, review the general information, targeted devices, and configuration settings.

   - Make any needed changes by selecting **Edit**.
   - When you're ready to proceed, choose **Create policy**.

## Working with device policies in the Microsoft Intune admin center

Use the following information to create and manage device policies in Intune, done through Endpoint security in the Microsoft Intune admin center (<https://intune.microsoft.com>).

:::image type="content" source="media/intune-admin-center.png" alt-text="Screenshot of the Intune admin center." lightbox="media/intune-admin-center.png":::

### Create policies in Intune

1. In the Microsoft Intune admin center (<https://intune.microsoft.com>), select **Endpoint security** and the type of policy you want to configure, and then select **Create Policy**.

2. Choose from the following policy types:

    - Antivirus
    - Disk encryption
    - Firewall
    - Endpoint detection and response
    - Attack surface reduction
    - Account protection

3. Specify the following properties:

   - **Platform**: Choose the platform for which you're creating the policy. The available options depend on the policy type you select.
   - **Profile**: Choose from the available profiles for the platform you selected. For information about the profiles, see the dedicated section in this article for your chosen policy type.

   Then select **Create**.

4. On the Basics page, enter a name and description for the profile, then choose **Next**.

5. On the Configuration settings page, expand each group of settings, and configure the settings you want to manage with this profile. Then select **Next**.

6. On the **Assignments** page, select the groups that will receive this profile. For more information on assigning profiles, see [Assign user and device profiles](/mem/intune/configuration/device-profile-assign). Then select **Next**.

7. On the Review + create page, when you're done, choose **Create**. The new profile is displayed in the list when you select the policy type for the profile you created.

### Duplicate a policy in Intune

1. In the Microsoft Intune admin center (<https://intune.microsoft.com>), select the policy that you want to copy. Next, select **Duplicate** or select the ellipsis **(...)** to the right of the policy and select **Duplicate**.

2. Provide a New name for the policy, and then select **Save**.

### Edit a policy in Intune

1. In the Microsoft Intune admin center (<https://intune.microsoft.com>), select a policy, and then select **Properties**.

2. Select **Settings** to expand a list of the configuration settings in the policy. You can't modify the settings from this view, but you can review how they're configured.

3. To modify the policy, select **Edit** for each category where you want to make a change:

    - Basics
    - Assignments
    - Scope tags
    - Configuration settings

4. After you've made changes, select **Save** to save your edits. Edits to one category must be saved before you can introduce edits to any additional categories.

## Manage conflicts

Many of the device settings that you can manage with Endpoint security policies are also available through other policy types in Intune. These other policy types include device configuration policies and security baselines. Because settings can be managed through several different policy types or by multiple instances of the same policy type, be prepared to identify and resolve policy conflicts for devices that don't adhere to the configurations you expect.

Security baselines can set a non-default value for a setting to comply with the recommended configuration that baseline addresses.

Other policy types, including the endpoint security policies, set a value of Not configured by default. These other policy types require you to explicitly configure settings in the policy.

Regardless of the policy method, managing the same setting on the same device through multiple policy types, or through multiple instances of the same policy type can result in conflicts that should be avoided.

If you do run into policy conflicts, see [Troubleshooting policies and profiles in Microsoft Intune](/troubleshoot/mem/intune/device-configuration/troubleshoot-policies-in-microsoft-intune).

## See also

[Manage endpoint security in Microsoft Intune](/mem/Intune/protect/endpoint-security)

[Best practices for securing Microsoft 365 for business plans](secure-your-business-data.md)

## Next step

[Set up and manage device groups](m365bp-device-groups-mdb.md).
