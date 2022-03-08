---
title: "Set up Customer Key"
ms.author: krowley
author: kccross
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
description: "Learn how to set up Customer Key for Microsoft 365."
---

# Set up Customer Key

With Customer Key, you control your organization's encryption keys and then configure Microsoft 365 to use them to encrypt your data at rest in Microsoft's data centers. In other words, Customer Key allows customers to add a layer of encryption that belongs to them, with their keys.

Set up Azure before you can use Customer Key for Office 365. This article describes the steps you need to follow to create and configure the required Azure resources and then provides the steps for setting up Customer Key in Office 365. After you set up Azure, you determine which policy, and therefore, which keys, to assign to encrypt data across various Microsoft 365 workloads in your organization. For more information about Customer Key, or for a general overview, see [Service encryption with Customer Key in Office 365](customer-key-overview.md).
  
> [!IMPORTANT]
> We strongly recommend that you follow the best practices in this article. These are called out as **TIP** and **IMPORTANT**. Customer Key gives you control over root encryption keys whose scope can be as large as your entire organization. This means that mistakes made with these keys can have a broad impact and may result in service interruptions or irrevocable loss of your data.
  
## Before you set up Customer Key

Before you get started, ensure that you have the appropriate Azure subscriptions and licensing for your organization. Use paid Azure Subscriptions using either an Enterprise Agreement or a Cloud Service Provider. Credit Card based payments are not accepted. Approve and set up the account needs for invoicing. Subscriptions you got through Free, Trial, Sponsorships, MSDN Subscriptions, and those under Legacy Support are not eligible.

Office 365 E5, Microsoft 365 E5, Microsoft 365 E5 Compliance, and Microsoft 365 E5 Information Protection & Governance SKUs offer Customer Key. Office 365 Advanced Compliance SKU is no longer available for procuring new licenses. Existing Office 365 Advanced Compliance licenses will continue to be supported.

To understand the concepts and procedures in this article, review the [Azure Key Vault](/azure/key-vault/) documentation. Also, become familiar with the terms used in Azure, for example, [Azure AD tenant](/previous-versions/azure/azure-services/jj573650(v=azure.100)#what-is-an-azure-ad-tenant).
  
If you need more support beyond the documentation, contact Microsoft Consulting Services (MCS), Premier Field Engineering (PFE), or a Microsoft partner for assistance. To provide feedback on Customer Key, including the documentation, send your ideas, suggestions, and perspectives to customerkeyfeedback@microsoft.com.
  
## Overview of steps to set up Customer Key

To set up Customer Key, complete these tasks in the listed order. The rest of this article provides detailed instructions for each task, or links out to more information for each step in the process.
  
**In Azure and Microsoft FastTrack:**
  
You'll complete most of these tasks by remotely connecting to Azure PowerShell. For best results, use version 4.4.0 or later of Azure PowerShell.
  
- [Create two new Azure subscriptions](#create-two-new-azure-subscriptions)

- [Submit a request to activate Customer Key for Office 365](#submit-a-request-to-activate-customer-key-for-office-365)
 
- [Register Azure subscriptions to use a mandatory retention period](#register-azure-subscriptions-to-use-a-mandatory-retention-period)

  This registration process will take five business days to complete.

- [Create a premium Azure Key Vault in each subscription](#create-a-premium-azure-key-vault-in-each-subscription)

- [Assign permissions to each key vault](#assign-permissions-to-each-key-vault)

- [Make sure soft delete is enabled on your key vaults](#make-sure-soft-delete-is-enabled-on-your-key-vaults)

- [Add a key to each key vault either by creating or importing a key](#add-a-key-to-each-key-vault-either-by-creating-or-importing-a-key)

- [Check the recovery level of your keys](#check-the-recovery-level-of-your-keys)

- [Back up Azure Key Vault](#back-up-azure-key-vault)

- [Validate Azure Key Vault configuration settings](#validate-azure-key-vault-configuration-settings)

- [Obtain the URI for each Azure Key Vault key](#obtain-the-uri-for-each-azure-key-vault-key)
  
## Complete tasks in Azure Key Vault and Microsoft FastTrack for Customer Key

Complete these tasks in Azure Key Vault. You'll need to complete these steps for all DEPs you use with Customer Key.
  
### Create two new Azure subscriptions

Customer Key requires two Azure subscriptions. As a best practice, Microsoft recommends that you create new Azure subscriptions for use with Customer Key. Azure Key Vault keys can only be authorized for applications in the same Azure Active Directory (Microsoft Azure Active Directory) tenant, you must create the new subscriptions using the same Azure AD tenant used with your organization where the DEPs will be assigned. For example, using your work or school account that has global administrator privileges in your organization. For detailed steps, see [Sign up for Azure as an organization](/azure/active-directory/fundamentals/sign-up-organization).
  
> [!IMPORTANT]
> Customer Key requires two keys for each data encryption policy (DEP). In order to achieve this, you must create two Azure subscriptions. As a best practice, Microsoft recommends that you have separate members of your organization configure one key in each subscription. You should only use these Azure subscriptions to administer encryption keys for Office 365. This protects your organization in case one of your operators accidentally, intentionally, or maliciously deletes or otherwise mismanages the keys for which they are responsible.

There is no practical limit to the number of Azure subscriptions that you can create for your organization. Following these best practices will minimize the impact of human error while helping to manage the resources used by Customer Key.
  
### Submit a request to activate Customer Key for Office 365

Once you've created the two new Azure subscriptions, you'll need to submit the appropriate Customer Key offer request in the [Microsoft FastTrack portal](https://fasttrack.microsoft.com/). The selections that you make in the offer form about the authorized designations within your organization are critical and necessary for completion of Customer Key registration. The officers in those selected roles within your organization ensure the authenticity of any request to revoke and destroy all keys used with a Customer Key data encryption policy. You'll need to do this step once for each Customer Key DEP type that you intend to use for your organization.

**The FastTrack team doesn't provide assistance with Customer Key. Office 365 simply uses the FastTrack portal to allow you to submit the form and to help us track the relevant offers for Customer Key. Once you've submitted the FastTrack request, reach out to the corresponding Customer Key onboarding team to start the onboarding process.**
  
To submit an offer to activate Customer Key, complete these steps:
  
1. Using a work or school account that has global administrator permissions in your organization, sign in to the [Microsoft FastTrack portal](https://fasttrack.microsoft.com/).

2. Once you're logged in, select the appropriate domain.

3. For the selected domain, choose **Request services** from the top navigation bar, and review the list of available offers.

4. Choose the information card for the offer that applies to you:

   - **Multiple Microsoft 365 workloads:** Choose the **Request encryption key help for Microsoft 365** offer.

   - **Exchange Online and Skype for Business:** Choose the **Request encryption key help for Exchange** offer.

   - **SharePoint Online, OneDrive, and Teams files:** Choose the **Request encryption key help for SharePoint and OneDrive for Business** offer.

5. Once you've reviewed the offer details, choose **Continue to step 2**.

6. Fill out all applicable details and requested information on the offer form. Pay particular attention to your selections for which officers of your organization you want to authorize to approve the permanent and irreversible destruction of encryption keys and data. Once you've completed the form, choose **Submit**.

### Register Azure subscriptions to use a mandatory retention period

The temporary or permanent loss of root encryption keys can be disruptive or even catastrophic to service operation and can result in data loss. For this reason, the resources used with Customer Key require strong protection. All the Azure resources that are used with Customer Key offer protection mechanisms beyond the default configuration. You can tag or register Azure subscriptions for a *mandatory retention period*. A mandatory retention period prevents immediate and irrevocable cancellation of your Azure subscription. The steps required to register Azure subscriptions for a mandatory retention period require collaboration with the Microsoft 365 team. This process will take five business days to complete. Previously, mandatory retention period was sometimes referred to as "Do Not Cancel".
  
Before contacting the Microsoft 365 team, you must do the following steps for each Azure subscription that you use with Customer Key. Ensure that you have the [Azure PowerShell Az](/powershell/azure/new-azureps-module-az) module installed before you start.
  
1. Sign in with Azure PowerShell. For instructions, see [Sign in with Azure PowerShell](/powershell/azure/authenticate-azureps).

2. Run the Register-AzProviderFeature cmdlet to register your subscriptions to use a mandatory retention period. Complete this action for each subscription.

   ```powershell
   Set-AzContext -SubscriptionId <SubscriptionId>
   Register-AzProviderFeature -FeatureName mandatoryRetentionPeriodEnabled -ProviderNamespace Microsoft.Resources
   ```

3. Contact Microsoft to complete the process.

   - For enabling Customer Key for assigning DEP to individual Exchange Online mailboxes, contact [exock@microsoft.com](mailto:exock@microsoft.com).

   - For enabling Customer Key for assigning DEPs to encrypt SharePoint Online and OneDrive for Business content (including Teams files) for all tenant users, contact [spock@microsoft.com](mailto:spock@microsoft.com).

   - For enabling Customer Key for assigning DEPs to encrypt content across multiple Microsoft 365 workloads (Exchange Online, Teams, MIP EDM) for all tenant users, contact [m365-ck@service.microsoft.com](mailto:m365-ck@service.microsoft.com).

   - Include the following information in your email:

     **Subject**: Customer Key for \<*Your tenant's fully qualified domain name*\>

     **Body**:
     Include the subscription IDs for which you want to complete the mandatory retention period  and the output of Get-AzProviderFeature for each subscription.

     The Service Level Agreement (SLA) for completion of this process is five business days once Microsoft has been notified (and verified) that you have registered your subscriptions to use a mandatory retention period.

4. Once you receive notification from Microsoft that registration is complete, verify the status of your registration by running the Get-AzProviderFeature command as follows. If verified, the Get-AzProviderFeature command returns a value of **Registered** for the **Registration State** property. Complete this step for each subscription.

   ```powershell
   Set-AzContext -SubscriptionId <SubscriptionId>
   Get-AzProviderFeature -ProviderNamespace Microsoft.Resources -FeatureName mandatoryRetentionPeriodEnabled
   ```

5. To complete the process, run the Register-AzResourceProvider command. Complete this step for each subscription.

   ```powershell
   Set-AzContext -SubscriptionId <SubscriptionId>
   Register-AzResourceProvider -ProviderNamespace Microsoft.KeyVault
   ```

### Create a premium Azure Key Vault in each subscription

The steps to create a key vault are documented in [Getting Started with Azure Key Vault](/azure/key-vault/general/overview), which guides you through installing and launching Azure PowerShell, connecting to your Azure subscription, creating a resource group, and creating a key vault in that resource group.

SharePoint Online (SPO) uses Azure Key Vaults where customer store the keys that they want use to encrypt their documents and files in SharePoint Online and OneDrive for Business. 

 Azure Key Vault provides two types of containers, 


1) Premium key Vaults for storing and managing cryptographic keys, secrets, certificates and storage account keys. These come in Standard and Premium vaults. These vaults are certified to FIPS 140-2 Level-2.   

2) Managed HSM pool for storing and managing HSM-backed cryptographic keys. Managed HSMs are certified to FIPS 140-2 Level-2. 

 SPO supports both Standard/Premium vaults as well as Managed HSM.
  
When you create a key vault, you must choose a SKU: either Standard or Premium. The Standard SKU allows Azure Key Vault keys to be protected with software - there's no Hardware Security Module (HSM) key protection - and the Premium SKU allows the use of HSMs for protection of Key Vault keys. Customer Key accepts key vaults that use either SKU, though Microsoft strongly recommends that you use only the Premium SKU. The cost of operations with keys of either type is the same, so the only difference in cost is the cost per month for each HSM-protected key. See [Key Vault pricing](https://azure.microsoft.com/pricing/details/key-vault/) for details.
  
> [!IMPORTANT]
> Use the Premium SKU key vaults and HSM-protected keys for production data, and only use Standard SKU key vaults and keys for testing and validation purposes.
  
For each Microsoft 365 service with which you will use Customer Key, create a key vault in each of the two Azure subscriptions that you created. For example, to enable Customer Key to use DEPs for Exchange Online, SharePoint Online, and multi-workload scenarios, you'll create three pairs of key vaults.
  
Use a naming convention for key vaults that reflects the intended use of the DEP with which you will associate the vaults. See the Best Practices section below for naming convention recommendations.
  
Create a separate, paired set of vaults for each data encryption policy. For Exchange Online, the scope of a data encryption policy is chosen by you when you assign the policy to mailbox. A mailbox can have only one policy assigned, and you can create up to 50 policies. The scope of a SharePoint Online policy includes all of the data within an organization in a geographic location, or _geo_. The scope for a multi-workload policy includes all of the data across the supported workloads for all users.

The creation of key vaults also requires the creation of Azure resource groups, since key vaults need storage capacity (though small) and Key Vault logging, if enabled, also generates stored data. As a best practice Microsoft recommends using separate administrators to manage each resource group, with the administration that's aligned with the set of administrators that will manage all related Customer Key resources.
  
> [!IMPORTANT]
> To maximize availability, place your key vaults in regions close to your Microsoft 365 service For example, if your Exchange Online organization is in North America, place your key vaults in North America. If your Exchange Online organization is in Europe, place your key vaults in Europe.
>
> Use a common prefix for key vaults, and include an abbreviation of the use and scope of the key vault and keys (e.g., for the Contoso SharePoint service where the vaults will be located in North America, a possible pair of names is Contoso-CK-SP-NA-VaultA1 and Contoso-CK-SP-NA-VaultA2. Vault names are globally unique strings within Azure, so you may need to try variations of your desired names in case the desired names are already claimed by other Azure customers. As of July 2017 vault names cannot be changed, so a best practice is to have a written plan for setup and use a second person to verify the plan is executed correctly.
>
> If possible, create your vaults in non-paired regions. Paired Azure regions provide high availability across service failure domains. Therefore, regional pairs can be thought of as each other's backup region. This means that an Azure resource that is placed in one region is automatically gaining fault tolerance through the paired region. For this reason, choosing regions for two vaults used in a data encryption policy where the regions are paired means that only a total of two regions of availability are in use. Most geographies only have two regions, so it's not yet possible to select non-paired regions. If possible, choose two non-paired regions for the two vaults used with a data encryption policy. This benefits from a total of four regions of availability. For more information, see [Business continuity and disaster recovery (BCDR): Azure Paired Regions](/azure/best-practices-availability-paired-regions) for a current list of regional pairs.
  
### Assign permissions to each key vault

You'll need to define three separate sets of permissions for each key vault, depending on your implementation. For example, you will need to define one set of permissions for each of the following:
  
- **Key vault administrators** that do day-to-day management of your key vault for your organization. These tasks include backup, create, get, import, list, and restore.

  > [!IMPORTANT]
  > The set of permissions assigned to key vault administrators does not include the permission to delete keys. This is intentional and an important practice. Deleting encryption keys is not typically done, since doing so permanently destroys data. As a best practice, do not grant this permission to key vault administrators by default. Instead, reserve this for key vault contributors and only assign it to an administrator on a short term basis once a clear understanding of the consequences is understood.
  
  To assign these permissions to a user in your organization, sign in to your Azure subscription with Azure PowerShell. For instructions, see [Sign in with Azure PowerShell](/powershell/azure/authenticate-azureps).

- Run the Set-AzKeyVaultAccessPolicy cmdlet to assign the necessary permissions.

   ```powershell
   Set-AzKeyVaultAccessPolicy -VaultName <vault name> -UserPrincipalName <UPN of user> -PermissionsToKeys create,import,list,get,backup,restore
   ```

   For example:

   ```powershell
   Set-AzKeyVaultAccessPolicy -VaultName Contoso-CK-EX-NA-VaultA1 -UserPrincipalName alice@contoso.com -PermissionsToKeys create,import,list,get,backup,restore
   ```

- **Key vault contributors** that can change permissions on the Azure Key Vault itself. You'll need to change these permissions as employees leave or join your team. In the rare situation that the key vault administrators legitimately need permission to delete or restore a key you'll also need to change the permissions. This set of key vault contributors needs to be granted the **Contributor** role on your key vault. You can assign this role by using Azure Resource Manager. For detailed steps, see [Use Role-Based Access Control to manage access to your Azure subscription resources](/azure/active-directory/role-based-access-control-configure). The administrator who creates a subscription has this access implicitly, and the ability to assign other administrators to the Contributor role.

- **Permissions to Microsoft 365 applications** for every key vault that you use for Customer Key, you need to give wrapKey, unwrapKey, and get permissions to the corresponding Microsoft 365 Service Principal. 

  To give permission to Microsoft 365 Service Principal, run the **Set-AzKeyVaultAccessPolicy** cmdlet using the following syntax:

   ```powershell
   Set-AzKeyVaultAccessPolicy -VaultName <vault name> -PermissionsToKeys wrapKey,unwrapKey,get -ServicePrincipalName <Office 365 appID>
   ```

   Where:

   - *vault name* is the name of the key vault you created.
   - For Exchange Online and Skype for Business, replace  *Office 365 appID* with `00000002-0000-0ff1-ce00-000000000000`
   - For SharePoint Online, OneDrive for Business, and Teams files, replace  *Office 365 appID* with `00000003-0000-0ff1-ce00-000000000000`
   - For multi-workload policy (Exchange, Teams, MIP EDM) that applies to all tenant users, replace *Office 365 appID* with `c066d759-24ae-40e7-a56f-027002b5d3e4`

  Example: Setting permissions for Exchange Online and Skype for Business:

   ```powershell
   Set-AzKeyVaultAccessPolicy -VaultName Contoso-CK-EX-NA-VaultA1 -PermissionsToKeys wrapKey,unwrapKey,get -ServicePrincipalName 00000002-0000-0ff1-ce00-000000000000
   ```

  Example: Setting permissions for SharePoint Online, OneDrive for Business, and Teams files:

   ```powershell
   Set-AzKeyVaultAccessPolicy -VaultName Contoso-CK-SP-NA-VaultA1 -PermissionsToKeys wrapKey,unwrapKey,get -ServicePrincipalName 00000003-0000-0ff1-ce00-000000000000
   ```

### Make sure soft delete is enabled on your key vaults

When you can quickly recover your keys, you are less likely to experience an extended service outage due to accidentally or maliciously deleted keys. Enable this configuration, referred to as Soft Delete, before you can use your keys with Customer Key. Enabling Soft Delete allows you to recover keys or vaults within 90 days of deletion without having to restore them from backup.
  
To enable Soft Delete on your key vaults, complete these steps:
  
1. Sign in to your Azure subscription with Windows PowerShell. For instructions, see [Sign in with Azure PowerShell](/powershell/azure/authenticate-azureps).

2. Run the [Get-AzKeyVault](/powershell/module/az.keyvault/get-azkeyvault) cmdlet. In this example, *vault name* is the name of the key vault for which you're enabling soft delete:

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

There are two ways to add keys to an Azure Key Vault; you can create a key directly in Key Vault, or you can import a key. Creating a key directly in Key Vault is less complicated, but importing a key provides total control over how the key is generated. Use the RSA keys. Azure Key Vault doesn't support wrapping and unwrapping with elliptical curve keys.
  
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

For example:
  
```powershell
Add-AzKeyVaultKey -VaultName Contoso-CK-EX-NA-VaultA1 -Name Contoso-CK-EX-NA-VaultA1-Key001 -Destination HSM -KeyOps wrapKey,unwrapKey
```

To import a key directly into your key vault, you need to have a nCipher nShield Hardware Security Module.
  
Some organizations prefer this approach to establish the provenance of their keys, and then this method also provides the following attestations:
  
- The toolset used for import includes attestation from nCipher that the Key Exchange Key (KEK) that is used to encrypt the key you generate is not exportable and is generated inside a genuine HSM that was manufactured by nCipher.

- The toolset includes attestation from nCipher that the Azure Key Vault security world was also generated on a genuine HSM manufactured by nCipher. This attestation proves that Microsoft is also using genuine nCipher hardware.

Check with your security group to determine if the above attestations are required. For detailed steps to create a key on-premises and import it into your key vault, see [How to generate and transfer HSM-protected keys for Azure Key Vault](/azure/key-vault/keys/hsm-protected-keys). Use the Azure instructions to create a key in each key vault.
  
### Check the recovery level of your keys

Microsoft 365 requires that the Azure Key Vault subscription is set to Do Not Cancel and that the keys used by Customer Key have soft delete enabled. You can confirm you subscriptions settings by looking at the recovery level on your keys.
  
To check the recovery level of a key, in Azure PowerShell, run the Get-AzKeyVaultKey cmdlet as follows:
  
```powershell
(Get-AzKeyVaultKey -VaultName <vault name> -Name <key name>).Attributes
```

If the _Recovery Level_ property returns anything other than a value of **Recoverable+ProtectedSubscription**, ensure that you have put the subscription on the Do Not Cancel list and that you have soft delete enabled on each of your key vaults.
  
### Back up Azure Key Vault

Immediately following creation or any change to a key, perform a backup and store copies of the backup, both online and offline. Don't connect offline copies to any network. Instead store them in an offline location, such as in a physical safe or commercial storage facility. At least one copy of the backup should be stored in a location that will be accessible if a disaster occurs. The backup blobs are the sole means of restoring key material should a Key Vault key be permanently destroyed or otherwise rendered inoperable. Keys that are external to Azure Key Vault and imported to Azure Key Vault don't qualify as a backup because the metadata necessary for Customer Key to use the key doesn't exist with the external key. Only a backup taken from Azure Key Vault can be used for restore operations with Customer Key. Therefore, you must create a backup of Azure Key Vault after you upload or create a key.
  
To create a backup of an Azure Key Vault key, run the [Backup-AzKeyVaultKey](/powershell/module/az.keyvault/backup-azkeyvaultkey) cmdlet as follows:

```powershell
Backup-AzKeyVaultKey -VaultName <vault name> -Name <key name>
-OutputFile <filename.backup>
```

Ensure that your output file uses the suffix `.backup`.
  
The output file resulting from this cmdlet is encrypted and cannot be used outside of Azure Key Vault. The backup can be restored only to the Azure subscription from which the backup was taken.
  
> [!TIP]
> For the output file, choose a combination of your vault name and key name. This will make the file name self-describing. It will also ensure that backup file names do not collide.
  
For example:
  
```powershell
Backup-AzKeyVaultKey -VaultName Contoso-CK-EX-NA-VaultA1 -Name Contoso-CK-EX-NA-VaultA1-Key001 -OutputFile Contoso-CK-EX-NA-VaultA1-Key001-Backup-20170802.backup
```

### Validate Azure Key Vault configuration settings

Validating before using keys in a DEP is optional, but highly recommended. If you use steps to set up your keys and vaults other than the ones described in this article, validate the health of your Azure Key Vault resources before you configure Customer Key.
  
To verify that your keys have `get`, `wrapKey`, and `unwrapKey` operations enabled:
  
Run the [Get-AzKeyVault](/powershell/module/az.keyvault/get-azkeyvault) cmdlet as follows:
  
```powershell
Get-AzKeyVault -VaultName <vault name>
```

In the output, look for the Access Policy and for the Exchange Online identity (GUID) or the SharePoint Online identity (GUID) as appropriate. All three of the above permissions must be shown under Permissions to Keys.
  
If the access policy configuration is incorrect, run the Set-AzKeyVaultAccessPolicy cmdlet as follows:
  
```powershell
Set-AzKeyVaultAccessPolicy -VaultName <vault name> -PermissionsToKeys wrapKey,unwrapKey,get -ServicePrincipalName <Office 365 appID>
```

For example, for Exchange Online and Skype for Business:
  
```powershell
Set-AzKeyVaultAccessPolicy -VaultName Contoso-CK-EX-NA-VaultA1 
-PermissionsToKeys wrapKey,unwrapKey,get -ServicePrincipalName 00000002-0000-0ff1-ce00-000000000000
```

For example, for SharePoint Online and OneDrive for Business:
  
```powershell
Set-AzKeyVaultAccessPolicy -VaultName Contoso-CK-SP-NA-VaultA1
-PermissionsToKeys wrapKey,unwrapKey,get -ServicePrincipalName 00000003-0000-0ff1-ce00-000000000000
```

To verify that an expiration date isn't set for your keys, run the [Get-AzKeyVaultKey](/powershell/module/az.keyvault/get-azkeyvault) cmdlet as follows:
  
```powershell
Get-AzKeyVaultKey -VaultName <vault name>
```

Customer Key can't use an expired key. Operations attempted with an expired key will fail, and possibly result in a service outage. We strongly recommend that keys used with Customer Key don't have an expiration date. An expiration date, once set, cannot be removed, but can be changed to a different date. If a key must be used that has an expiration date set, change the expiration value to 12/31/9999. Keys with an expiration date set to a date other than 12/31/9999 won't pass Microsoft 365 validation.
  
To change an expiration date that has been set to any value other than 12/31/9999, run the [Update-AzKeyVaultKey](/powershell/module/az.keyvault/update-azkeyvaultkey) cmdlet as follows:
  
```powershell
Update-AzKeyVaultKey -VaultName <vault name> -Name <key name> -Expires (Get-Date -Date "12/31/9999")
```

> [!CAUTION]
> Don't set expiration dates on encryption keys you use with Customer Key.
  
### Obtain the URI for each Azure Key Vault key

Once you've set up your key vaults and added your keys, run the following command to get the URI for the key in each key vault. You'll use these URIs when you create and assign each DEP later, so save this information in a safe place. Run this command once for each key vault.
  
In Azure PowerShell:
  
```powershell
(Get-AzKeyVaultKey -VaultName <vault name>).Id
```

## Next steps

Once you've completed the steps in this article, you're ready to create and assign DEPs. For instructions, see [Manage Customer Key](customer-key-manage.md).

## Related articles

- [Service encryption with Customer Key](customer-key-overview.md)

- [Manage Customer Key](customer-key-manage.md)

- [Roll or rotate a Customer Key or an availability key](customer-key-availability-key-roll.md)

- [Learn about the availability key](customer-key-availability-key-understand.md)

- [Service Encryption](office-365-service-encryption.md)
