---
title: "Customer Key for multiple Microsoft 365 workloads"
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

# Overview of Customer Key for multiple Microsoft 365 workloads for all tenant users

Microsoft recently added the support for creating a DEP that encrypts data across multiple M365 workloads that are listed below. 

- Teams chat messages (1:1 chats, group chats, meeting chats and channel conversations)
- Teams media messages (images, code snippets, video messages, audio messages, wiki images)
- Teams call and meeting recordings stored in Teams storage
- Teams chat notifications
- Teams chat suggestions by Cortana
- Teams status messages
- User and signal information for Exchange Online
- Exchange Online mailboxes that aren't already encrypted Customer Key DEPs at the application level
- MIP exact data match (EDM) data – (data file schemas, rule packages, and the salts used to hash the sensitive data)

For MIP exact data match (EDM) and Microsoft Teams, the multi-workload DEP encrypts new data from the time you assign the DEP to the tenant. For Exchange Online, Customer Key encrypts all existing and new data.

You can create multiple DEPs per tenant but can only assign one DEP at a time. When you assign the DEP, encryption begins automatically but takes some time to complete depending on the size of your tenant.

## Multi-workload DEP adds broader control to Customer Key for Microsoft 365

If you already have Customer Key set up for Exchange Online and Sharepoint Online, here's how the new multi-workload DEP fits in.

The multi-workload DEP you create encrypts data for Microsoft Teams, MIP EDM and Exchange Online workloads in Microsoft 365. However, for Exchange Online, if you have already assigned Customer Key DEPs to individual mailboxes, the multi-workload policy won't override those DEPs. The multi-workload DEP will only encrypt mailboxes that aren't assigned a mailbox level Customer Key DEP already.

## Data that isn't encrypted using multi-workload DEP

Customer Key doesn't encrypt the following types of data with multi-workload DEP. Instead, Microsoft 365 uses other types of encryption to protect this data.

- Exchange online mailboxes that you've already encrypted using a Customer Key DEP at the mailbox level. Mailboxes that don't have a Customer Key DEP assigned to them will be encrypted using the multi-workload DEP. This arrangement means that you may have some mailboxes encrypted with multi-workload DEP and some mailboxes encrypted with mailbox level DEPs.
- SharePoint and OneDrive for Business data is not encrypted using multi-workload DEP. Such data gets encrypted using SharePoint Online DEP where a single DEP encrypts all of SharePoint content within a geo.
- Microsoft Teams files and some Teams call and meeting recordings saved in OneDrive for Business and SharePoint Online are also encrypted using the SharePoint Online DEP.

Any workloads or scenarios that aren't currently supported by Customer Key for Microsoft 365.

- Other Microsoft 365 workloads such as Yammer, Planner, and so on.
- Teams Live Events and Q&A in Live Events. For Teams, this scenario is the only one that isn't encrypted by Customer Key using multi-workload DEP.

## Set up Customer Key for using multi-workload DEP

The instructions for setting up and onboarding to Customer Key for multi-workload DEP are similar to the ones used for onboarding to Customer Key for Exchange Online and/or SharePoint Online. See [Find the permissions required to run any Exchange cmdlet](/powershell/exchange/exchange-server/find-exchange-cmdlet-permissions).

## Set up multi-workload DEP

You'll need to use a work or school account that has the compliance admin role to set up multi-workload DEP for all tenant users. Although this article lists all parameters for the cmdlets, you may not have access to some parameters if they're not included in the permissions assigned to you. To find the permissions required to run any cmdlet or parameter in your organization, see [Find the permissions required to run any Exchange cmdlet](/powershell/exchange/exchange-server/find-exchange-cmdlet-permissions).

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
