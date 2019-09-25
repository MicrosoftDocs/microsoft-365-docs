---
title: "Controlling your data in Office 365 using Customer Key"
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 9/23/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: f2cd475a-e592-46cf-80a3-1bfb0fa17697
ms.collection:
- M365-security-compliance
description: "After you setup Customer Key, learn how to manage it by restoring AKV keys, managing permissions, and determining the DEP assigned to a mailbox."
---

# Manage Customer Key for Office 365
<a name="ManageCustomerKey"> </a>

After you've set up Customer Key for Office 365, you can manage your keys as described in this article and learn more about Customer Key in the related topics.

## Restore Azure Key Vault keys
<a name="RestoreAzureKeyVaultKeys"> </a>

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
<a name="Managekeyvaultperms"> </a>

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

## Related articles

- [Controlling your data using Customer Key for Office 365](controlling-your-data-using-customer-key.md)

- [Roll or rotate a customer key or an availability key](customer-key-availability-key-roll.md)

- [Understand the availability key](customer-key-availability-key-understand.md)

- [Service encryption with Customer Key for Office 365 FAQ](service-encryption-with-customer-key-faq.md)
