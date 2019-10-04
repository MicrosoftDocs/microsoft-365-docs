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

Several cmdlets are available that enable you to view and, if necessary, remove key vault permissions. You might need to remove permissions, for example, when an employee leaves the team.

To view key vault permissions, run the Get-AzureRmKeyVault cmdlet:
  
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
  
### Assign a DEP before you migrate a mailbox to the cloud

When you assign the DEP, Office 365 encrypts the contents of the mailbox using the assigned DEP during the migration. This process is more efficient than migrating the mailbox, assigning the DEP, and then waiting for encryption to take place, which can take hours or possibly days.

To assign a DEP to a mailbox before you migrate it to Office 365, run the Set-MailUser cmdlet in Exchange Online PowerShell:

1. Using a work or school account that has global administrator permissions in your Office 365 organization, [connect to Exchange Online PowerShell](https://technet.microsoft.com/en-us/library/jj984289%28v=exchg.160%29.aspx).

2. Run the Set-MailUser cmdlet.

  ```powershell
  Set-MailUser -Identity <GeneralMailboxOrMailUserIdParameter> -DataEncryptionPolicy <DataEncryptionPolicyIdParameter>
  ```

  Where *GeneralMailboxOrMailUserIdParameter* specifies a mailbox, and *DataEncryptionPolicyIdParameter* is the ID of the DEP. For more information about the Set-MailUser cmdlet, see [Set-MailUser](https://docs.microsoft.com/en-us/powershell/module/exchange/users-and-groups/set-mailuser?view=exchange-ps).

### Determine the DEP assigned to a mailbox
<a name="DeterminemailboxDEP"> </a>

To determine the DEP assigned to a mailbox, use the Get-MailboxStatistics cmdlet. The cmdlet returns a unique identifier (GUID).
  
```powershell
Get-MailboxStatistics -Identity <GeneralMailboxOrMailUserIdParameter> | fl DataEncryptionPolicyID
```

Where *GeneralMailboxOrMailUserIdParameter* specifies a mailbox. For more information about the Get-MailboxStatistics cmdlet, see [Get-MailboxStatistics](https://technet.microsoft.com/library/bb124612%28v=exchg.160%29.aspx).
  
Use the GUID to find out the friendly name of the DEP to which the mailbox is assigned by running the following cmdlet.
  
```powershell
Get-DataEncryptionPolicy <GUID>
```

Where *GUID* is the GUID returned by the Get-MailboxStatistics cmdlet in the previous step.

## Encryption ciphers used by Customer Key

> [!IMPORTANT]
> **@Reviewers!!**  Need to redo these graphics these are placeholders for now. Please confirm the data on them is still accurate. Also, I'd like to remove the "microsoft-managed" from the SPO piece as this will undoubtedly cause confusion. @Jeff McDowell Please verify.

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
