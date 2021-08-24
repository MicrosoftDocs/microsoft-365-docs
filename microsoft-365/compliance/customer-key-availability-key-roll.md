---
title: "Roll or rotate a Customer Key or an availability key"
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
description: "Learn how to roll the customer root keys stored in Azure Key Vault that are used with the Customer Key. Services include Exchange Online, Skype for Business, SharePoint Online, OneDrive for Business, and Teams files."
---

# Roll or rotate a Customer Key or an availability key

> [!CAUTION]
> Only roll an encryption key that you use with Customer Key when your security or compliance requirements dictate that you must roll the key. In addition, do not delete any keys that are or were associated with policies. When you roll your keys, there will be content encrypted with the previous keys. For example, while active mailboxes will be re-encrypted frequently, inactive, disconnected, and disabled mailboxes may still be encrypted with the previous keys. SharePoint Online performs backup of content for restore and recovery purposes, so there may still be archived content using older keys.

## About rolling the availability key

Microsoft does not expose direct control of the availability key to customers. For example, you can only roll (rotate) the keys that you own in Azure Key Vault. Microsoft 365 rolls the availability keys on an internally-defined schedule. There is no customer-facing, service-level agreement (SLA) for these key rolls. Microsoft 365 rotates the availability key using Microsoft 365 service code in an automated, non-manual process. Microsoft administrators may initiate the roll process. The key is rolled using automated mechanisms without direct access to the key store. Access to the availability key secret store is not provisioned to Microsoft administrators. Availability key rolling leverages the same mechanism used to initially generate the key. For more information about the availability key, see [Understand the availability key](customer-key-availability-key-understand.md).

> [!IMPORTANT]
> Exchange Online and Skype for Business availability keys can be effectively rolled by customers creating a new DEP, since a unique availability key is generated for each DEP you create. Availability keys for SharePoint Online, OneDrive for Business, and Teams files exist at the forest level and are shared across DEPs and customers, which means rolling only occurs at a Microsoft internally defined schedule. To mitigate the risk of not rolling the availability key each time a new DEP is created, SharePoint, OneDrive, and Teams roll the tenant intermediate key (TIK), the key wrapped by the customer root keys and availability key, each time a new DEP is created.

## Request a new version of each existing root key you want to roll

When you roll a key, you request a new version of an existing key. To request a new version of an existing key, you use the same cmdlet, [Add-AzKeyVaultKey](/powershell/module/az.keyvault/add-azkeyvaultkey), with the same syntax that you used to create the key in the first place. After you've finished rolling any key associated with a Data Encryption Policy (DEP), you run another cmdlet to ensure that Customer Key begins using the new key. Do this step in each Azure Key Vault (AKV).

For example:

1. Sign in to your Azure subscription with Azure PowerShell. For instructions, see [Sign in with Azure PowerShell](/powershell/azure/authenticate-azureps).

2. Run the Add-AzKeyVaultKey cmdlet as shown in the following example:

   ```powershell
   Add-AzKeyVaultKey -VaultName Contoso-CK-EX-NA-VaultA1 -Name Contoso-CK-EX-NA-VaultA1-Key001 -Destination HSM -KeyOps @('wrapKey','unwrapKey') -NotBefore (Get-Date -Date "12/27/2016 12:01 AM")
   ```

   In this example, since a key named **Contoso-CK-EX-NA-VaultA1-Key001** exists in the **Contoso-CK-EX-NA-VaultA1** vault, the cmdlet creates a new version of the key. This operation preserves the previous key versions in the version history for the key. You need the previous key version to decrypt the data that it still encrypts. Once you complete rolling any key associated with a DEP,  run an extra cmdlet to ensure that Customer Key begins using the new key. The following sections describe the cmdlets in more detail.
  
## Update the keys for multi-workload DEPs

When you roll either of the Azure Key Vault keys associated with a DEP used with multiple workloads, you must update the DEP to point to the new key. This process does not rotate the availability key.

To instruct Customer Key to use the new key to encrypt multiple workloads, complete these steps:

1. On your local computer, using a work or school account that has global administrator or compliance admin permissions in your organization, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) in a Windows PowerShell window.

2. Run the Set-M365DataAtRestEncryptionPolicy cmdlet.
  
   ```powershell
   Set-M365DataAtRestEncryptionPolicy -[Identity] "PolicyName" -Refresh
   ```

Where *PolicyName* is the name or unique ID of the policy. For example, Contoso_Global.

Example:

```powershell
Set-M365DataAtRestEncryptionPolicy -Identity "Contoso_Global" -Refresh
```

## Update the keys for Exchange Online DEPs

When you roll either of the Azure Key Vault keys associated with a DEP used with Exchange Online and Skype for Business, you must update the DEP to point to the new key. This does not rotate the availability key.

To instruct Customer Key to use the new key to encrypt mailboxes, run the Set-DataEncryptionPolicy cmdlet as follows:

1. Run the Set-DataEncryptionPolicy cmdlet in Azure PowerShell:
  
   ```powershell
   Set-DataEncryptionPolicy -Identity <DataEncryptionPolicyID> -Refresh
   ```

2. To check the value for the DataEncryptionPolicyID property for the mailbox, use the steps in [Determine the DEP assigned to a mailbox](customer-key-manage.md#determine-the-dep-assigned-to-a-mailbox). The value for this property changes once the service applies the updated key.
  
## Update the keys for SharePoint Online, OneDrive for Business, and Teams files

SharePoint Online only allows you to roll one key at a time. If you want to roll both keys in a key vault, wait for the first operation to complete. Microsoft recommends that you stagger your operations to avoid this issue. When you roll either of the Azure Key Vault keys associated with a DEP used with SharePoint Online and OneDrive for Business, you must update the DEP to point to the new key. This does not rotate the availability key.

1. Run the Update-SPODataEncryptionPolicy cmdlet as follows:
  
   ```powershell
   Update-SPODataEncryptionPolicy -Identity <SPOAdminSiteUrl> -KeyVaultName <ReplacementKeyVaultName> -KeyName <ReplacementKeyName> -KeyVersion <ReplacementKeyVersion> -KeyType <Primary | Secondary>
   ```

   While this cmdlet starts the key roll operation for SharePoint Online and OneDrive for Business, the action doesn't complete immediately.

2. To see the progress of the key roll operation, run the Get-SPODataEncryptionPolicy cmdlet as follows:

   ```powershell
   Get-SPODataEncryptionPolicy -Identity <SPOAdminSiteUrl>
   ```

## Related articles

- [Service encryption with Customer Key for Office 365](customer-key-overview.md)

- [Set up Customer Key for Office 365](customer-key-set-up.md)

- [Manage Customer Key for Office 365](customer-key-manage.md)

- [Learn about the availability key](customer-key-availability-key-understand.md)