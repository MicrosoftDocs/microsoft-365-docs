---
title: "Roll keys in Azure Key Vault used with Office 365 Customer Key"
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
ms.collection:
- M365-security-compliance
description: "Learn how to roll the Customer and availability keys stored in Azure Key Vault for Office 365 Customer Key. Services include Exchange Online, Skype for Business, SharePoint Online, including Team Sites, and OneDrive for Business."
---

# Roll or rotate a customer key or an availability key
<a name="RollCKkey"> </a>

Even though Customer Key supports key rolls, we recommend that you should never roll the keys you use with Customer Key. Keys that you protect with a hardware security module (HSM) are virtually impossible to compromise. Even if a root key were in the possession of a malicious actor, there is no feasible means to use it to decrypt data. Only Office 365 code knows how to use these keys.
  
> [!CAUTION]
> Only roll an encryption key that you use with Customer Key when a clear technical reason exists or a compliance requirement dictates that you must roll the key. In addition, do not delete any keys that are or were associated with policies. When you roll your keys, there will be content encrypted with the previous keys. For example, while active mailboxes will be re-encrypted frequently, inactive, disconnected, and disabled mailboxes may still be encrypted with the previous keys. SharePoint Online performs backup of content for restore and recovery purposes, so there may still be archived content using older keys.

## Request a new version of each existing key you want to roll

When you roll a key, you request a new version of an existing key. To request a new version of an existing key, you use the same cmdlet, [Add-AzureKeyVaultKey](https://docs.microsoft.com/powershell/module/AzureRM.KeyVault/Add-AzureKeyVaultKey). After you’ve finished rolling any key associated with a Data Encryption Policy (DEP), you run another cmdlet to ensure that Customer Key begins using the new key. Do this step in each Azure Key Vault (AKV).

For example:

1. Log in to your Azure subscription with Azure PowerShell. For instructions, see [Log in with Azure PowerShell](https://docs.microsoft.com/powershell/azure/authenticate-azureps?view=azurermps-4.3.1).

2. Run the Add-AzureKeyVaultKey cmdlet as shown in the following example:

   ```powershell
   Add-AzureKeyVaultKey -VaultName Contoso-O365EX-NA-VaultA1 -Name Contoso-O365EX-NA-VaultA1-Key001 -Destination HSM -KeyOps @('wrapKey','unwrapKey') -NotBefore (Get-Date -Date "12/27/2016 12:01 AM")
   ```

   In this example, since a key named **Contoso-O365EX-NA-VaultA1-Key001** exists in the **Contoso-O365EX-NA-VaultA1** vault, the cmdlet creates a version of the key. This operation preserves the previous key versions in the version history for the key. You need the previous key version to decrypt the data that it still encrypts. Once you complete rolling any key associated with a DEP,  run an extra cmdlet to ensure that Customer Key begins using the new key. The following sections describe the cmdlets in more detail.
  
## Roll the Customer Key for Exchange Online and Skype for Business

To roll either of the Azure Key Vault keys used with Exchange Online and Skype for Business, complete these steps:

1. Run the Set-DataEncryptionPolicy cmdlet in Azure PowerShell:
  
   ```powershell
   Set-DataEncryptionPolicy <policyname> -Refresh
   ```

   Within 72 hours, the active mailboxes encrypted by this policy become associated with the updated key.

2. To check the value for the DataEncryptionPolicyID property for the mailbox, use the steps in [Determine the DEP assigned to a mailbox](controlling-your-data-using-customer-key.md#DeterminemailboxDEP). The value for this property changes once the service applies the updated key.
  
## Roll the Customer Key for SharePoint Online, including Team Sites, and OneDrive for Business

SharePoint Online only allows you to roll one key at a time. If you want to roll both keys in a key vault, wait for the first key roll operation to complete. Microsoft recommends that you stagger your key roll operations at different intervals to avoid this issue.

To roll either of the Azure Key Vault keys used with SharePoint Online and OneDrive for Business:

1. Run the [Update-SPODataEncryptionPolicy](https://technet.microsoft.com/library/mt843948.aspx) cmdlet as follows:
  
   ```powershell
   Update-SPODataEncryptionPolicy -Identity <SPOAdminSiteUrl> -KeyVaultName <ReplacementKeyVaultName> -KeyName <ReplacementKeyName> -KeyVersion <ReplacementKeyVersion> -KeyType <Primary | Secondary>
   ```

   While this cmdlet starts the key roll operation for SharePoint Online and OneDrive for Business, the action doesn't complete immediately.

2. To see the progress of the key roll operation, run the Get-SPODataEncryptionPolicy cmdlet as follows:

   ```powershell
   Get-SPODataEncryptionPolicy -Identity <SPOAdminSiteUrl>
   ```

## Roll the availability key

To roll the availability key, you create a new DEP. Office 365 rolls the availability keys on an internally defined schedule. There is no customer-facing service-level agreement (SLA) for these key rolls.

## Related articles

- [Controlling your data using Customer Key for Office 365](controlling-your-data-using-customer-key.md)

- [Roll or rotate a customer key or an availability key](customer-key-availability-key-roll.md)

- [Understand the availability key](customer-key-availability-key-understand.md)

- [Service encryption with Customer Key for Office 365 FAQ](service-encryption-with-customer-key-faq.md)
