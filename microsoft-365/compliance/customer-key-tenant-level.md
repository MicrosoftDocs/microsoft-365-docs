---
title: "Customer Key for Microsoft 365 at the tenant level (public preview)"
ms.author: krowley
author: kccross
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
description: "Learn how to set up Customer Key for your data within Microsoft 365 at the tenant level."
---

# Overview of Customer Key for Microsoft 365 at the tenant level (public preview)

Using keys you provide, you can create a data encryption policy (DEP) and assign it to the tenant. The tenant-wide DEP you create encrypts the following data:

- Teams chat messages (1:1 chats, group chats, meeting chats and channel conversations)
- Teams media messages (images, code snippets, video messages, audio messages, wiki images)
- Teams call and meeting recordings stored in Teams storage
- Teams chat notifications
- Teams chat suggestions by Cortana
- Teams status messages
- User and signal information for Exchange Online
- Exchange Online mailboxes that aren't already encrypted Customer Key DEPs at the application level
- MIP exact data match (EDM) data – (data file schemas, rule packages, and the salts used to hash the sensitive data)

For Microsoft Information Protection and Microsoft Teams, Customer Key at the tenant level encrypts new data from the time you assign the DEP to the tenant. Public preview doesn't support encrypting past data. For Exchange Online, Customer Key encrypts all existing and new data.

You can create multiple DEPs per tenant but can only assign one DEP at a time. When you assign the DEP, encryption begins automatically but takes some time to complete depending on the size of your tenant.

## Tenant level policies add broader control to Customer Key for Microsoft 365

If you already have Customer Key set up for Exchange Online and Sharepoint Online, here's how the new tenant-level public preview fits in.

The tenant-level encryption policy you create encrypts all data for the Microsoft Teams and Exchange Online workloads in Microsoft 365. However, for Exchange Online, if you have already assigned Customer Key DEPs to individual mailboxes, the tenant-level policy won't override those DEPs. The tenant-level policy will only encrypt mailboxes that aren't assigned a mailbox level Customer Key DEP already. When you encrypt a user mailbox using a tenant level DEP, all its content gets encrypted. For information about what gets encrypted with a DEP at the application level, see [Service encryption with Customer Key](customer-key-overview.md).

## Data that isn't encrypted with Customer Key at the tenant level

Customer Key doesn't encrypt the following types of data at the tenant level. Instead, Microsoft 365 uses other types of encryption to protect this data.

- Exchange online mailboxes that you've already encrypted using a Customer Key DEP at the application level. Mailboxes that don't have a Customer Key DEP assigned to them will be encrypted using the tenant level DEP. This arrangement means that you may have some mailboxes encrypted with a tenant level DEP and some mailboxes encrypted with application level DEPs.
- SharePoint and OneDrive for Business use Customer Key at the application level. A single DEP encrypts content in SharePoint for a single geo.
- Microsoft Teams files and some Teams call and meeting recordings saved in OneDrive for Business and SharePoint are encrypted by a SharePoint Online DEP.

Any workloads or scenarios that aren't currently supported by Customer Key for Microsoft 365.

- Other Microsoft 365 workloads such as Yammer, Planner, and so on.
- Teams Live Events and Q&A in Live Events. For Teams, this scenario is the only one that isn't encrypted by Customer Key at the tenant level.

## Set up Customer Key at the tenant level (public preview)

These steps are similar but not identical to the steps for setting up Customer Key at the application level. Only use this public preview with test data in test tenants. Don't use this release with production data or in your production environment. If you already have a production deployment of Customer Key, use these steps to set up Customer Key at the tenant level in a test environment. Once you've assigned a tenant level DEP to your tenant, you can start the validation process and contact m365ck@microsoft.com with any questions or concerns. You can also find documented validation steps in the public preview of [Validation Instructions for Data-at-rest Encryption for Microsoft 365](https://aka.ms/CustomerKey/PublicPreviewValidation).

You'll complete most of these tasks by remotely connecting to Azure PowerShell. For best results, use version 4.4.0 or later of Azure PowerShell.

Before you begin:

- You'll need to use a work or school account that has the compliance admin role to set up Customer Key at the tenant level.
- Ensure that you have the appropriate licensing for your organization. Use a paid, invoiced Azure Subscription using either an Enterprise Agreement or a Cloud Service Provider. Azure Subscriptions purchased using Pay As You Go plans or using a credit card aren't supported for Customer Key. Starting April 1, 2020, Customer Key in Office 365 is offered in Office 365 E5, Microsoft 365 E5, Microsoft 365 E5 Compliance, and Microsoft 365 E5 Information Protection & Governance SKUs. Office 365 Advanced Compliance SKU is no longer available for new licenses. Existing Office 365 Advanced Compliance licenses will continue to be supported. While the service can be enabled with a minimum of one appropriately licensed user under the tenant, you should still make sure all users that benefit from the service have appropriate licenses.

### Create two new Azure subscriptions

Customer Key requires two keys for each data encryption policy (DEP). To create two keys, you must create two Azure subscriptions. As a best practice, Microsoft recommends that you have separate members of your organization configure one key in each subscription. Only use these Azure subscriptions to administer encryption keys for Microsoft 365. Following these guidelines helps protect your organization in case one of your operators accidentally, intentionally, or maliciously deletes or otherwise mismanages the keys for which they are responsible.

There is no practical limit to the number of Azure subscriptions that you can create for your organization. Following this best practice helps minimize the impact of human error while helping to manage the resources used by Customer Key.

### Register Azure subscriptions to use a mandatory retention period

The temporary or permanent loss of root encryption keys can be disruptive or even catastrophic to service operation and can result in data loss. For this reason, the resources used with Customer Key require strong protection. All the Azure resources that are used with Customer Key offer protection mechanisms beyond the default configuration. Azure subscriptions can be tagged or registered in a way that will prevent immediate and irrevocable cancellation. This process is referred to as registering for a mandatory retention period. The steps required to register Azure subscriptions for a mandatory retention period require collaboration with the Microsoft. This process can take up to five business days. Previously, this process was sometimes referred to as "Do Not Cancel".
  
Before contacting the Microsoft 365 team, you must perform the following steps for each Azure subscription that you use with Customer Key. Ensure that you have the [Azure PowerShell Az](/powershell/azure/new-azureps-module-az) module installed before you start.

1. Sign in with Azure PowerShell. For instructions, see [Sign in with Azure PowerShell](/powershell/azure/authenticate-azureps).

2. Run the Register-AzProviderFeature cmdlet to register your subscriptions to use a mandatory retention period. Perform this action for each subscription.

   ```powershell
   Set-AzContext -SubscriptionId <SubscriptionId>
   Register-AzProviderFeature -FeatureName mandatoryRetentionPeriodEnabled -ProviderNamespace Microsoft.Resources
   ```

3. Contact Microsoft to have the process finalized at [m365ck@microsoft.com](mailto:m365ck@microsoft.com). Include the following content in your email:

   **Subject**: Customer Key for \<*Your tenant's fully-qualified domain name*\>

   **Body**:
   Subscription IDs for which you want to have the mandatory retention period finalized.
   The output of Get-AzProviderFeature for each subscription.

   The Service Level Agreement (SLA) for completion of this process is five business days once Microsoft has been notified (and verified) that you have registered your subscriptions to use a mandatory retention period.

4. Once you receive notification from Microsoft that registration is complete, verify the status of your registration by running the Get-AzProviderFeature command as follows. If verified, the Get-AzProviderFeature command returns a value of **Registered** for the **Registration State** property. Perform this action for each subscription.

   ```powershell
   Set-AzContext -SubscriptionId <SubscriptionId>
   Get-AzProviderFeature -ProviderNamespace Microsoft.Resources -FeatureName mandatoryRetentionPeriodEnabled
   ```

5. To complete the process, run the Register-AzResourceProvider command. Perform this action for each subscription.

   ```powershell
   Set-AzContext -SubscriptionId <SubscriptionId>
   Register-AzResourceProvider -ProviderNamespace Microsoft.KeyVault
   ```

### Create a premium Azure Key Vault in each subscription

The steps to create a key vault are documented in [Getting Started with Azure Key Vault](/azure/key-vault/general/overview), which guides you through installing and launching Azure PowerShell, connecting to your Azure subscription, creating a resource group, and creating a key vault in that resource group.
  
When you create a key vault, you must choose a SKU: either Standard or Premium. The Standard SKU allows Azure Key Vault keys to be protected with software - there is no Hardware Security Module (HSM) key protection - and the Premium SKU allows the use of HSMs for protection of Key Vault keys. Customer Key accepts key vaults that use either SKU, though Microsoft strongly recommends that you use only the Premium SKU. The cost of operations with keys of either type is the same, so the only difference in cost is the cost per month for each HSM-protected key. See [Key Vault pricing](https://azure.microsoft.com/pricing/details/key-vault/) for details.
  
> [!IMPORTANT]
> Use the Premium SKU key vaults and HSM-protected keys for production data, and only use Standard SKU key vaults and keys for testing and validation purposes.

Use a common prefix for key vaults and include an abbreviation of the use and scope of the key vault and keys. For example, for the Contoso service where the vaults will be located in North America, a possible pair of names is Contoso-O365-NA-VaultA1 and Contoso-O365-NA-VaultA2. Vault names are globally unique strings within Azure, so you may need to try variations of your desired names in case the desired names are already claimed by other Azure customers. Once configured, vault names cannot be changed, so the best practice is to have a written plan for setup and use a second person to verify the plan is executed correctly.

If possible, create your vaults in non-paired regions. Paired Azure regions provide high availability across service failure domains. Therefore, regional pairs can be thought of as each other's backup region. An Azure resource that is placed in one region is automatically gaining fault tolerance through the paired region. Choosing regions for two vaults used in a data encryption policy where the regions are paired means that only a total of two regions of availability are in use. Most geographies only have two regions, so it's not yet possible to select non-paired regions. If possible, choose two non-paired regions for the two vaults used with a data encryption policy. This scenario benefits from a total of four regions of availability. For more information, see [Business continuity and disaster recovery (BCDR): Azure Paired Regions](/azure/best-practices-availability-paired-regions) for a current list of regional pairs.

### Assign permissions to each key vault

For each key vault, you'll need to define three separate sets of permissions for Customer Key, depending on your implementation. For example, you'll need to define one set of permissions for each of these:
  
- **Key vault administrators** that will perform day-to-day management of your key vault for your organization. These tasks include backup, create, get, import, list, and restore.

  > [!IMPORTANT]
  > The set of permissions assigned to key vault administrators does not include the permission to delete keys. This is intentional and an important practice. Deleting encryption keys is not typically done, since doing so permanently destroys data. As a best practice, do not grant this permission to key vault administrators by default. Instead, reserve this for key vault contributors and only assign it to an administrator on a short term basis once a clear understanding of the consequences is understood.
  
  To assign these permissions to a user in your organization, sign in to your Azure subscription with Azure PowerShell. For instructions, see [Sign in with Azure PowerShell](/powershell/azure/authenticate-azureps).

   Run the Set-AzKeyVaultAccessPolicy cmdlet to assign the necessary permissions.

   ```powershell
   Set-AzKeyVaultAccessPolicy -VaultName <vault name> -UserPrincipalName <UPN of user> -PermissionsToKeys create,import,list,get,backup,restore
   ```

   For example:

   ```powershell
   Set-AzKeyVaultAccessPolicy -VaultName Contoso-O365EX-NA-VaultA1 -UserPrincipalName alice@contoso.com -PermissionsToKeys create,import,list,get,backup,restore
   ```

- **Key vault contributors** that can change permissions on the Azure Key Vault itself. You'll need to change these permissions as employees leave or join your team, or in the rare situation that the key vault administrators legitimately need permission to delete or restore a key. This set of key vault contributors needs to be granted the Contributor role on your key vault. You can assign this role by using Azure Resource Manager. For detailed steps, see [Use Role-Based Access Control](/azure/active-directory/role-based-access-control-configure) to manage access to your Azure subscription resources. The administrator who creates a subscription has this access by default, and the ability to assign other administrators to the Contributor role.

- **Microsoft 365 data at rest encryption service** that does the work of Customer Key at the tenant level. To give permission to Microsoft 365, run the **Set-AzKeyVaultAccessPolicy** cmdlet using the following syntax:

   ```powershell
   Set-AzKeyVaultAccessPolicy -VaultName <vault name> -PermissionsToKeys wrapKey,unwrapKey,get -ServicePrincipalName <Microsoft 365 appID>
   ```

  Where:

  - *vault name* is the name of the key vault you created.

  Example: For the Microsoft 365 Data at Rest Encryption service, replace  *Microsoft 365 appID* with `c066d759-24ae-40e7-a56f-027002b5d3e4`

  ```powershell
  Set-AzKeyVaultAccessPolicy -VaultName Contoso-O365EX-NA-VaultA1 -PermissionsToKeys wrapKey,unwrapKey,get -ServicePrincipalName c066d759-24ae-40e7-a56f-027002b5d3e4
  ```

### Enable and then confirm soft delete on your key vaults

When you can quickly recover your keys, you are less likely to experience an extended service outage due to accidentally or maliciously deleted keys. Enable this configuration, referred to as Soft Delete, before you can use your keys with Customer Key. Enabling Soft Delete allows you to recover keys or vaults within 90 days of deletion without having to restore them from backup.
  
To enable Soft Delete on your key vaults, complete these steps:
  
1. Sign in to your Azure subscription with Windows PowerShell. For instructions, see [Sign in with Azure PowerShell](/powershell/azure/authenticate-azureps).

2. Run the [Get-AzKeyVault](/powershell/module/az.keyvault/get-azkeyvault) cmdlet. In this example, *vault name* is the name of the key vault for which you are enabling soft delete:

   ```powershell
   $v = Get-AzKeyVault -VaultName <vault name>
   $r = Get-AzResource -ResourceId $v.ResourceId
   $r.Properties | Add-Member -MemberType NoteProperty -Name enableSoftDelete -Value 'True'
   Set-AzResource -ResourceId $r.ResourceId -Properties $r.Properties
   ```

3. Confirm soft delete is configured for the key vault by running the **Get-AzKeyVault** cmdlet. If soft delete is configured properly for the key vault, then the _Soft Delete Enabled_ property returns a value of **True**:

   ```powershell
   Get-AzKeyVault -VaultName <vault name> | fl
   ```

### Add a key to each key vault either by creating or importing a key

There are two ways to add keys to an Azure Key Vault; you can create a key directly in Key Vault, or you can import a key. Creating a key directly in Key Vault is the less complicated method, while importing a key provides total control over how the key is generated. Use the RSA keys. Azure Key Vault doesn't support wrapping and unwrapping with elliptical curve keys.
  
To create a key directly in your key vault, run the [Add-AzKeyVaultKey](/powershell/module/az.keyvault/add-azkeyvaultkey) cmdlet as follows:
  
```powershell
Add-AzKeyVaultKey -VaultName <vault name> -Name <key name> -Destination <HSM|Software> -KeyOps wrapKey,unwrapKey
```

Where:

- *vault name* is the name of the key vault in which you want to create the key.

- *key name* is the name you want to give the new key.

  > [!TIP]
  > Name keys using a similar naming convention as described above for key vaults. This way, in tools that show only the key name, the string is self-describing.
  
If you intend to protect the key with an HSM, ensure that you specify **HSM** as the value of the _Destination_ parameter, otherwise, specify **Software**.

For example,
  
```powershell
Add-AzKeyVaultKey -VaultName Contoso-O365EX-NA-VaultA1 -Name Contoso-O365EX-NA-VaultA1-Key001 -Destination HSM -KeyOps wrapKey,unwrapKey
```

### Check the recovery level of your keys

Microsoft 365 requires that the Azure Key Vault subscription is set to Do Not Cancel and that the keys used by Customer Key have soft delete enabled. You can confirm these settings by looking at the recovery level on your keys.
  
To check the recovery level of a key, in Azure PowerShell, run the Get-AzKeyVaultKey cmdlet as follows:
  
```powershell
(Get-AzKeyVaultKey -VaultName <vault name> -Name <key name>).Attributes
```

If the _Recovery Level_ property returns anything other than a value of **Recoverable+ProtectedSubscription**, you will need to review this article and ensure that you have followed all of the steps to put the subscription on the Do Not Cancel list and that you enabled "soft delete" on each of your key vaults. Next, send a screenshot of the output of `(Get-AzKeyVaultKey -VaultName <vault name> -Name <key name>).Attributes` in email to m365ck@microsoft.com.

### Back up Azure Key Vault

Immediately following creation or any change to a key, back up the key and store copies of the backup, both online and offline. Don't connect offline copies to any network. Instead, store them in a physical safe or commercial storage facility. At least one copy of the backup should be stored in a location that will be accessible if a disaster happens. The backup blobs are the sole means of restoring key material should a Key Vault key be permanently destroyed or otherwise rendered inoperable. Keys that are external to Azure Key Vault and were imported to Azure Key Vault don't qualify as a backup because the metadata necessary for Customer Key to use the key doesn't exist with the external key. Only a backup taken from Azure Key Vault can be used for restore operations with Customer Key. So, it's essential that you make a backup of Azure Key Vault once a key is uploaded or created.
  
To create a backup of an Azure Key Vault key, run the [Backup-AzKeyVaultKey](/powershell/module/az.keyvault/backup-azkeyvaultkey) cmdlet as follows:

```powershell
Backup-AzKeyVaultKey -VaultName <vault name> -Name <key name>
-OutputFile <filename.backup>
```

Ensure that your output file uses the suffix `.backup`.
  
The output file resulting from this cmdlet is encrypted and cannot be used outside of Azure Key Vault. The backup can be restored only to the Azure subscription from which the backup was taken.
  
For example:
  
```powershell
Backup-AzKeyVaultKey -VaultName Contoso-O365EX-NA-VaultA1 -Name Contoso-O365EX-NA-VaultA1-Key001 -OutputFile Contoso-O365EX-NA-VaultA1-Key001-Backup-20170802.backup
```

### Validate Azure Key Vault configuration settings

Performing validation before using keys in a DEP is optional, but highly recommended. In particular, if you use steps to set up your keys and vaults other than the ones described in this topic, you should validate the health of your Azure Key Vault resources before you configure Customer Key.
  
To verify that your keys have get, wrapKey, and unwrapKey operations enabled:
  
Run the [Get-AzKeyVault](/powershell/module/az.keyvault/get-azkeyvault) cmdlet as follows:
  
```powershell
Get-AzKeyVault -VaultName <vault name>
```

In the output, look for the Access Policy and for the Microsoft 365 app ID (GUID) as appropriate. All three operations, get, wrapKey, and unwrapKey, must be shown under Permissions to Keys.
  
If the access policy configuration is incorrect, run the Set-AzKeyVaultAccessPolicy cmdlet as follows:
  
```powershell
Set-AzKeyVaultAccessPolicy -VaultName <vault name> -PermissionsToKeys wrapKey,unwrapKey,get -ServicePrincipalName <Microsoft 365 appID>
```

Example: For the Microsoft 365 Data at Rest Encryption service, replace  *Microsoft 365 appID* with `c066d759-24ae-40e7-a56f-027002b5d3e4`

  ```powershell
  Set-AzKeyVaultAccessPolicy -VaultName Contoso-O365EX-NA-VaultA1 -PermissionsToKeys wrapKey,unwrapKey,get -ServicePrincipalName c066d759-24ae-40e7-a56f-027002b5d3e4
  ```

To verify that an expiration date is not set for your keys, run the [Get-AzKeyVaultKey](/powershell/module/az.keyvault/get-azkeyvault) cmdlet as follows:
  
```powershell
Get-AzKeyVaultKey -VaultName <vault name>
```

An expired key cannot be used by Customer Key and operations attempted with an expired key will fail and possibly result in a service outage. We strongly recommend that keys used with Customer Key do not have an expiration date. An expiration date, once set, cannot be removed, but can be changed to a different date. If a key must be used that has an expiration date set, change the expiration value to 12/31/9999. Keys with an expiration date set to a date other than 12/31/9999 won't pass Microsoft 365 validation.
  
To change an expiration date that has been set to any value other than 12/31/9999, run the [Update-AzKeyVaultKey](/powershell/module/az.keyvault/update-azkeyvaultkey) cmdlet as follows:
  
```powershell
Update-AzKeyVaultKey -VaultName <vault name> -Name <key name> -Expires (Get-Date -Date "12/31/9999")
```

### Obtain the URI for each Azure Key Vault key

Once you've completed all the steps in Azure to set up your key vaults and added your keys, run the following command to get the URI for the key in each key vault. You will need to use these URIs when you create and assign each DEP later, so save this information in a safe place. Remember to run this command once for each key vault.
  
In Azure PowerShell:
  
```powershell
(Get-AzKeyVaultKey -VaultName <vault name>).Id
```

## Set up the Customer Key encryption policy for your tenant

You need to be assigned permissions before you can run these cmdlets. Although this article lists all parameters for the cmdlets, you may not have access to some parameters if they're not included in the permissions assigned to you. To find the permissions required to run any cmdlet or parameter in your organization, see [Find the permissions required to run any Exchange cmdlet](/powershell/exchange/exchange-server/find-exchange-cmdlet-permissions).

### Create policy

```powershell
   New-M365DataAtRestEncryptionPolicy [-Name] <String> -AzureKeyIDs <MultiValuedProperty> [-Description <String>]
```

Description: Enable compliance admin to create a new data encryption policy (DEP) using two AKV root keys. Once created, a policy can then be assigned using Set-M365DataAtRestEncryptionPolicyAssignment cmdlet. Upon first assignment of keys or after you rotate keys, it can take up to 24 hours for the new keys to take effect. If the new DEP takes more than 24 hours to take effect, contact Microsoft.

Example:

```powershell
New-M365DataAtRestEncryptionPolicy -Name "Default_Policy" -AzureKeyIDs "https://contosoWestUSvault01.vault.azure.net/keys/Key_01","https://contosoEastUSvault01.vault.azure.net/keys/Key_02" -Description "Tenant default policy"
```

Parameters:

| Name | Description | Optional (Y/N) |
|----------|----------|---------|
|Name|Friendly name of the data encryption policy|N|
|AzureKeyIDs|Specifies two URI values of the Azure Key Vault keys, separated by a comma, to associate with the data encryption policy|N|
|Description|Description of the data encryption policy|N|

### Assign policy

```powershell
Set-M365DataAtRestEncryptionPolicyAssignment -DataEncryptionPolicy "<Default_PolicyName or Default_PolicyID>"
```

Description:
This cmdlet is used for configuring default Data Encryption Policy. This policy will be used to then encrypt data across all support workloads.

Example:

```powershell
Set-M365DataAtRestEncryptionPolicyAssignment -DataEncryptionPolicy "Default_PolicyName"
```

Parameters:

| Name | Description | Optional (Y/N) |
|----------|----------|---------|
-DataEncryptionPolicy|Specifies the data encryption policy that needs to be assigned; specify either the Policy Name or the Policy ID.|N|

### Modify or Refresh policy

```powershell
Set-M365DataAtRestEncryptionPolicy [-Identity] <M365DataAtRestEncryptionPolicy DataEncryptionPolicyIdParameter> -Refresh [-Enabled <Boolean>] [-Name <String>] [-Description <String>]
```

Description:
The cmdlet can be used either to modify or refresh an existing policy. It can also be used to enable or disable a policy. Upon first assignment of keys or after you rotate keys, it can take up to 24 hours for the new keys to take effect. If the new DEP takes more than 24 hours to take effect, contact Microsoft.

Examples:

Disable a data encryption policy.

```powershell
Set-M365DataAtRestEncryptionPolicy -Identity "NAM Policy" -Enabled $false
```

Refresh a data encryption policy.

```powershell
Set-M365DataAtRestEncryptionPolicy -Identity "EUR Policy" -Refresh
```

Parameters:

| Name | Description | Optional (Y/N) |
|----------|----------|---------|
|-Identity|Specifies the data encryption policy that you want to modify.|N|
|-Refresh|Use the Refresh switch to update the data encryption policy after you rotate any of the associated keys in the Azure Key Vault. You don't need to specify a value with this switch.|Y|
|-Enabled|The Enabled parameter enables or disables the data encryption policy. Before you disable a policy, you must unassign it from your tenant. Valid values are:</br > $true: The policy is enabled</br > $false: The policy is disabled.|Y|
|-Name|The Name parameter specifies the unique name for the data encryption policy.|Y|
|-Description|The Description parameter specifies an optional description for the data encryption policy.|Y|

### Get policy details

```powershell
Get-M365DataAtRestEncryptionPolicy [-Identity] <M365DataAtRestEncryptionPolicy DataEncryptionPolicyIdParameter>
```

Description: This cmdlet lists all of M365DataAtRest encryption policies that are created for the tenant or details about a specific policy.

Examples:

This example returns a summary list of M365DatAtRest Encryption policies in the organization.

```powershell
Get-M365DataAtRestEncryptionPolicy
```

This example returns detailed information for the data encryption policy named "NAM Policy".

```powershell
Get-M365DataAtRestEncryptionPolicy -Identity "NAM Policy"
```

Parameters:

| Name | Description | Optional (Y/N) |
|----------|----------|---------|
|-Identity|Specifies the data encryption policy that you want to list the details for.|Y|

### Get policy assignment info

```powershell
Get-M365DataAtRestEncryptionPolicyAssignment
```

Description:
This cmdlet lists the policy that’s currently assigned to the tenant.

## Offboarding from Customer Key at the tenant level

If you need to revert to Microsoft-managed keys, you can. When you offboard, your data is re-encrypted using default encryption supported by each individual workload. For example, Exchange Online supports default encryption using Microsoft-managed keys.

If you decide to offboard your tenant from Customer Key at the tenant level, email [m365ck@microsoft.com](mailto:m365ck@microsoft.com) with a request to "disable" the service for the tenant.

> [!IMPORTANT]
> Offboarding is not the same as a data purge. A data purge permanently crypto-deletes your organization's data from Microsoft 365, offboarding does not. You can't perform a data purge for a tenant-level policy. For information about data purge path, see [Revoke your keys and start the data purge path process](customer-key-manage.md#revoke-your-keys-and-start-the-data-purge-path-process).

## About the availability key

For information about the availability key, see [Learn about the availability key](customer-key-availability-key-understand.md).

## Key rotation

For information about rotating or rolling keys that you use with Customer Key, see [Roll or rotate a Customer Key or an availability key](customer-key-availability-key-roll.md). When you update the DEP to use the new version of the keys, you'll run the Set-M365DataAtRestEncryptionPolicy cmdlet as described earlier in this article.

## Related articles

- [Service encryption with Customer Key](customer-key-overview.md)

- [Roll or rotate a Customer Key or an availability key](customer-key-availability-key-roll.md)

- [Learn about the availability key](customer-key-availability-key-understand.md)

- [Service Encryption](office-365-service-encryption.md)
