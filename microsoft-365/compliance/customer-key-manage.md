---
title: "Manage Customer Key"
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 02/05/2020
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
description: "After you set up Customer Key, learn how to manage it by restoring AKV keys, and managing permissions and your data encryption policies."
---

# Manage Customer Key

After you've set up Customer Key for Office 365, you'll need to create and assign one or more data encryption policies (DEP). Once you've assigned your DEPs, you can manage your keys as described in this article. Learn more about Customer Key in the related topics.

## Create a DEP for use with multiple workloads for all tenant users

Before you begin, ensure that you've completed the tasks required to set up Azure Key Vault. See [Complete tasks in Azure Key Vault and Microsoft FastTrack for Customer Key](#complete-tasks-in-azure-key-vault-and-microsoft-fasttrack-for-customer-key) for information.

To create a multi-workload DEP, follow these steps:
  
1. On your local computer, using a work or school account that has global administrator or compliance admin permissions in your organization, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) in a Windows PowerShell window.

2. To create a DEP, use the New-M365DataAtRestEncryptionPolicy cmdlet by typing the following command.

   ```powershell
   New-M365DataAtRestEncryptionPolicy -Name <PolicyName> -AzureKeyIDs <KeyVaultURI1, KeyVaultURI2> [-Description <String>]
   ```

   Where:

   - *PolicyName* is the name you want to use for the policy. Names can't contain spaces. For example, Contoso_Global.

   - *KeyVaultURI1* is the URI for the first key in the policy. For example, <https://contosoWestUSvault1.vault.azure.net/keys/Key_01>.

   - *KeyVaultURI2* is the URI for the second key in the policy. For example, <https://contosoCentralUSvault1.vault.azure.net/keys/Key_02>. Separate the two URIs by a comma and a space.

   - *Policy Description* is a user-friendly description of the policy that will help you remember what the policy is for. You can include spaces in the description. For example, "Root policy for multiple workloads for all users in the tenant.".

Example:

```powershell
New-M365DataAtRestEncryptionPolicy -Name "Contoso_Global" -AzureKeyIDs "https://contosoWestUSvault1.vault.azure.net/keys/Key_01","https://contosoCentralUSvault1.vault.azure.net/keys/Key_02" -Description "Policy for multiple workloads for all users in the tenant."
```

### Assign multi-workload policy

Assign the DEP by using the Set-M365DataAtRestEncryptionPolicyAssignment cmdlet. Once you assign the policy, Microsoft 365 encrypts the data with the key identified in the DEP.

```powershell
Set-M365DataAtRestEncryptionPolicyAssignment -DataEncryptionPolicy <PolicyName or ID>
```

 Where:

- *PolicyName* is the name of the policy. For example, Contoso_Global.
Description:

Example:

```powershell
Set-M365DataAtRestEncryptionPolicyAssignment -DataEncryptionPolicy "Contoso_Global"
```

## Create a DEP for use with Exchange Online mailboxes

Before you begin, ensure that you've completed the tasks required to set up Azure Key Vault. See [Complete tasks in Azure Key Vault and Microsoft FastTrack for Customer Key](#complete-tasks-in-azure-key-vault-and-microsoft-fasttrack-for-customer-key) for information. You'll complete these steps by remotely connecting to Exchange Online with Windows PowerShell.

A DEP is associated with a set of keys stored in Azure Key Vault. You assign a DEP to a mailbox in Microsoft 365. Microsoft 365 will then use the keys identified in the policy to encrypt the mailbox. To create the DEP, you need the Key Vault URIs you obtained earlier. See [Obtain the URI for each Azure Key Vault key](#obtain-the-uri-for-each-azure-key-vault-key) for instructions.

Remember! When you create a DEP, you specify two keys in two different Azure Key Vaults. Create these keys in two separate Azure regions to ensure geo-redundancy.

To create a DEP to use with a mailbox, follow these steps:
  
1. On your local computer, using a work or school account that has global administrator or Exchange Online admin permissions in your organization, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) in a Windows PowerShell window.

2. To create a DEP, use the New-DataEncryptionPolicy cmdlet by typing the following command.

   ```powershell
   New-DataEncryptionPolicy -Name <PolicyName> -Description "Policy Description" -AzureKeyIDs <KeyVaultURI1>, <KeyVaultURI2>
   ```

   Where:

   - *PolicyName* is the name you want to use for the policy. Names can't contain spaces. For example, USA_mailboxes.

   - *Policy Description* is a user-friendly description of the policy that will help you remember what the policy is for. You can include spaces in the description. For example, "Root key for mailboxes in USA and its territories".

   - *KeyVaultURI1* is the URI for the first key in the policy. For example, <https://contoso_EastUSvault01.vault.azure.net/keys/USA_key_01>.

   - *KeyVaultURI2* is the URI for the second key in the policy. For example, <https://contoso_EastUS2vault01.vault.azure.net/keys/USA_Key_02>. Separate the two URIs by a comma and a space.

   Example:
  
   ```powershell
   New-DataEncryptionPolicy -Name USA_mailboxes -Description "Root key for mailboxes in USA and its territories" -AzureKeyIDs https://contoso_EastUSvault02.vault.azure.net/keys/USA_key_01, https://contoso_CentralUSvault02.vault.azure.net/keys/USA_Key_02
   ```

For detailed syntax and parameter information, see [New-DataEncryptionPolicy](/powershell/module/exchange/new-data-encryptionpolicy).

### Assign a DEP to a mailbox

Assign the DEP to a mailbox by using the Set-Mailbox cmdlet. Once you assign the policy, Microsoft 365 can encrypt the mailbox with the key identified in the DEP.
  
```powershell
Set-Mailbox -Identity <MailboxIdParameter> -DataEncryptionPolicy <PolicyName>
```

Where *MailboxIdParameter* specifies a user mailbox. For more information about the Set-Mailbox cmdlet, see [Set-Mailbox](/powershell/module/exchange/set-mailbox).

In hybrid environments, you can assign a DEP to the on-premises mailbox data that is synchronized into your Exchange Online tenant. To assign a DEP to this synchronized mailbox data, you'll use the Set-MailUser cmdlet. For more information about mailbox data in the hybrid environment, see [on-premises mailboxes using Outlook for iOS and Android with hybrid Modern Authentication](/exchange/clients/outlook-for-ios-and-android/use-hybrid-modern-auth).

```powershell
Set-MailUser -Identity <MailUserIdParameter> -DataEncryptionPolicy <PolicyName>
```

Where *MailUserIdParameter* specifies a mail user (also known as a mail-enabled user). For more information about the Set-MailUser cmdlet, see [Set-MailUser](/powershell/module/exchange/set-mailuser).

## Create a DEP for use with SharePoint Online, OneDrive for Business, and Teams files

Before you begin, ensure that you've completed the tasks required to set up Azure Key Vault. See [Complete tasks in Azure Key Vault and Microsoft FastTrack for Customer Key](#complete-tasks-in-azure-key-vault-and-microsoft-fasttrack-for-customer-key) for information.
  
To set up Customer Key for SharePoint Online, OneDrive for Business, and Teams files you complete these steps by remotely connecting to SharePoint Online with Windows PowerShell.
  
You associate a DEP with a set of keys stored in Azure Key Vault. You apply a DEP to all of your data in one geographic location, also called a geo. If you use the multi-geo feature of Office 365, you can create one DEP per geo with the capability to use different keys per geo. If you aren't using multi-geo, you can create one DEP in your organization for use with SharePoint Online, OneDrive for Business, and Teams files. Microsoft 365 uses the keys identified in the DEP to encrypt your data in that geo. To create the DEP, you need the Key Vault URIs you obtained earlier. See [Obtain the URI for each Azure Key Vault key](#obtain-the-uri-for-each-azure-key-vault-key) for instructions.
  
Remember! When you create a DEP, you specify two keys in two different Azure Key Vaults. Create these keys in two separate Azure regions to ensure geo-redundancy.
  
To create a DEP, you need to remotely connect to SharePoint Online by using Windows PowerShell.
  
1. On your local computer, using a work or school account that has global administrator permissions in your organization, [Connect to SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?preserve-view=true&view=sharepoint-ps).

2. In the Microsoft SharePoint Online Management Shell, run the Register-SPODataEncryptionPolicy cmdlet as follows:

   ```powershell
   Register-SPODataEncryptionPolicy -Identity <adminSiteCollectionURL> -PrimaryKeyVaultName <PrimaryKeyVaultName> -PrimaryKeyName <PrimaryKeyName> -PrimaryKeyVersion <PrimaryKeyVersion> -SecondaryKeyVaultName <SecondaryKeyVaultName> -SecondaryKeyName <SecondaryKeyName> -SecondaryKeyVersion <SecondaryKeyVersion>
   ```

   Example:
  
   ```powershell
   Register-SPODataEncryptionPolicy -Identity https://contoso.sharepoint.com -PrimaryKeyVaultName 'stageRG3vault' -PrimaryKeyName 'SPKey3' -PrimaryKeyVersion 'f635a23bd4a44b9996ff6aadd88d42ba' -SecondaryKeyVaultName 'stageRG5vault' -SecondaryKeyName 'SPKey5' -SecondaryKeyVersion '2b3e8f1d754f438dacdec1f0945f251a’
   ```

   When you register the DEP, encryption begins on the data in the geo. Encryption can take some time. For more information on using this parameter, see [Register-SPODataEncryptionPolicy](/powershell/module/sharepoint-online/register-spodataencryptionpolicy?preserve-view=true&view=sharepoint-ps).
 
## Restore Azure Key Vault keys

Before performing a restore, use the recovery capabilities provided by soft delete. All keys that are used with Customer Key are required to have soft delete enabled. Soft delete acts like a recycle bin and allows recovery for up to 90 days without the need to restore. Restore should only be required in extreme or unusual circumstances, for example if the key or key vault is lost. If you must restore a key for use with Customer Key, in Azure PowerShell, run the Restore-AzureKeyVaultKey cmdlet as follows:
  
```powershell
Restore-AzKeyVaultKey -VaultName <vault name> -InputFile <filename>
```

For example:
  
```powershell
Restore-AzKeyVaultKey -VaultName Contoso-O365EX-NA-VaultA1 -InputFile Contoso-O365EX-NA-VaultA1-Key001-Backup-20170802.backup
```

If the key vault already contains a key with the same name, the restore operation fails. Restore-AzKeyVaultKey restores all key versions and all metadata for the key including the key name.
  
## Manage key vault permissions

Several cmdlets are available that enable you to view and, if necessary, remove key vault permissions. You might need to remove permissions, for example, when an employee leaves the team. For each of these tasks, you will use Azure PowerShell. For information about Azure PowerShell, see [Overview of Azure PowerShell](/powershell/azure/).

To view key vault permissions, run the Get-AzKeyVault cmdlet.

```powershell
Get-AzKeyVault -VaultName <vault name>
```

For example:

```powershell
Get-AzKeyVault -VaultName Contoso-O365EX-NA-VaultA1
```

To remove an administrator's permissions, run the Remove-AzKeyVaultAccessPolicy cmdlet:
  
```powershell
Remove-AzKeyVaultAccessPolicy -VaultName <vault name> -UserPrincipalName <UPN of user>
```

For example:

```powershell
Remove-AzKeyVaultAccessPolicy -VaultName Contoso-O365EX-NA-VaultA1 -UserPrincipalName alice@contoso.com
```

### View the DEPs you've created for Exchange Online and Skype for Business

To view a list of all the DEPs you've created for Exchange Online and Skype for Business using the Get-DataEncryptionPolicy PowerShell cmdlet, complete these steps.

1. Using a work or school account that has global administrator permissions in your organization, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. To return all DEPs in your organization, run the Get-DataEncryptionPolicy cmdlet without any parameters.

   ```powershell
   Get-DataEncryptionPolicy
   ```

   For more information about the Get-DataEncryptionPolicy cmdlet, see [Get-DataEncryptionPolicy](/powershell/module/exchange/get-dataencryptionpolicy).

### Assign a DEP before you migrate a mailbox to the cloud

When you assign the DEP, Microsoft 365 encrypts the contents of the mailbox using the assigned DEP during the migration. This process is more efficient than migrating the mailbox, assigning the DEP, and then waiting for encryption to take place, which can take hours or possibly days.

To assign a DEP to a mailbox before you migrate it to Office 365, run the Set-MailUser cmdlet in Exchange Online PowerShell:

1. Using a work or school account that has global administrator permissions in your organization, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Run the Set-MailUser cmdlet.

   ```powershell
   Set-MailUser -Identity <GeneralMailboxOrMailUserIdParameter> -DataEncryptionPolicy <DataEncryptionPolicyIdParameter>
   ```

   Where *GeneralMailboxOrMailUserIdParameter* specifies a mailbox, and *DataEncryptionPolicyIdParameter* is the ID of the DEP. For more information about the Set-MailUser cmdlet, see [Set-MailUser](/powershell/module/exchange/set-mailuser).

### Determine the DEP assigned to a mailbox

To determine the DEP assigned to a mailbox, use the Get-MailboxStatistics cmdlet. The cmdlet returns a unique identifier (GUID).
  
1. Using a work or school account that has global administrator permissions in your organization, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

   ```powershell
   Get-MailboxStatistics -Identity <GeneralMailboxOrMailUserIdParameter> | fl DataEncryptionPolicyID
   ```

   Where *GeneralMailboxOrMailUserIdParameter* specifies a mailbox and DataEncryptionPolicyID returns the GUID of the DEP. For more information about the Get-MailboxStatistics cmdlet, see [Get-MailboxStatistics](/powershell/module/exchange/get-mailboxstatistics).
  
2. Run the Get-DataEncryptionPolicy cmdlet to find out the friendly name of the DEP to which the mailbox is assigned.
  
   ```powershell
   Get-DataEncryptionPolicy <GUID>
   ```

   Where *GUID* is the GUID returned by the Get-MailboxStatistics cmdlet in the previous step.

## Verify that Customer Key has finished encryption

Whether you've rolled a Customer Key, assigned a new DEP, or migrated a mailbox, use the steps in this section to ensure that encryption completes.

### Verify encryption completes for Exchange Online and Skype for Business

Encrypting a mailbox can take some time. For first time encryption, the mailbox must also completely move from one database to another before the service can encrypt the mailbox.
  
Use the Get-MailboxStatistics cmdlet to determine if a mailbox is encrypted.
  
```powershell
Get-MailboxStatistics -Identity <GeneralMailboxOrMailUserIdParameter> | fl IsEncrypted
```

The IsEncrypted property returns a value of **true** if the mailbox is encrypted and a value of **false** if the mailbox isn't encrypted. The time to complete mailbox moves depends on the number of mailboxes to which you assign a DEP for the first time, and the size of the mailboxes. If the mailboxes haven't been encrypted after a week from the time you assigned the DEP, contact Microsoft.

The New-MoveRequest cmdlet is no longer available for local mailbox moves. Refer to [this announcement](https://techcommunity.microsoft.com/t5/exchange-team-blog/disabling-new-moverequest-for-local-mailbox-moves/bc-p/1332141) for additional information.

### Verify encryption completes for SharePoint Online, OneDrive for Business, and Teams files

Check on the status of encryption by running the Get-SPODataEncryptionPolicy cmdlet as follows:

```PowerShell
   Get-SPODataEncryptionPolicy -Identity <SPOAdminSiteUrl>
```

The output from this cmdlet includes:
  
- The URI of the primary key.

- The URI of the secondary key.

- The encryption status for the geo. Possible states include:

  - **Unregistered:** Customer Key encryption has not yet been applied.

  - **Registering:** Customer Key encryption has been applied and your files are in the process of being encrypted. If the key for the geo is registering, you'll also be shown information on what percentage of sites in the geo are complete so that you can monitor encryption progress.

  - **Registered:** Customer Key encryption has been applied, and all files in all sites have been encrypted.

  - **Rolling:** A key roll is in progress. If the key for the geo is rolling, you'll also be shown information on what percentage of sites have completed the key roll operation so that you can monitor progress.

### Manage multi-workload DEP
With multi-workload DEP, you can modify or refresh the DEP and can also assign a new DEP. You can also find out details of the multi-workload DEP. See [managing multi-workload DEP](https://docs.microsoft.com/en-us/microsoft-365/compliance/customer-key-tenant-level?view=o365-worldwide#modify-or-refresh-policy) for details.

## Roll back from Customer Key to Microsoft managed Keys

If you decide not to use Customer Key for assigning multi-workload DEP anymore then you'll need to reach out to Microsoft support with a request for “offboarding” from Customer Key. Ask the support team to file an service request against M365 Customer Key team. Reach out to m365-ck@service.microsoft.com if you've any questions.

If you do not want to encrypt individual mailboxes using mailbox level DEPs anymore, then you can unassign mailbox level DEPs from all your mailboxes. You can do so by using the Set-Mailbox PowerShell cmdlet.

To unassign the DEP from a mailbox using the Set-Mailbox PowerShell cmdlet, complete these steps.

1. Using a work or school account that has global administrator permissions in your organization, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Run the Set-Mailbox cmdlet.

   ```powershell
   Set-Mailbox -Identity <mailbox> -DataEncryptionPolicy $NULL
   ```

Running this cmdlet unassigns the currently assigned DEP and reencrypts the mailbox using the DEP associated with default Microsoft managed keys. You can't unassign the DEP used by Microsoft managed keys. If you don't want to use Microsoft managed keys, you can assign another Customer Key DEP to the mailbox.

## Revoke your keys and start the data purge path process

You control the revocation of all root keys including the availability key. Customer Key provides control of the exit planning aspect of the regulatory requirements for you. If you decide to revoke your keys to purge your data and exit the service, the service deletes the availability key once the data purge process completes. This is supported for Customer Key DEPs that are assigned to individual mailboxes.

Microsoft 365 audits and validates the data purge path. For more information, see the SSAE 18 SOC 2 Report available on the [Service Trust Portal](https://servicetrust.microsoft.com/). In addition, Microsoft recommends the following documents:

- [Risk Assessment and Compliance Guide for Financial Institutions in the Microsoft Cloud](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=edee9b14-3661-4a16-ba83-c35caf672bd7&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_FAQ_and_White_Papers)

- [O365 Exit Planning Considerations](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=77ea7ebf-ce1b-4a5f-9972-d2d81a951d99&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_FAQ_and_White_Papers)

Purging of multi-workload DEP is not supported for Microsoft 365 Customer Key. The multi-workload DEP is used to encrypt data across multiple workloads across all tenant users. Purging such DEP would result into data from across multiple workloads become inaccessible. If you decide to exit M365 services altogether then you could pursue the path of tenant deletion per the documented process. See [how to delete a tenant in Azure Active Directoy](https://docs.microsoft.com/en-us/azure/active-directory/enterprise-users/directory-delete-howto).

### Revoke your Customer Keys and the availability key for Exchange Online and Skype for Business

When you initiate the data purge path for Exchange Online and Skype for Business, you set a permanent data purge request on a DEP. Doing so permanently deletes encrypted data within the mailboxes to which that DEP is assigned.

Since you can only run the PowerShell cmdlet against one DEP at a time, consider reassigning a single DEP to all of your mailboxes before you initiate the data purge path.

> [!WARNING]
> Do not use the data purge path to delete a subset of your mailboxes. This process is only intended for customers who are exiting the service.

To initiate the data purge path, complete these steps:

1. Remove wrap and unwrap permissions for "O365 Exchange Online" from Azure Key Vaults.

2. Using a work or school account that has global administrator privileges in your organization, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

3. For each DEP that contains mailboxes that you want to delete, run the [Set-DataEncryptionPolicy](/powershell/module/exchange/set-dataencryptionpolicy) cmdlet as follows.

    ```powershell
    Set-DataEncryptionPolicy <Policy ID> -PermanentDataPurgeRequested -PermanentDataPurgeReason <Reason> -PermanentDataPurgeContact <ContactName>
    ```

   If the command fails, ensure that you've removed the Exchange Online permissions from both keys in Azure Key Vault as specified earlier in this task. Once you've set the PermanentDataPurgeRequested switch using the Set-DataEncryptionPolicy cmdlet, you'll no longer be able to assign this DEP to mailboxes.

4. Contact Microsoft support and request the Data Purge eDocument.

    At your request, Microsoft sends you a legal document to acknowledge and authorize data deletion. The person in your organization who signed up as an approver in the FastTrack offer during onboarding needs to sign this document. Normally, this is an executive or other designated person in your company who is legally authorized to sign the paperwork on behalf of your organization.

5. Once your representative has signed the legal document, return it to Microsoft (usually through an eDoc signature).

    Once Microsoft receives the legal document, Microsoft runs cmdlets to trigger the data purge which first deletes the policy, marks the mailboxes for permanent deletion, then deletes the availability key. Once the data purge process completes, the data has been purged, is inaccessible to Exchange Online, and is not recoverable.

### Revoke your Customer Keys and the availability key for SharePoint Online, OneDrive for Business, and Teams files

To initiate the data purge path for SharePoint Online, OneDrive for Business, and Teams files, complete these steps:

1. Revoke Azure Key Vault access. All key vault admins must agree to revoke access.

   You do not delete the Azure Key Vault for SharePoint Online. Key vaults may be shared among several SharePoint Online tenants and DEPs.

2. Contact Microsoft to delete the availability key.

    When you contact Microsoft to delete the availability key, we'll send you a legal document. The person in your organization who signed up as an approver in the FastTrack offer during onboarding needs to sign this document. Normally, this is an executive or other designated person in your company who's legally authorized to sign the paperwork on behalf of your organization.

3. Once your representative signs the legal document, return it to Microsoft (usually through an eDoc signature).

   Once Microsoft receives the legal document, we run cmdlets to trigger the data purge which performs crypto deletion of the tenant key, site key, and all individual per-document keys, irrevocably breaking the key hierarchy. Once the data purge cmdlets complete, your data has been purged.

## Related articles

- [Service encryption with Customer Key](customer-key-overview.md)

- [Learn about the availability key](customer-key-availability-key-understand.md)

- [Set up Customer Key](customer-key-set-up.md)

- [Roll or rotate a Customer Key or an availability key](customer-key-availability-key-roll.md)

- [Customer Lockbox](customer-lockbox-requests.md)

- [Service Encryption](office-365-service-encryption.md)