---
title: Device protection in Microsoft 365 Business Premium
description: Identify personal, unmanaged devices and company-owned devices, and learn how to secure them.
ms.author: chrisda
author: chrisda
manager: deniseb
ms.date: 08/14/2025
ms.topic: how-to
ms.service: microsoft-365-business-security
ms.localizationpriority: medium
ms.collection:
- M365-Campaigns
- m365solution-smb
- highpri
- m365-security
- tier2
- trust-pod
ms.reviewer: efratka
search.appverid: MET150
f1.keywords: NOCSH
audience: Admin
appliesto:
  - ✅ <a href="https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium" target="_blank">Microsoft 365 Business Premium</a>
  - ✅ <a href="https://m365forcampaigns.microsoft.com/" target="_blank">Microsoft 365 for Campaigns</a>
---

# Device protection in Microsoft 365 Business Premium

In Microsoft 365 Business Premium, you use _device protection policies_ to configure security settings for managed devices. There are preconfigured policies that help protect devices in your organization after onboarding. You can use the default policies, edit existing policies, or create your own policies.

The following types of device protection policies are available in Business Premium:

- **Microsoft Defender for Business**:
  - **[Next-generation protection policies](/defender-business/mdb-next-generation-protection)**: Determine how Microsoft Defender Antivirus and other threat protection features are configured on Windows devices. Supported platforms:
    - Windows
  - [**Firewall policies**](/defender-business/mdb-firewall): Determine what network traffic is permitted to flow to and from your organization's Windows devices. Supported platforms:
    - Windows

  > [!TIP]
  > Although not covered in this article, Defender for Business also includes the following policies to help protect devices:
  >
  > - **[Web content filtering policies](/defender-business/mdb-web-content-filtering)**: Enables your security team to track and regulate access to websites based on content categories (such as adult content, high bandwidth, legal liability, and leisure). Supported platforms:
  >   - Windows
  > - **[Controlled folder access](/defender-business/mdb-controlled-folder-access)**: Ransomware protection that allows only trusted apps to access protected folders on Windows devices. Supported platforms:
  >   - Windows
  > - **[Attack surface reduction rules](/defender-business/mdb-asr)**: Reduces where and how your business might be vulnerable to threats and attacks. Supported platforms:
  >   - Windows

- **Microsoft Intune**:
  - **[Account protection policies](/intune/intune-service/protect/endpoint-security-account-protection-policy)**: Protect identity and accounts on Windows devices. Supported platforms:
    - Windows
  - **[Antivirus policies](/intune/intune-service/protect/endpoint-security-antivirus-policy)**: Manage anti-virus settings on managed devices. Supported platforms:
    - Windows and [Configuration Manager](/intune/configmgr/core/understand/introduction) on Windows.
    - macOS (the macOS anti-virus settings here aren't available in other policy types)
    - Linux
  - **[App Control for Business policies](/intune/intune-service/protect/endpoint-security-app-control-policy#get-started-with-app-control-for-business-policies)**: Manage approved apps for Windows devices with App Control for Business policies and Managed Installers. Supported platforms:
    - Windows
  - **[Attack surface reduction](/intune/intune-service/protect/endpoint-security-asr-policy)**: Targets behavior typically used to infect computers, and helps secure removable devices. Uses Windows Defender antivirus on Windows devices. Supported platforms:
    - Windows and [Configuration Manager](/intune/configmgr/core/understand/introduction) on Windows.
  - **[Disk encryption policies](/intune/intune-service/protect/endpoint-security-disk-encryption-policy)**: Manage built-in disk and folder-level encryption on Windows and macOS devices. Supported platforms:
    - Windows
    - macOS
  - **[Endpoint detection and response policies](/intune/intune-service/protect/endpoint-security-edr-policy)**: Provides advanced attack detection that's nearly real-time and actionable. Requires integrating Microsoft Defender for Endpoint with Intune. Supported platforms:
    - Windows and [Configuration Manager](/intune/configmgr/core/understand/introduction) on Windows.
    - macOS (the macOS anti-virus settings here aren't available in other policy types)
    - Linux
  - **[Firewall policies](/intune/intune-service/protect/endpoint-security-firewall-policy)**: Manage the built-in firewall on macOS and Windows devices. Supported platforms:
    - Windows and [Configuration Manager](/intune/configmgr/core/understand/introduction) on Windows.
    - macOS

  > [!TIP]
  > Intune [device profiles](/intune/intune-service/configuration/device-profile-create) include the same settings that are available in the following device policies:
  >
  > - **Anti-virus device policy**: The [endpoint protection](/intune/intune-service/protect/endpoint-protection-configure) or [device restriction](/intune/intune-service/configuration/device-restrictions-configure) device profiles.
  > - **Disk encryption device policy**: The [endpoint protection](/intune/intune-service/protect/endpoint-protection-configure) device profile.
  > - **Firewall device policy**: The [endpoint protection](/intune/intune-service/protect/endpoint-protection-configure) device profile.
  >
  > However, these device profiles also include unrelated settings that can complicate the task of separately managing anti-virus, disk encryption, or firewall settings.

The rest of this article describes how to manage device protection policies in the Microsoft Defender portal and the Microsoft Intune admin center.

## Device policies in the Defender portal

In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Endpoints** \> **Configuration management** \> **Device configuration**. Or, to go directly to the **Device configuration** page, use <https://security.microsoft.com/policy-management>.

You work with device policies on the **Device configuration** page as described in the following subsections.

### View existing device protection policies in the Defender portal

On the **Windows** tab of the **Device configuration** page at <https://security.microsoft.com/policy-management>, the following information is shown:

- Policy type sections:
  - **Next generation protection**: The built-in policy is named **NGP Windows default policy**.
  - **Firewall**: The built-in policy is named **Firewall Windows default policy**.

- For both policy types, the following properties are displayed in the lists policies:
  - **Policy name**
  - **Order**: Policies are applied to devices in the order on the page, and only one policy of that type (**Next generation protection** or **Firewall**) is applied to a device. For more information, see [Understand policy order in Microsoft Defender for Business](/defender-business/mdb-policy-order).
  - **Created date**
  - **Last updated**
  - **Assigned devices**: The number of devices that have the policy assigned. An assigned device might not have the policy applied to the device yet.
  - **Applied devices**: The number of assigned devices that have the policy applied.

  :::image type="content"source="../../media/mdb-deviceconfiguration.png" lightbox="../../media/mdb-deviceconfiguration.png" alt-text="Screenshot of the Device configuration page in the Microsoft Defender portal.":::

- To view details about a device policy, select the policy from the list by clicking anywhere in the row other that the check box next to the policy name. The details flyout that opens contains the following information:
  - **Description**
  - **Device status**: The application status of assigned devices:
    - **Succeeded**: The number of assigned devices where the policy was successfully applied.
    - **Error**: The number of assigned devices where the policy wasn't applied due to an error.
  - **Impacted devices**:
    - The number of assigned devices.
    - The **Name** and **Status** of each device.

  > [!TIP]
  > To see details about other device policies without leaving the details flyout, use :::image type="icon"source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

  :::image type="content"source="../../media/mdb-deviceconfig-selectedpolicy.png" lightbox="../../media/mdb-deviceconfig-selectedpolicy.png" alt-text="Screenshot of the device policy details flyout in the Microsoft Defender portal.":::

### Create device protection policies in the Defender portal

On the **Windows** tab of the **Device configuration** page at <https://security.microsoft.com/policy-management>, do the following steps:

1. In the **Next-generation protection** or **Firewall** sections, select :::image type="icon"source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add** to start the new policy wizard.

2. On the **General information** page, configure the following settings:
   - **Policy name**: Enter a unique, descriptive name.
   - **Description**: Enter an optional description.
   - **Policy order**: Accept the default policy order or change it. For more information, see xxx.

3. On the **Device groups** page, do one of the following steps:
   - Select :::image type="icon"source="../../media/m365-cc-sc-add-internal-icon.png" border="false"::: **Use existing group** to select one or more device groups to use in the policy.
   - Select :::image type="icon"source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create new group** to create a new device group to use in the policy. For instructions, see [Create device groups in the Microsoft Defender portal](m365bp-devices-groups-categories.md#create-device-groups-in-the-microsoft-defender-portal) (starting at Step 4).

   When you're finished on the **Device groups** page, select **Next**.

4. On the **Configuration settings** page, review or configure the policy settings. For details, see the following articles:
   - **Next-generation protection**: [Next-generation protection settings and options](/defender-business/mdb-next-generation-protection?tabs=M365D#next-generation-protection-settings-and-options).
   - **Firewall**: [Firewall settings you can configure](/defender-business/mdb-firewall#firewall-settings-you-can-configure-in-defender-for-business).

   When you're finished on the **Configuration settings** page, select **Next**.

5. On the **Review your policy** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review your policy** page, select **Create policy**.

6. On the **New policy created** page, select **Done**.

Back on the **Windows** tab of the **Device configuration** page, the policy that you created is available in the corresponding section (**Next generation protection** or **Firewall**).

### Edit device protection policies in the Defender portal

On the **Windows** tab of the **Device configuration** page at <https://security.microsoft.com/policy-management>, do one of the following steps:

- Select the check box next to the policy name, and then select the :::image type="icon"source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.
- Select the policy by clicking anywhere in the row other than the check box next to the policy name. In the details flyout that opens, select :::image type="icon"source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** at the top of the flyout.

After you select :::image type="icon"source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**, the steps and options are basically the same as previously described in the [Create device protection policies in the Defender portal](#create-device-protection-policies-in-the-defender-portal) section. The main difference is the policy settings are already configured.

- You can change all settings in custom policies.
- The default policies named **NGP Windows default policy** or **Firewall Windows default policy** have the following issues:
  - **General information** page: You can't change the **Policy name** or **Policy order** values.
  - **Device groups** page: By default, the device group named **All Devices** is selected:
    - You can replace **All devices** by selecting :::image type="icon"source="../../media/m365-cc-sc-add-internal-icon.png" border="false"::: **Use existing group**, and then selecting one or more device groups.
    - To return to **All Devices** as the only selected device group in the policy, select :::image type="icon"source="../../media/m365-cc-sc-computer-icon.png" border="false"::: **Add all devices**.

### Delete device protection policies in the Defender portal

> [!TIP]
> You can't delete the default policies named **NGP Windows default policy** or **Firewall Windows default policy**.

On the **Windows** tab of the **Device configuration** page at <https://security.microsoft.com/policy-management>, do one of the following steps:

- Select the check box next to the policy name, and then select the :::image type="icon"source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action that appears.
- Select the policy by clicking anywhere in the row other than the check box next to the policy name. In the details flyout that opens, select :::image type="icon"source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** at the top of the flyout.

In the **Delete policy** dialog that opens, read the information, and then select **Delete**.

Back on the **Windows** tab of the **Device configuration** page, the policy that you deleted is no longer available in the corresponding section (**Next generation protection** or **Firewall**).

## Device policies in the Intune admin center

You manage device policies in the Intune admin center at <https://intune.microsoft.com> \> **Endpoint security**. Or, to go directly to the **Overview** page in **Endpoint security**, use <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/overview>.

### Create device policies in the Intune admin center

1. In the Intune admin center at <https://intune.microsoft.com>, go to **Endpoint security** \> **Manage**, and then select the device policy type that you want to configure:

   - **Antivirus**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/antivirus>
   - **Disk encryption**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/diskencryption>
   - **Firewall**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/firewall>
   - **Endpoint detection and response**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/edr>
   - **App Control for Business**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/appControl>
   - **Attack surface reduction**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/asr>
   - **Account protection**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/accountprotection>

2. On the device policy page, select :::image type="icon"source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create Policy**.

3. On the **Create a profile** flyout that opens, configure the following settings:
   - **Platform**: The available values depend on the device policy type as previously described.
   - **Profile**: The available values depend on the device policy type and **Platform** value as described at the [beginning of this article](#device-protection-in-microsoft-365-business-premium)

   When you're finished on the **Create a profile** flyout, select **Create**

4. The new policy wizard starts on the **Create policy** page that opens. On the Basics tab, configure the following settings:
   - **Basics** tab: Configure the following settings:
     - **Name**: Enter a unique, descriptive name for the policy.
     - **Description**: Enter an optional description.

   When you're finished on the **Basics** tab, select **Next**.

5. On the **Configuration settings** tab, expand each group of settings, and then configure the settings.

   When you're finished on the **Configuration settings** tab, select **Next**.

6. On the **Scope tags** tab, optionally select a scope tag to limit management of the category to specific IT groups. For more information, see [Use RBAC and scope tags for distributed IT](/intune/intune-service/fundamentals/scope-tags).

   When you're finished on the **Scope tags** tab, select **Next**.

7. On the **Assignments** tab, select the groups that are included or excluded from the profile. For more information on assigning profiles, see [Assign user and device profiles](/intune/intune-service/configuration/device-profile-assign).

   When you're finished on the **Scope tags** tab, select **Next**.

8. On the **Review + create** tab, review the settings. You can select **Back** or a tab to go back and modify the settings.

   When you're finished **Review + create** tab, select **Save**.

Back on the device policy page, the new device category appears in the list.

### Copy device policies in the Intune admin center

1. In the Intune admin center at <https://intune.microsoft.com>, go to **Endpoint security** \> **Manage**, and then select the device policy type that you want to configure:

   - **Antivirus**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/antivirus>
   - **Disk encryption**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/diskencryption>
   - **Firewall**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/firewall>
   - **Endpoint detection and response**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/edr>
   - **App Control for Business**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/appControl>
   - **Attack surface reduction**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/asr>
   - **Account protection**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/accountprotection>

2. In the list of policies on the device policy page, select :::image type="icon"source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **Context menu** \> :::image type="icon"source="../../media/m365-cc-sc-copy-icon.png" border="false"::: **Duplicate** in the row of the policy that you want to copy.

3. In the **Duplicate policy** flyout that opens, enter the following information:
   - **New name**: Enter a unique, descriptive name for the new copy of the policy.
   - **New description**: Enter a new optional description for the new copy of the policy.

   When you're finished in the **Duplicate policy** flyout, select **Save**.

4. Back on the device policy page, select :::image type="icon"source="../../media/m365-cc-sc-refresh-icon.png" border="false"::: **Refresh** to see the new policy in the list.

### Edit device policies in the Intune admin center

1. In the Intune admin center at <https://intune.microsoft.com>, go to **Endpoint security** \> **Manage**, and then select the device policy type that you want to configure:

   - **Antivirus**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/antivirus>
   - **Disk encryption**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/diskencryption>
   - **Firewall**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/firewall>
   - **Endpoint detection and response**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/edr>
   - **App Control for Business**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/appControl>
   - **Attack surface reduction**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/asr>
   - **Account protection**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/accountprotection>

2. In the list of policies on the device policy page, select the policy that you want to edit by clicking anywhere in the row other than :::image type="icon"source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **Context menu**.

3. In the **Properties** section of the policy details page that opens, select **Edit** in one of the available subsections:
   - **Basics**
   - **Assignments**
   - **Scope tags**
   - **Configuration settings**

   Selecting **Edit** opens an **Edit policy** page with corresponding tabs as described in [Create device policies in the Intune admin center](#create-device-policies-in-the-intune-admin-center) (Step 4 or later). The tab that you start on doesn't matter, because you can also access the other tabs by selecting **Next** or the tab.

   When you're finished making updates, go to the **Review** tab of the **Edit policy** page, and then select **Save**.

### Delete device policies in the Intune admin center

1. In the Intune admin center at <https://intune.microsoft.com>, go to **Endpoint security** \> **Manage**, and then select the device policy type that you want to configure:

   - **Antivirus**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/antivirus>
   - **Disk encryption**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/diskencryption>
   - **Firewall**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/firewall>
   - **Endpoint detection and response**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/edr>
   - **App Control for Business**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/appControl>
   - **Attack surface reduction**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/asr>
   - **Account protection**: <https://intune.microsoft.com/#view/Microsoft_Intune_Workflows/SecurityManagementMenu/~/accountprotection>

2. In the list of policies on the device policy page, do one of the following steps:
   - Select :::image type="icon"source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **Context menu** \> :::image type="icon"source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** in the row of the policy that you want to delete.
   - Select the policy that you want to delete by clicking anywhere in the row other than :::image type="icon"source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **Context menu**. On the policy details page that opens, select :::image type="icon"source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete**.

3. In the **Are you sure?** confirmation dialog that appears, select **OK**.

On the device policy page, the policy is no longer listed.

## Manage conflicts

<!--- Basically unchanged --->

Many of the device settings that you can manage with Endpoint security policies are also available through other policy types in Intune. These other policy types include device configuration policies and security baselines. Because you can manage settings through different policy types or multiple policies of the same type, you need to identify and resolve policy conflicts for devices that don't adhere to the configurations you expect.

Security baselines can set a non-default value for a setting to comply with the recommended configuration addressed by the baseline.

Other policy types (for example, endpoint security policies) set a default value of **Not configured**, which requires you to explicitly configure settings in the policy.

Regardless of the policy method, managing the same setting on the same device through multiple policy types, or through multiple policies of the same type can result in conflicts.

If you encounter policy conflicts, see [Troubleshooting policies and profiles in Microsoft Intune](/troubleshoot/mem/intune/device-configuration/troubleshoot-policies-in-microsoft-intune).

## See also

[Manage endpoint security in Microsoft Intune](/intune/intune-service/protect/endpoint-security)

[Best practices for securing Microsoft 365 for business plans](m365b-security-best-practices.md)
