---
title: "Manage Customer Key for Office 365"
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 10/4/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
description: "After you set up Customer Key, learn how to manage it by restoring AKV keys, managing permissions, and determining the DEP assigned to a mailbox."
---

# Manage Customer Key for Office 365

After you've set up Customer Key for Office 365, you can manage your keys as described in this article. Learn more about Customer Key in the related topics.

## Restore Azure Key Vault keys

Before performing a restore, use the recovery capabilities provided by soft delete. All keys that are used with Customer Key are required to have soft delete enabled. Soft delete acts like a recycle bin and allows recovery for up to 90 days without the need to restore. Restore should only be required in extreme or unusual circumstances, for example if the key or key vault is lost. If you must restore a key for use with Customer Key, in Azure PowerShell, run the Restore-AzureKeyVaultKey cmdlet as follows:
  
```powershell
Restore-AzureKeyVaultKey -VaultName <vaultname> -InputFile <filename>
```

For example:
  
```powershell
Restore-AzureKeyVaultKey -VaultName Contoso-O365EX-NA-VaultA1 -InputFile Contoso-O365EX-NA-VaultA1-Key001-Backup-20170802.backup
```

If the key vault already contains a key with the same name, the restore operation fails. Restore-AzureKeyVaultKey restores all key versions and all metadata for the key including the key name.
  
## Manage key vault permissions

Several cmdlets are available that enable you to view and, if necessary, remove key vault permissions. You might need to remove permissions, for example, when an employee leaves the team. For each of these tasks, you will use Azure PowerShell. For information about Azure Powershell, see [Overview of Azure PowerShell](https://docs.microsoft.com/en-us/powershell/azure/azurerm/overview?view=azurermps-6.13.0).

To view key vault permissions, run the Get-AzureRmKeyVault cmdlet.

```powershell
Get-AzureRmKeyVault -VaultName <vaultname>
```

For example:

```powershell
Get-AzureRmKeyVault -VaultName Contoso-O365EX-NA-VaultA1
```

To remove an administrator's permissions, run the Remove-AzureRmKeyVaultAccessPolicy cmdlet:
  
```powershell
Remove-AzureRmKeyVaultAccessPolicy -VaultName <vaultname> -UserPrincipalName <UPN of user>
```

For example:

```powershell
Remove-AzureRmKeyVaultAccessPolicy -VaultName Contoso-O365EX-NA-VaultA1 -UserPrincipalName alice@contoso.com
```

## Manage data encryption policies (DEPs) with Customer Key

Customer Key handles DEPs differently between the different Office 365 services. For example, you can create a different number of DEPs for the different services.

**Exchange Online and Skype for Business:** You can create up to 50 DEPs. For instructions, see [Create a data encryption policy (DEP) for use with Exchange Online and Skype for Business](customer-key-set-up.md#create-a-data-encryption-policy-dep-for-use-with-exchange-online-and-skype-for-business).

**SharePoint Online, including Teams Sites, and OneDrive for Business:** A DEP applies to data in one geographic location, also called a geo. If you use the multi-geo feature of Office 365, you can create one DEP per geo. If you are not using multi-geo, you can create one DEP. Normally, you create the DEP when you set up Customer Key. For instructions, see [Create a data encryption policy (DEP) for each SharePoint Online and OneDrive for Business geo](customer-key-set-up.md#create-a-data-encryption-policy-dep-for-each-sharepoint-online-and-onedrive-for-business-geo).

> [!WARNING]
> Isn't it also one DEP for an entire forest for SPO? That means there might be multiple tenants on a DEP? I'm a tad confused now about WHO creates the DEP to be honest. JEFF MCDOWELL please enlighten me. ***For information about creating additional DEPs, refer to the setup instructions*** link
  
### View the DEPs you've created for Exchange Online and Skype for Business

To view a list of all the DEPs you've created for Exchange Online and Skype for Business using the Get-DtaEncryptionPolicy PowerShell cmdlet.

1. Using a work or school account that has global administrator permissions in your Office 365 organization, [connect to Exchange Online PowerShell](https://docs.microsoft.com/en-us/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell?view=exchange-ps).

2. To return all DEPs in your organization, run the Get-DataEncryptionPolicy cmdlet without any parameters.

  ```powershell
  Get-DataEncryptionPolicy
  ```

  For more information about the Get-DataEncryptionPolicy cmdlet, see [Get-DataEncryptionPolicy](https://docs.microsoft.com/en-us/powershell/module/exchange/encryption-and-certificates/get-dataencryptionpolicy?view=exchange-ps).

### Assign a DEP before you migrate a mailbox to the cloud

When you assign the DEP, Office 365 encrypts the contents of the mailbox using the assigned DEP during the migration. This process is more efficient than migrating the mailbox, assigning the DEP, and then waiting for encryption to take place, which can take hours or possibly days.

To assign a DEP to a mailbox before you migrate it to Office 365, run the Set-MailUser cmdlet in Exchange Online PowerShell:

1. Using a work or school account that has global administrator permissions in your Office 365 organization, [connect to Exchange Online PowerShell](https://docs.microsoft.com/en-us/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell?view=exchange-ps).

2. Run the Set-MailUser cmdlet.

  ```powershell
  Set-MailUser -Identity <GeneralMailboxOrMailUserIdParameter> -DataEncryptionPolicy <DataEncryptionPolicyIdParameter>
  ```

  Where *GeneralMailboxOrMailUserIdParameter* specifies a mailbox, and *DataEncryptionPolicyIdParameter* is the ID of the DEP. For more information about the Set-MailUser cmdlet, see [Set-MailUser](https://docs.microsoft.com/en-us/powershell/module/exchange/users-and-groups/set-mailuser?view=exchange-ps).

### Determine the DEP assigned to a mailbox

To determine the DEP assigned to a mailbox, use the Get-MailboxStatistics cmdlet. The cmdlet returns a unique identifier (GUID).
  
1. Using a work or school account that has global administrator permissions in your Office 365 organization, [connect to Exchange Online PowerShell](https://docs.microsoft.com/en-us/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell?view=exchange-ps).

   ```powershell
   Get-MailboxStatistics -Identity <GeneralMailboxOrMailUserIdParameter> | fl DataEncryptionPolicyID
   ```

   Where *GeneralMailboxOrMailUserIdParameter* specifies a mailbox and DataEncryptionPolicyID returns the GUID of the DEP. For more information about the Get-MailboxStatistics cmdlet, see [Get-MailboxStatistics](https://docs.microsoft.com/en-us/powershell/module/exchange/mailboxes/get-mailboxstatistics?view=exchange-ps).
  
2. Run the Get-DataEncryptionPolicy cmdlet to find out the friendly name of the DEP to which the mailbox is assigned.
  
   ```powershell
   Get-DataEncryptionPolicy <GUID>
   ```

   Where *GUID* is the GUID returned by the Get-MailboxStatistics cmdlet in the previous step.

## Verify that Customer Key has finished encryption

Whether you've just rolled a Customer Key, assigned a new DEP, or migrated a mailbox, use the steps in this section to ensure that encryption completes.

### Verify encryption completes for Exchange Online and Skype for Business

Encrypting a mailbox can take some time. We recommend that you wait 72 hours before you attempt to validate encryption after you change a DEP or the first time you assign a DEP to a mailbox.
  
Use the Get-MailboxStatistics cmdlet to determine if a mailbox is encrypted.
  
```powershell
Get-MailboxStatistics -Identity <GeneralMailboxOrMailUserIdParameter> | fl IsEncrypted
```

The IsEncrypted property returns a value of **true** if the mailbox is encrypted and a value of **false** if the mailbox is not encrypted.

The time to complete mailbox moves depends on the size of the mailbox. If Customer Key hasn't completely encrypted the mailbox after 72 hours from the time you assign a new DEP, initiate a mailbox move. To do this, use the New-MoveRequest cmdlet and provide the alias of the mailbox. For example:
  
```powershell
New-MoveRequest <alias>
```

For more information about this cmdlet, see [Get-MailboxStatistics](https://docs.microsoft.com/en-us/powershell/module/exchange/move-and-migration/new-moverequest?view=exchange-ps).

### Verify encryption completes for SharePoint Online, including Teams Sites, and OneDrive for Business

Check on the status of encryption by running the Get-SPODataEncryptionPolicy cmdlet as follows:

```powershell
Get-SPODataEncryptionPolicy -Identity <SPOAdminSiteUrl>
```

The output from this cmdlet includes:
  
- The URI of the primary key.

- The URI of the secondary key.

- The encryption status for the geo. Possible states include:

  - **Unregistered:** Customer Key encryption has not yet been applied.

  - **Registering:** Customer Key encryption has been applied and your files are in the process of being encrypted. If your geo is in this state, you'll also be shown information on what percentage of sites in the geo are complete so that you can monitor encryption progress.

  - **Registered:** Customer Key encryption has been applied, and all files in all sites have been encrypted.

  - **Rolling:** A key roll is in progress. If your geo is in this state, you'll also be shown information on what percentage of sites have completed the key roll operation so that you can monitor progress.

## Switch to Microsoft-managed keys from Customer Key

> [!IMPORTANT]
> **@Reviewers!!** Please verify that EXO is still not supported. Also, i need instructions for SPO.

 **Exchange Online and Skype for Business:** This is not currently supported.
  
 **SharePoint Online and OneDrive for Business:** You can revert to using Microsoft-managed keys separately for each geo (if you use the multi-geo feature) or for all your data if it is in a single geo. 

## Encryption ciphers used by Customer Key

> [!IMPORTANT]
> **@Reviewers!!** Need to redo these graphics these are placeholders for now. Please confirm the data on them is still accurate. Also, I'd like to remove the "microsoft-managed" from the SPO piece as this will undoubtedly cause confusion. @Jeff McDowell Please verify.

Customer Key uses a variety of encryption ciphers to encrypt keys as shown in the following figures.

### Encryption ciphers used to encrypt keys for Exchange Online and Skype for Business

![Encryption ciphers for Exchange Online Customer Key](media/customerkeyexoencryptcipher.png)

### Encryption ciphers used to encrypt keys for SharePoint Online and OneDrive for Business

![Encryption ciphers for SharePoint Online Customer Key](media/customerkeyspoencryptcipher.png)

## Related articles

- [Control your data in Office 365 using Customer Key](customer-key-overview.md)

- [Set up Customer Key for Office 365](customer-key-set-up.md)

- [Roll or rotate a customer key or an availability key](customer-key-availability-key-roll.md)

- [Understand the availability key](customer-key-availability-key-understand.md)

- [Service encryption with Customer Key for Office 365 FAQ](service-encryption-with-customer-key-faq.md)
