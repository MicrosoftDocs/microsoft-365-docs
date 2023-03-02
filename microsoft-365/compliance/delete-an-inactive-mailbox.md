---
title: "Delete an inactive mailbox"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 09/12/2019
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- purview-compliance
- tier2
search.appverid: 
- MOE150
- MET150
ms.assetid: f5caf497-5e8d-4b7a-bfff-d02942f38150
ms.custom:
- seo-marvel-apr2020
description: When you no longer need to preserve the contents of a Microsoft 365 inactive mailbox, you can permanently delete the inactive mailbox.
---

# Delete an inactive mailbox

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

When you no longer need to keep the contents of an [inactive mailbox](inactive-mailboxes-in-office-365.md), you can permanently delete the mailbox by removing all holds on it. Then, the inactive mailbox is automatically marked for deletion and permanently deleted after it's processed.

Holds can be any of the following:

- [Microsoft 365 retention policies and labels](retention.md) with retain or retain and delete settings
- A hold associated with an [eDiscovery](ediscovery.md) case
- [Litigation hold](ediscovery-create-a-litigation-hold.md)
- An [In-Place Hold](/exchange/security-and-compliance/in-place-and-litigation-holds#placing-a-mailbox-on-in-place-hold)

> [!IMPORTANT]
> It is strongly recommended that you use Microsoft 365 retention when proactively planning to use inactive mailboxes.
>
> - eDiscovery holds are intended for specific, time-bound cases related to a legal issue. At some point, a legal case will probably end and the holds associated with the case will be removed and the eDiscovery case will be closed (or deleted). If a hold that's placed on an inactive mailbox is associated with an eDiscovery case, and the hold is released or the eDiscovery case is closed or deleted, the inactive mailbox will be permanently deleted.
>
> - In-Place Holds in the Exchange admin center are now retired. As of July 1, 2020, new In-Place Holds were unable to be created in Exchange Online. As of October 1, 2020, the hold duration of in-place holds could no longer be changed. Any inactive mailbox that has an In-Place Hold applied can only be deleted by removing the In-Place Hold. Existing inactive mailboxes that are on In-Place Hold will continue to be preserved until the hold is removed. For more information about In-Place Holds retirement, see [Retirement of legacy eDiscovery tools](ediscovery-legacy-retirement.md).
>
> - [Litigation hold](ediscovery-create-a-litigation-hold.md) remains supported as an alternative method to retain content in a mailbox and make it inactive after a user account is deleted. However, as an older technology, we recommend you use Microsoft 365 retention instead.

See the [More information](#more-information) section for a description of what happens after holds are removed from an inactive mailbox.
  
[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you delete an inactive mailbox

- You must use Exchange Online PowerShell to remove holds from an inactive mailbox. You can't use the Exchange admin center (EAC) or the Microsoft Purview compliance portal for these procedures. For step-by-step instructions to use Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- Identify the holds on an inactive mailbox by using the instructions from [Step 1: Identify the holds on an inactive mailbox](change-the-hold-duration-for-an-inactive-mailbox.md#step-1-identify-the-holds-on-an-inactive-mailbox). You'll need this information to know which holds to remove, and identifying information.

- Consider whether you want to copy the contents of an inactive mailbox to another mailbox before you remove the final hold that will result in the deletion of the inactive mailbox. For details, see [Restore an inactive mailbox](restore-an-inactive-mailbox.md).

- Be aware that if you remove the final hold from an inactive mailbox the mailbox will be permanently deleted after the 30-day soft-deleted mailbox retention period expires. After the inactive mailbox is permanently deleted, it can't be recovered. Before you remove a hold, be sure that you no longer need the contents in the mailbox. If you want to reactivate an inactive mailbox, you can recover it. For details, see [Recover an inactive mailbox](recover-an-inactive-mailbox.md).

- For more information about inactive mailboxes, see [Learn about inactive mailboxes](inactive-mailboxes-in-office-365.md).

## How to delete an inactive mailbox by removing holds

After you've [identified what type of hold is placed on the inactive mailbox](change-the-hold-duration-for-an-inactive-mailbox.md#step-1-identify-the-holds-on-an-inactive-mailbox) and whether there are multiple holds, you can remove the holds on the mailbox. An exception is if the inactive mailbox has one or more retention labels configured to retain items. In this case, you can't remove the hold.

When the last hold is removed, no further action is required from you because the inactive mailbox will be [automatically deleted](#automatic-deletion).

Use the instructions for the type of hold you need to remove:

- [Remove an inactive mailbox from a retention policy](#remove-an-inactive-mailbox-from-a-retention-policy)
- [Remove an inactive mailbox from an eDiscovery hold](#remove-an-inactive-mailbox-from-an-ediscovery-hold)
- [Remove Litigation hold from an inactive mailbox](#remove-a-litigation-hold-from-an-inactive-mailbox)
- [Remove an In-Place Hold from an inactive mailbox](#remove-an-in-place-hold-from-an-inactive-mailbox)

> [!CAUTION]
> The instructions require you to specify an identity for the inactive mailbox. The best way to do this is by using its Distinguished Name or Exchange GUID value. Using one of these values helps prevent accidentally specifying the wrong mailbox.

### Remove an inactive mailbox from a retention policy

The procedure to remove an inactive mailbox from a Microsoft 365 retention policy depends on whether the policy scope is [adaptive or static](retention.md#adaptive-or-static-policy-scopes-for-retention).

You won't be able to remove an inactive mailbox if the retention policy has [Preservation Lock](retention-preservation-lock.md) applied.

#### How to remove an inactive mailbox from a retention policy with an adaptive scope

When you use the advanced query builder to define your adaptive scope for mailboxes, modify it to  exclude inactive mailboxes by using the OPATH property *IsInactiveMailbox*:

```Console
IsInactiveMailbox -eq "False"
````

You can't exclude inactive mailboxes by using the simple query builder. If the retention policy is configured to use an adaptive scope that used the simple query builder, create a new adaptive policy scope that uses the advanced query builder. Then modify the retention policy to use this new adaptive scope.

#### How to remove an inactive mailbox from a retention policy with a static scope

This procedure depends on whether the retention policy applied to the inactive mailbox is configured for the entire policy location (sometimes referred to as "organization-wide") or the policy is configured to include specific mailboxes (sometimes referred to as "explicit"). For more information, see [Configuration information for static scopes](retention-settings.md#configuration-information-for-static-scopes).

Use the following PowerShell cmdlets to retrieve a policy GUID and identify the type of hold for a mailbox:

- If the policy is configured for the entire location: Use the **Get-OrganizationConfig** cmdlet in Exchange Online PowerShell to get information about these policies.

- If the policy is configured to include specific mailboxes: Use the **Get-Mailbox -IncludeInactiveMailbox** cmdlet and parameter in Exchange Online PowerShell to get information about these policies.

##### Static scope: How to remove an inactive mailbox from a retention policy that's configured for the entire location

Run the following PowerShell command for a specific retention policy:

```powershell
Set-Mailbox <identity of inactive mailbox> -ExcludeFromOrgHolds <retention policy GUID without prefix or suffix>
```

Alternatively, you can run the following PowerShell command to remove the inactive mailbox from all retention policies that are configured for the entire location:

```powershell
Set-Mailbox <identity of inactive mailbox> -ExcludeFromAllOrgHolds
```

##### Static scope: How to remove an inactive mailbox from a retention policy that's configured to include specific mailboxes

Run the following [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell) command:

```powershell
Set-RetentionCompliancePolicy -Identity <retention policy GUID without prefix or suffix> -RemoveExchangeLocation <identity of inactive mailbox>
```

### Remove an inactive mailbox from an eDiscovery hold

See [Removing content locations from an eDiscovery hold](ediscovery-create-holds.md#removing-content-locations-from-an-ediscovery-hold).

### Remove a Litigation hold from an inactive mailbox

Run the following PowerShell command to remove a Litigation hold from a mailbox:
  
```powershell
Set-Mailbox -InactiveMailbox -Identity <identity of inactive mailbox> -LitigationHoldEnabled $false
```

### Remove an In-Place Hold from an inactive mailbox

There are two ways to remove an In-Place Hold from an inactive mailbox:
  
- **Delete the In-Place Hold object**. If the inactive mailbox that you want to permanently delete is the only source mailbox for an In-Place Hold, you can just delete the In-Place Hold object. 

    > [!NOTE]
    > You have to disable the hold before you can delete an In-Place Hold object. If you try to delete an In-Place Hold object that has the hold enabled, you'll receive an error message. 
  
- **Remove the inactive mailbox as a source mailbox of an In-Place Hold**. If you want to retain other source mailboxes for an In-Place Hold, you can remove the inactive mailbox from the list of source mailboxes and keep the In-Place Hold object.

#### How to delete an In-Place Hold

when you run the following commands, you'll see a warning that the Get-MailboxSearch cmdlet is obsolete. However, it's safe to ignore the warning for this specific scenario.

1. Create a variable that contains the properties of the In-Place Hold that you want to delete. Use the In-Place Hold GUID that you obtained when you [identified the holds on an inactive mailbox](change-the-hold-duration-for-an-inactive-mailbox.md#step-1-identify-the-holds-on-an-inactive-mailbox).

    ```powershell
    $InPlaceHold = Get-MailboxSearch -InPlaceHoldIdentity <In-Place Hold GUID>
    ```

2. Disable the hold on the In-Place Hold.

    ```powershell
    Set-MailboxSearch $InPlaceHold.Name -InPlaceHoldEnabled $false
    ```

3. Delete the In-Place Hold.

   ```powershell
    Remove-MailboxSearch $InPlaceHold.Name
    ```

#### How to remove an inactive mailbox from an In-Place Hold

1. Create a variable that contains the properties of the In-Place Hold placed on the inactive mailbox. Use the In-Place Hold GUID that you obtained when you [identified the holds on an inactive mailbox](change-the-hold-duration-for-an-inactive-mailbox.md#step-1-identify-the-holds-on-an-inactive-mailbox).

    ```powershell
    $InPlaceHold = Get-MailboxSearch -InPlaceHoldIdentity <In-Place Hold GUID>
    ```

2. Verify that the inactive mailbox is listed as a source mailbox for the In-Place Hold. 

    ```powershell
    $InPlaceHold.Sources
    ```
    
    > [!NOTE]
    > The *Sources* property of the In-Place Hold identifies the source mailboxes by their *LegacyExchangeDN* properties. Because this property uniquely identifies inactive mailboxes, using the *Sources* property from the In-Place Hold helps prevent removing the wrong mailbox. This also helps to avoid issues if two mailboxes have the same alias or SMTP address. 

3. Remove the inactive mailbox from the list of source mailboxes in the variable. Be sure to use the **LegacyExchangeDN** of the inactive mailbox that's returned by the command in the previous step. 
    
    ```powershell
    $InPlaceHold.Sources.Remove("<LegacyExchangeDN of the inactive mailbox>")
    ```
    
    For example, the following command removes the inactive mailbox for Pilar Pinilla.
    
    ```powershell
    $InPlaceHold.Sources.Remove("/o=contoso/ou=Exchange Administrative Group (FYDIBOHF23SPDLT)/cn=Recipients/ cn=9c8dfff651ec4908950f5df60cbbda06-pilarp")
    ```

4. Verify that the inactive mailbox is removed from the list of source mailboxes in the variable.
    
    ```powershell
    $InPlaceHold.Sources
    ```

5. Modify the In-Place Hold with the updated list of source mailboxes, which doesn't include the inactive mailbox.
    
    ```powershell
    Set-MailboxSearch $InPlaceHold.Name -SourceMailboxes $InPlaceHold.Sources
    ```

6. Verify that the inactive mailbox is removed from the list of source mailboxes for the In-Place Hold.

    ```powershell
    Get-MailboxSearch $InPlaceHold.Name | FL Sources
    ```

## More information

- **An inactive mailbox is a type of soft-deleted mailbox.** In Exchange Online, a soft-deleted mailbox is a mailbox that's been deleted but can be recovered within a specific retention period. For soft-deleted mailboxes that aren't on hold, the mailbox is recoverable within 30 days. An inactive mailbox (a mailbox on hold before it was deleted) will remain in a soft-deleted with hold state until the hold is removed. After the hold is removed from an inactive mailbox, the mailbox will no longer be in an inactive state. Instead it will become soft-deleted and remain in Exchange Online for 30 days from the day the hold was removed and recoverable during that time. After 30 days, a soft-deleted mailbox is marked for permanent deletion and can't be recovered.

- <a name="automatic-deletion"></a>**What happens after you remove the last hold on an inactive mailbox?** The mailbox is treated like other soft-deleted mailboxes and is marked for permanent deletion after the 30-day soft-deleted mailbox retention period expires. This retention period starts on the date when the last hold is removed from the inactive mailbox. The *InactiveMailboxRetireTime* property is set when the mailbox transitions from being inactive (soft-deleted on hold) to no longer being inactive (soft-deleted with no holds). At that point, the *InactiveMailboxRetireTime* property is set to the current date when the transition occurred. There is an assistant that runs (called the *MailboxLifeCycle* assistant) that looks for mailboxes that have the *InactiveMailboxRetireTime* property set. If "InactiveMailboxRetireTime + 30 days" is less than the current date, then it will purge the mailbox.

- **Is an inactive mailbox permanently deleted immediately after all holds are removed?** A formerly inactive mailbox will be available in the soft-deleted state for 30 days. After 30 days, the mailbox will be marked for permanent deletion.

- **How do you display information about an inactive mailbox after all holds are removed?** After all holds are removed and the inactive mailbox is reverted back to a soft-deleted mailbox, it won't be returned by using the  *InactiveMailboxOnly*  parameter with the **Get-Mailbox** cmdlet. But you can display information about the mailbox by using the **Get-Mailbox -SoftDeletedMailbox** command. For example:

  ```text
  Get-Mailbox -SoftDeletedMailbox -Identity pilarp | FL Name,Identity,LitigationHoldEnabled,In
  Placeholds,WhenSoftDeleted,IsInactiveMailbox,WasInactiveMailbox,InactiveMailboxRetireTime
  Name                   : pilarp
  Identity               : Soft Deleted Objects\pilarp
  LitigationHoldEnabled  : False
  InPlaceHolds           : {}
  WhenSoftDeleted        : 6/16/2022 1:19:04 AM
  IsInactiveMailbox      : False
  WasInactiveMailbox     : True
  InactiveMailboxRetireTime : 9/30/2022 11:16:23 PM
  ```

  In the above example, the *WhenSoftDeleted* property identifies the soft-deleted date, which in this example is June 16, 2022. The *WasInactiveMailbox* property is listed as `True` because it was previously an inactive mailbox. The mailbox will be permanently deleted 30 days after September 30, 2022.
