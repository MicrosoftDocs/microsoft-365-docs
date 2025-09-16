---
title: "Configure policies in Basic Mobility and Security"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: orspodek
ms.date: 08/14/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-basic-mobility-security
ms.localizationpriority: medium
ms.collection: 
- Tier3
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- basic-mobility-security
- trust-pod
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkEXCHANGE
- basic-mobility-security
description: "Admins can learn how to create, view, modify, and delete policies in Basic Mobility and Security."
appliesto:
  - ✅ <a href="https://www.microsoft.com/microsoft-365/business/microsoft-365-business-basic" target="_blank">Microsoft 365 Business Basic</a>
  - ✅ <a href="https://www.microsoft.com/microsoft-365/business/microsoft-365-business-standard" target="_blank">Microsoft 365 Business Standard</a>
---

# Configure policies in Basic Mobility and Security

After an admin sets up Basic Mobility and Security in the organization as described in [Set up Basic Mobility and Security in Microsoft 365 for business](m365b-devices-basic-mobility-security-set-up.md), an admin needs to configure policies that are applied to devices.

For supported devices and policy settings, see [Policy settings in Basic Mobility and Security](m365b-devices-basic-mobility-security-overview.md#policy-settings-in-basic-mobility-and-security).

This article described how to create, view, modify, and remove device security policies in Basic Mobility and Security.

For more information about Basic Mobility and Security, see [Overview of Basic Mobility and Security in Microsoft 365 for business](m365b-devices-basic-mobility-security-overview.md).

You can use Basic Mobility and Security to create device policies that help protect your organization information on Microsoft 365 from unauthorized access. You can apply policies to supported device in your organization where the user has an applicable Microsoft 365 license and enrolled the device in Basic Mobility and Security.

## What do you need to know before you begin?

- You open the **Basic Mobility and Security** page at <https://compliance.microsoft.com/basicmobilityandsecurity>.

- To connect to Security & Compliance PowerShell, see [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

- Before you deploy any policies in Basic Mobility and Security, inform users about the potential results of enrolling their devices. Depending on how you set up policies, noncompliant devices can be negatively affected. For example:
  - Blocking access to Microsoft 365 data.
  - Blocking installed apps.
  - Blocking access to photos and personal information on the device.
  - Deleting data from the device.

- Polices in Basic Mobility and Security override [mobile device mailbox polices](/exchange/clients-and-mobile-in-exchange-online/exchange-activesync/mobile-device-mailbox-policies) in Exchange Online (configured in the Exchange admin center at <https://admin.exchange.microsoft.com/#/mobiledevicemailboxpolicy> or in Exchange Online PowerShell using the **\*-MobileDeviceMailboxPolicy** or **\*-ActiveSyncMailboxPolicy** cmdlets). After a device is enrolled in Basic Mobility and Security, any mobile device mailbox policy that applies to the device is ignored.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft Entra permissions](/entra/identity/role-based-access-control/manage-roles-portal): Membership in the **Global Administrator**<sup>\*</sup> or **Compliance Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

    > [!IMPORTANT]
    > <sup>\*</sup> Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.
    >
    > For information about what happens when you remove users from groups that assign policies, see the [What happens when you delete a policy or remove a user from a policy?](#what-happens-when-you-delete-a-policy-or-remove-a-user-from-a-policy) section later in this article.

- You can't use a delegated admin account to manage Basic Mobility and Security. For more information about delegated administration, see [Partners: Offer delegated administration](https://support.microsoft.com/office/partners-offer-delegated-administration-26530dc0-ebba-415b-86b1-b55bc06b073e).

- Questions? See the [Basic Mobility and Security FAQ](m365b-devices-basic-mobility-security-overview.md#basic-mobility-and-security-faq).

## Create policies in Basic Mobility and Security

By default, there are no policies in Basic Mobility and Security.

To create a policy, do the following steps.

1. On the **Basic Mobility and Security** page at <https://compliance.microsoft.com/basicmobilityandsecurity>, select the **Policies** tab.

2. On the **Policies** tab, select :::image type="icon"source="../../media/m365-cc-sc-create-rules-for-devices-icon.png" border="false"::: **Create** to start the new policy wizard.

3. On the **Policy name** page, configure the following settings:
   - **Name**: Enter a unique, descriptive name for the policy. You can't change the name of the policy after you create it.
   - **Description**: Enter an optional description for the policy.

   When you're finished on the **Policy name** page, select **Next**.

4. On the **Access requirements** page, configure the following settings:
   - Configure the device access requirements. The available settings are described in the **Access requirements** section of the table at [Policy settings in Basic Mobility and Security](m365b-devices-basic-mobility-security-overview.md#policy-settings-in-basic-mobility-and-security).

   - **If a device doesn't meet the requirements above, then...**: Select one of the following values:
     - **Allow access (device enrollment is required)**: This value is the default. If a user tries to access company resources using a [supported app](m365b-devices-basic-mobility-security-overview.md#apps-that-prompt-users-to-enroll-in-basic-mobility-and-security) on an unenrolled device, access is blocked. **The user is prompted to enroll the device; [device enrollment](m365b-devices-basic-mobility-security-enroll-devices.md) starts automatically**.

     - **Block access**: If a user tries to access company resources using a [supported app](m365b-devices-basic-mobility-security-overview.md#apps-that-prompt-users-to-enroll-in-basic-mobility-and-security) on an unenrolled device, **the user isn't prompted to enroll the device; they need to start the device enrollment manually**.

     > [!NOTE]
     >
     > - You can't change this setting after you create the policy.
     > - This setting controls the cmdlets in Security & Compliance PowerShell that you use to manage the policies. For more information, see the [Manage policies in Security & Compliance PowerShell](#manage-policies-in-security--compliance-powershell) section later in this article.

   When you're finished on the **Access requirements** page, select **Next**.

5. On the **Configurations** page, configure the available settings. The settings are described in the **Configurations** section of the table at [Policy settings in Basic Mobility and Security](m365b-devices-basic-mobility-security-overview.md#policy-settings-in-basic-mobility-and-security).

   When you're finished on the **Configurations** page, select **Next**.

6. On the **Deployment** page, configure one of the following options:
   - **We'll save this policy, but it won't be applied to any devices in your organization**: This value is the default. The policy is saved but not applied to any devices. You can apply the policy to one or more security groups later.
   - **Select one or more security groups that contain the people you want to apply this policy to**:

     > [!IMPORTANT]
     > We recommend that you apply a new policy to a few test users (a designated test group with a few designated members). Verify that the policy works as you expect before you deploy it to your organization.

     <!--- Check the status of user devices that have the policy applied. You want the **State** of devices to be **Managed.** You can also do a full or selective wipe on a device by clicking on **Factory reset** or **Remove company data** from **Manage** button after selecting a device..--->

     After you expand this section, start typing the name of the group in the box, and then select the group when it appears. The selected group appears below the box.

     To remove a selected group, select :::image type="icon"source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: on the entry.

     Repeat these steps as many times as necessary.

     The following security group types are supported:

     - **User groups**: To create user security groups in the Microsoft 365 admin center, see [Create, edit, or delete a security group](../email/create-edit-or-delete-a-security-group.md).

       Business Basic and Business Standard include Microsoft Entra Free, which supports creating **assigned user groups** (not dynamic user groups), although the built-in **All Users** dynamic user group is available. To create assigned user groups in the Microsoft Entra admin center, see [Create a basic group and add members](/entra/fundamentals/how-to-manage-groups#create-a-basic-group-and-add-members). Use the following settings:
       - **Group type**: **Security** (default).
       - **Microsoft Entra roles can be assigned to the group**: **No** (default).
       - **Members**: (Step 10): Select **No members selected**. On the **Add members** page that opens, select the **Users** tab to select the users to add to the group.

     - **Assigned device groups**: Similarly, Microsoft Entra Free supports creating assigned device groups (not dynamic device groups). To create assigned device groups in the Microsoft Entra admin center, see [Create a basic group and add members](/entra/fundamentals/how-to-manage-groups#create-a-basic-group-and-add-members). Use the following settings:
       - **Group type**: **Security** (default).
       - **Microsoft Entra roles can be assigned to the group**: **No** (default).
       - **Members**: (Step 10): Select **No members selected**. On the **Add members** page that opens, select the **Devices** tab to select the devices to add to the group.

     When you're finished on the **Deployment** page, select **Next**.

7. On the **Review** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review** page, select **Submit**.

8. On the **Basic mobility and security policy created** page, you can select the links to view the policy and learn more about Basic Mobility and Security policies.

   When you're finished on the **Basic mobility and security policy created** page, select **Done**.

   Back on the **Policies** tab of the **Basic Mobility and Security** page, the new policy is listed. The **Status value** is **Turning on...** for a few minutes. When you refresh the page, the **Status** value is **On**.

:::image type="content"source="../../media/basic-mobility-security-policies-tab.png" alt-text="Screenshot of the Policies tab on the Basic Mobility and Security page." lightbox="../../media/basic-mobility-security-policies-tab.png":::

The policy is pushed to the affected users the next time they sign in to Microsoft 365 on their device.

After you deploy the policy, if the user never had a Basic Mobility and Security policy applied to their device, they get a notification to enroll and activate Basic Mobility and Security on their device. For more information, see [Enroll your mobile device using Basic Mobility and Security](m365b-devices-basic-mobility-security-enroll-devices.md).

Until they complete the enrollment in Basic Mobility and Security, access to email, OneDrive, and other services in Microsoft 365 is restricted. After they complete enrollment, they have access to Microsoft 365 services and the policy is applied to their device.

> [!TIP]
> An unmodifiable priority value is assigned to each policy based on the order it was created in. Older policies have a higher priority (a lower number value). On the **Policies** tab of the **Basic Mobility and Security** page, policies are shown in the order they were created and are applied.
>
> If a policy intentionally or unintentionally applies to the same user based on their group memberships, the first (highest priority) applicable policy is applied to the user, and no more policies are applied (there's no combining or merging of settings from different policies). To avoid confusion and unintended application of policies, use the following guidelines:
>
> - Use unambiguous groups to assign policies. Configure any [global exceptions](m365b-devices-basic-mobility-security-set-up.md#step-4-configure-organization-settings-in-basic-mobility-and-security) as required.
> - Use groups with fewer users in higher priority policies, and groups with more users in lower priority policies.
> - Configure higher priority policies to have stricter or more specialized settings than lower priority policies.

## View policies in Basic Mobility and Security

On the **Policies** tab of the **Basic Mobility and Security** page at <https://compliance.microsoft.com/basicmobilityandsecurity>, the following properties are displayed in the list of policies:

- **Name**
- **Status**
- **Last modified time**

To change the list of policies from normal to compact spacing, select :::image type="icon"source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon"source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

Use the :::image type="icon"source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific policies.

To see details about a policy, select the policy by clicking anywhere in the row other than the check box next to the name to open the details flyout for the policy.

> [!TIP]
> To see details about other policies without leaving the details flyout, use :::image type="icon"source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

:::image type="content"source="../../media/basic-mobility-security-policy-details.png" alt-text="Screenshot of the details flyout of a policy from the Policies tab on the Basic Mobility and Security page." lightbox="../../media/basic-mobility-security-policy-details.png":::

## Modify policies in Basic Mobility and Security

On the **Policies** tab of the **Basic Mobility and Security** page at <https://compliance.microsoft.com/basicmobilityandsecurity>, select a policy by clicking anywhere in the row other than the check box next to the name to open the details flyout for the policy.

The available sections in the details flyout correspond to the pages in the wizard [when you created the policy](#create-policies-in-basic-mobility-and-security):

- **Description**
- **Access requirements**
- **Configurations**
- **Deployment**

Select the **Edit** link in the corresponding section to open another flyout to edit the available settings. When you're finished, select **Save** to return to the policy details flyout, and then select **Close**.

> [!TIP]
> You can't change the **Name** or **If a device doesn't meet the requirements above, then...** values on existing policies.

## Remove policies in Basic Mobility and Security

> [!IMPORTANT]
> For information about what happens when you remove assigned policies, see the [What happens when you delete a policy or remove a user from a policy?](#what-happens-when-you-delete-a-policy-or-remove-a-user-from-a-policy) section later in this article.
>
> You can't remove the last policy in the organization. The policy remains with the **Status** value **Deleting...**. To complete the deletion of the last policy, create at least one other policy.

1. On the **Policies** tab of the **Basic Mobility and Security** page at <https://compliance.microsoft.com/basicmobilityandsecurity>, select one or more policies by selecting the check box next to the name.

2. Select :::image type="icon"source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> **Delete selected policies**.

3. Select **Yes** in the warning dialog that opens.

Back on the **Policies** tab of the **Basic Mobility and Security** page, the **Status** value of the policy changes to **Deleting...** for a few minutes. Eventually, after you select :::image type="icon"source="../../media/m365-cc-sc-refresh-icon.png" border="false"::: **Refresh, the policy is no longer listed.

## Manage policies in Security & Compliance PowerShell

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), the basic elements of a policy in Basic Mobility and Security are:

- **The device rule**: Specifies the policy settings and the security groups that the policy applies to.
- **The device policy**: Required by the device rule. You can set the name, optional comments, and enable or disable the policy and the associated rule.

The difference between these two elements isn't obvious when you manage policies on the **Policies** tab of the **Basic Mobility and Security** page:

- When you create a policy on the **Policies** tab of the **Basic Mobility and Security** page, you're actually creating a device policy and the associated device rule at the same time. The name of the policy (for example, Contoso Engineering) is used in the name of the rule (for example, Contoso Engineering{2b18}).
- When you remove a policy on the **Policies** tab of the **Basic Mobility and Security** page, the device policy and the associated device rule are removed at the same time.

In Security & Compliance PowerShell, the difference between device policies and device rules is apparent:

- In PowerShell, you create the device policy first, then you create the device rule that specifies the device policy (creating the rule requires an available policy).
- In PowerShell, you specify the name of the device policy when you create it. When you create the device rule, you identify the policy that the rule applies to, and the name of the policy (for example, Contoso Engineering) is used in the name of the rule (for example, Contoso Engineering{2b18}). You can't change the name of the device policy after you create it.
- When you remove a device policy from PowerShell, the associated device rule is automatically removed after a few minutes. If you remove the device rule first, the associated device policy isn't automatically removed.

The cmdlets that you use to manage device policies and device rules depend on what you want for devices that don't meet the **Access requirements** settings described in the table at [Policy settings in Basic Mobility and Security](m365b-devices-basic-mobility-security-overview.md#policy-settings-in-basic-mobility-and-security):

- **Allow access**: Use the **\*-DeviceConfigurationPolicy** and **\*-DeviceConfigurationRule** cmdlets. These policies are made of _device configuration policies_ and _device configuration rules_.
- **Block access**: Use the **\*-DeviceConditionalAccessPolicy** and **\*-DeviceConditionalAccessRule** cmdlets. These policies are made of _device conditional access policies_ and _device conditional access rules_.

The **\*-DeviceConfigurationPolicy** and **\*-DeviceConditionalAccessPolicy** cmdlets contain the same available settings.

The **\*-DeviceConfigurationRule** and **\*-DeviceConditionalAccessRule** cmdlets differ by one setting: the _AllowJailbroken_ parameter is available only on the **New-DeviceConditionalAccessPolicy** and **Set-DeviceConditionalAccessPolicy** cmdlets.

> [!TIP]
> The **Get-DevicePolicy** cmdlet returns results for both types of device policies (device configuration policies and device conditional access policies).
>
> Use the **\*_DeviceTenantPolicy** and **\*-DeviceTenantRule** cmdlets to manage the organization settings for Basic Mobility and Security. For more information, see [Use PowerShell to configure organization settings in Basic Mobility and Security](m365b-devices-basic-mobility-security-set-up.md#use-powershell-to-configure-organization-settings-in-basic-mobility-and-security).

### Use PowerShell to create policies in Basic Mobility and Security

Creating a policy in Basic Mobility and Security using Security & Compliance PowerShell is a two-step process:

1. Create the device policy.
2. Create the device rule that specifies the device policy that the rule applies to.

The only differences in default values of policies created on the **Policies** tab of the **Basic Mobility and security** page vs. device rules created in PowerShell are:

- _PasswordRequired_ is `$false` by default in PowerShell.
- _AllowSimplePassword_ is `$false` by default in PowerShell.

#### Step 1: Use PowerShell to create a device policy

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), use the syntax of one of the following commands to create a device policy:

- **Allow access**:

  ```powershell
  New-DeviceConfigurationPolicy -Name "<PolicyName>" [-Comment "<OptionalComment>"] [-Enabled <$true | false>]
  ```

- **Block access**:

  ```powershell
  New-DeviceConditionalAccessPolicy -Name "<PolicyName>" [-Comment "<OptionalComment>"] [-Enabled <$true | false>]
  ```

**Notes**:

- You can't change the name of the policy after you create it.
- The _Enabled_ parameter with the value `$false` allows you to create the policy disabled (the **Status** value of the policy is **Off** on the **Policies** tab of the **Basic Mobility and Security** page). If you don't use this parameter or you specify the value `$true`, the policy is enabled (the **Status** value is **On**) You can also disable the policy after you create it.
- You can't change the device policy type (device configuration policy or device conditional access policy) after you create it.

This example creates a new device configuration policy named Contoso Engineering with the specified optional comment:

```powershell
New-DeviceConfigurationPolicy -Name "Contoso Engineering" -Comment "Policy with more restrictive settings."
```

For detailed syntax and parameter information, see [New-DeviceConfigurationPolicy](/powershell/module/exchangepowershell/new-deviceconfigurationpolicy) or [New-DeviceConditionalAccessPolicy](/powershell/module/exchangepowershell/new-deviceconditionalaccesspolicy).

#### Step 2: Use PowerShell to create a device rule

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), use the syntax of one of the following commands to create a device rule:

- **Allow access**:

  ```powershell
  New-DeviceConfigurationRule -Policy "<DeviceConfigurationPolicyName>" -TargetGroups "SecurityGroupGUID1","SecurityGroupGUID2",..."SecurityGroupGUIDN" [<Access Requirement settings>] [Configuration settings] [<PowerShell exclusive settings>]
  ```

- **Block access**:

  ```powershell
  New-DeviceConditionalAccessRule -Policy "<DeviceConfigurationPolicyName>" -TargetGroups "SecurityGroupGUID1","SecurityGroupGUID2",..."SecurityGroupGUIDN" [<Access Requirement settings>] [Configuration settings] [<PowerShell exclusive settings>]

**Notes**:

- _Policy_: Use the name of the device policy that you created in the previous step. After you create the rule, you can't associate a different device policy.
- _TargetGroups_: Specify one or more security groups that the policy applies to (separate multiple values with commas). You identify groups by GUID value:
  - To create a rule that applies to no one (corresponds to the **We'll save this policy, but it won't be applied to any devices in your organization** setting in Step 5 when you [create the policy on the Recipients tab of the Basic Mobility and security page](#create-policies-in-basic-mobility-and-security)), use the value `00000000-0000-0000-0000-000000000000`.
  - Specify the GUID value of one or more security groups. To find the GUID values of available security groups, use the following procedures:
    1. If you haven't already, install the Microsoft.Graph.Groups PowerShell module by running the following command in the current PowerShell window:

       ```powershell
       Install-Module Microsoft.Graph
       ```

       Answer yes to any prompts about installing the NuGet provider or installing from the PSGallery.

    2. Connect to Microsoft.Graph.Groups PowerShell by running the following command:

       ```powershell
       Connect-MgGraph -Scopes "Group.ReadWrite.All"
       ```

       For detailed syntax and parameter information, see [Connect-MgGraph](/powershell/module/microsoft.graph.authentication/connect-mggraph).

    3. Run the following command:

       ```powershell
       Get-MgGroup
       ```

       Use the DisplayName value to find and copy the Id value to use.

       > [!TIP]
       > You might need to decrease the font size in the PowerShell window and run the command again to clearly see all of the values. For example, click in the window and use the scroll wheel on your mouse to scroll down, and then run the command again.
       >
       > You can't use [Microsoft 365 Groups](../create-groups/office-365-groups.md) in device rules (the _GroupTypes_ property value is `Unified`).

       For detailed syntax and parameter information, see [Get-MgGroup](/powershell/module/microsoft.graph.groups/get-mggroup).

- The parameters that correspond to the policy settings on the **Basic Mobility and security** page are described in the table at [Policy settings in Basic Mobility and Security](m365b-devices-basic-mobility-security-overview.md#policy-settings-in-basic-mobility-and-security). Settings that are exclusive to PowerShell are described at [Exclusive policy settings in Security & Compliance PowerShell](m365b-devices-basic-mobility-security-overview.md#exclusive-policy-settings-in-security--compliance-powershell).
- The _AllowJailbroken_ parameter isn't available on the **New-DeviceConfigurationRule** cmdlet.

This example creates a device configuration rule with the following values:

- Associated device configuration policy: Contoso Engineering
- The rule applies to no one (`00000000-0000-0000-0000-000000000000`).
- Use the default values for all settings.

```powershell
New-DeviceConfigurationRule -Policy "Contoso Engineering" -TargetGroups "00000000-0000-0000-0000-000000000000"
```

For detailed syntax and parameter information, see [New-DeviceConfigurationRule](/powershell/module/exchangepowershell/new-deviceconfigurationrule) and [New-DeviceConditionalAccessRule](/powershell/module/exchangepowershell/new-deviceconditionalaccessrule).

### Use PowerShell to view device policies

To return a summary list of all device policies, use the following commands:

- Device configuration policies (**Allow access**):

  ```powershell
  Get-DeviceConfigurationPolicy | Format-Table Name,Enabled
  ```

- Device conditional access policies (**Block access**):

  ```powershell
  Get-DeviceConditionalAccessPolicy | Format-Table Name,Enabled
  ```

- All device policies:

  ```powershell
  Get-DevicePolicy | Format-Table Name,Type,Enabled
  ```

  > [!TIP]
  > The **Type** property indicates `DeviceSettings` for device configuration policies or `DeviceConditionalAccess` for device conditional access policies.

To return detailed information about a specific device policy, use the syntax of one of the following commands:

- Device configuration policies (**Allow access**):

  ```powershell
  Get-DeviceConfigurationPolicy -Identity "<PolicyName>"
  ```

- Device conditional access policies (**Block access**):

  ```powershell
  Get-DeviceConditionalAccessPolicy -Identity "<PolicyName>"
  ```

- Either device policy type:

  ```powershell
  Get-DevicePolicy -Identity "<PolicyName>"
  ```

This example returns all the property values for the device configuration policy named Executives.

```powershell
Get-DeviceConfigurationPolicy -Identity "Executives"
```

For detailed syntax and parameter information, see [Get-DeviceConfigurationPolicy](/powershell/module/exchangepowershell/get-deviceconfigurationpolicy), [Get-DeviceConditionalAccessPolicy](/powershell/module/exchangepowershell/get-deviceconditionalaccesspolicy), and [Get-DevicePolicy](/powershell/module/exchangepowershell/get-devicepolicy).

### Use PowerShell to view device rules

To return a summary list of all device rules, use the following commands:

- Device configuration rules (**Allow access**):

  ```powershell
  Get-DeviceConfigurationRule | Format-Table Name,TargetGroups,Mode
  ```

- Device conditional access rules (**Block access**):

  ```powershell
  Get-DeviceConditionalAccessRule | Format-Table Name,TargetGroups,Mode
  ```

To return detailed information about a specific device rule, use the syntax of one of the following commands:

- Device configuration rules (**Allow access**):

  ```powershell
  Get-DeviceConfigurationRule -Identity "<RuleName>" | Format-List [<Specific properties to view>]
  ```

- Device conditional access rules (**Block access**):

  ```powershell
  Get-DeviceConditionalAccessRule -Identity "<RuleName>" | Format-List [<Specific properties to view>]
  ```

This example returns all the property values for the device configuration rule named Executives{2b18}.

```powershell
Get-DeviceConfigurationRule -Identity "Executives{2b18}"
```

This example returns the target groups and all password related properties for the same rule.

```powershell
Get-DeviceConfigurationRule -Identity "Executives{2b18}" | Format-List TargetGroups,*Password*
```

This example expands the full list of security group GUID values in the TargetGroups property for the specified rule.

```powershell
Get-DeviceConfigurationRule -Identity "Executives{2b18}" | Select-Object -ExpandProperty TargetGroups
```

> [!TIP]
> The value of the _Disabled_ property in the output of the **Get-DeviceConfigurationRule** doesn't mean anything. You enable or disable the policy by using the _Enabled_ parameter on the **New-DeviceConfigurationPolicy** or **Set-DeviceConfigurationPolicy** cmdlets.

For detailed syntax and parameter information, see [Get-DeviceConfigurationRule](/powershell/module/exchangepowershell/get-deviceconfigurationrule) and [Get-DeviceConditionalAccessRule](/powershell/module/exchangepowershell/get-deviceconditionalaccessrule).

### Use PowerShell to modify device policies

Other than specifying the name of the policy, the same settings are available when you modify a device policy in PowerShell as when you create the policy as described in the [Step 1: Use PowerShell to create a device policy](#step-1-use-powershell-to-create-a-device-policy) section earlier in this article.

To modify a device policy, use the syntax of one of the following commands:

- Device configuration policies (**Allow access**):

  ```powershell
  Set-DeviceConfigurationPolicy -Identity "<PolicyName>" [-Comment "<OptionalComment>"] [-Enabled <$true | $false>]
  ```

- Device conditional access policies (**Block access**):

  ```powershell
  Set-DeviceConditionalAccessPolicy -Identity "<PolicyName>" [-Comment "<OptionalComment>"] [-Enabled <$true | $false>]
  ```

This example disables the device configuration policy named Executives.

```powershell
Set-DeviceConfigurationPolicy -Identity "Executives" -Enabled $false
```

On the **Policies** tab of the **Basic Mobility and Security** page, the **Status** value changes from **On** to **Off**.

To enable a disabled policy, use the value `$true` for the _Enabled_ parameter.

For detailed syntax and parameter information, see [Set-DeviceConfigurationPolicy](/powershell/module/exchangepowershell/set-deviceconfigurationpolicy) and [Set-DeviceConditionalAccessPolicy](/powershell/module/exchangepowershell/set-deviceconditionalaccesspolicy).

### Use PowerShell to modify device rules

Other than specifying the associated device policy, the same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create a device rule](#step-2-use-powershell-to-create-a-device-rule) section earlier in this article.

To modify a device rule, use the syntax of one of the following commands:

- Device configuration rules (**Allow access**):

  ```powershell
  Set-DeviceConfigurationRule -Identity "<RuleName>" -TargetGroups "SecurityGroupGUID1","SecurityGroupGUID2",..."SecurityGroupGUIDN" [<Access Requirement settings>] [Configuration settings] [<PowerShell exclusive settings>]
  ```

- Device conditional access rules (**Block access**):

  ```powershell
  Set-DeviceConditionalAccessRule -Identity "<RuleName>" -TargetGroups "SecurityGroupGUID1","SecurityGroupGUID2",..."SecurityGroupGUIDN" [-AllowJailBroken <$true | $false>] [<Other Access Requirement settings>] [Configuration settings] [<PowerShell exclusive settings>]
  ```

> [!NOTE]
> A value for the _TargetGroups_ parameter is required in this command and **overwrites** the existing values. To find the existing values, replace \<RuleIdentity\> with the name of the device rule, and then run one the following applicable commands:
>
> ```powershell
> Get-DeviceConfigurationRule -Identity "<RuleIdentity>" | Select-Object -ExpandProperty TargetGroups
> ```
>
> ```powershell
> Get-DeviceConditionalAccessRule -Identity "<RuleIdentity>" | Select-Object -ExpandProperty TargetGroups
> ```

For detailed syntax and parameter information, see [Set-DeviceConfigurationRule](/powershell/module/exchangepowershell/set-deviceconfigurationrule) and [Set-DeviceConditionalAccessRule](/powershell/module/exchangepowershell/set-deviceconditionalaccessrule).

### Use PowerShell to remove device policies

> [!TIP]
> When you use PowerShell to remove a device policy, the associated device rule is also marked for deletion. For the next few minutes, the output of the **Get-DeviceConfigurationRule** cmdlet for the rule has the **Mode** property value `PendingDeletion`. This state corresponds to the **Status** value **Deleting...** on the **Policies** tab of the **Basic Mobility and Security** page. After a few minutes, the device rule is also removed.
>
> You can remove the device policy of the last remaining policy in your organization, but the associated device rule isn't removed nor is it removable. For more information, see the next section.

To remove a device policy in PowerShell, use the syntax of one of the following commands:

- Device configuration policies (**Allow access**):

  ```powershell
  Remove-DeviceConfigurationPolicy -Identity "<PolicyName>"
  ```

- Device conditional access policies (**Block access**):

  ```powershell
  Remove-DeviceConditionalAccessPolicy -Identity "<PolicyName>"
  ```

This example removes the device configuration policy named Marketing Department.

```powershell
Remove-DeviceConfigurationPolicy -Identity "Marketing Department"
```

The associated device configuration rule named `Marketing Department{xxx}` is automatically removed after a few minutes.

For detailed syntax and parameter information, see [Remove-DeviceConfigurationPolicy](/powershell/module/exchangepowershell/remove-deviceconfigurationpolicy) and [Remove-DeviceConditionalAccessPolicy](/powershell/module/exchangepowershell/remove-deviceconditionalaccesspolicy).

### Use PowerShell to remove device rules

> [!TIP]
> When you use PowerShell to remove a device rule, the associated device policy isn't removed, so you need to manually remove it.
>
> You can't remove the device rule of the last remaining policy in your organization. Regardless of how you tried to remove it (on the **Policies** tab **Basic Mobility and Security** page, by removing the associated device policy first, or by removing the device rule directly), the _Mode_ value of the last device rule remains in the `PendingDeletion` state. To complete the deletion of the rule, create one or more policies (device policies and associated device rules) on the **Basic Mobility and Security** page or in PowerShell as previously described.

To remove a device rule in PowerShell, use the syntax of one of the following commands:

- Device configuration rules (**Allow access**):

  ```powershell
  Remove-DeviceConfigurationRule -Identity "<PolicyName>"
  ```

- Device conditional access rules (**Block access**):

  ```powershell
  Remove-DeviceConditionalAccessRule -Identity "<PolicyName>"
  ```

This example removes the device configuration rule named Marketing Department.

```powershell
Remove-DeviceConfigurationRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-DeviceConfigurationRule](/powershell/module/exchangepowershell/remove-deviceconfigurationrule) and [Remove-DeviceConditionalAccessRule](/powershell/module/exchangepowershell/remove-deviceconditionalaccessrule).

## What happens when you delete a policy or remove a user from a policy?

When you delete a policy or remove a user from a policy, information that might be removed from the device is described in the following table:

|What's removed|iOS/iPadOS|Android|Samsung KNOX|
|---|:---:|:---:|
|Managed email profiles<sup>\*</sup>|Yes|No|No|
|Blocked cloud backup|Yes|No|No|

<sup>\*</sup> If the policy was deployed with **Require managing email profile (iOS - required for selective wipe)** selected, the managed email profile and cached email in that profile are deleted from the device.

The policy is removed from the affected device the next time the device checks in with Basic Mobility and Security. If you deploy a new policy that applies to the device, users are prompted to re-enroll in Basic Mobility and Security.

You can also wipe a mobile device completely, or selectively wipe organizational information from the device. For more information, see [Wipe a mobile device in Basic Mobility and Security](m365b-devices-basic-mobility-security-wipe-devices.md).
