---
title: "Delete an inactive mailbox"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
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

An inactive mailbox is used to preserve a former employee's email after they leave your organization. When you no longer need to preserve the contents of an inactive mailbox, you can permanently delete the inactive mailbox by removing the hold. Also, it's possible that multiple holds might be placed on an inactive mailbox. For example, an inactive mailbox might be placed on Litigation Hold and on one or more In-Place Holds. Additionally, Microsoft 365 retention might be applied to the inactive mailbox. You have to remove all holds and retention policies from an inactive mailbox to delete it. After you remove the holds and retention policies, the inactive mailbox is marked for deletion and is permanently deleted after it's processed.
  
> [!IMPORTANT]
> As we continue to invest in different ways to preserve mailbox content, we're announcing the retirement of In-Place Holds in the Exchange admin center. That means you should use Litigation Holds and retention policies to create an inactive mailbox. Starting July 1, 2020 you won't be able to create new In-Place Holds in Exchange Online. But you'll still be able to change the hold duration of an In-Place Hold placed on an inactive mailbox. However, starting October 1, 2020, you won't be able to change the hold duration. You'll only be able to delete an inactive mailbox by removing the In-Place Hold. Existing inactive mailboxes that are on In-Place Hold will still be preserved until the hold is removed. For more information about the retirement of In-Place Holds, see [Retirement of legacy eDiscovery tools](legacy-ediscovery-retirement.md).
  
See the [More information](#more-information) section for a description of what happens after holds are removed from an inactive mailbox.
  
## Before you delete an inactive mailbox

- You must use Exchange Online PowerShell to remove holds from an inactive mailbox. You can't use the Exchange admin center (EAC) or the Microsoft Purview compliance portal for these procedures. For step-by-step instructions to use Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You can copy the contents of an inactive mailbox to another mailbox before you remove the hold and delete an inactive mailbox. For details, see [Restore an inactive mailbox in Office 365](restore-an-inactive-mailbox.md).

- If you remove the hold or retention policy from an inactive mailbox and the soft-deleted mailbox retention period for the mailbox has expired, the mailbox will be permanently deleted after the 183-day soft-deleted mailbox retention period expires. For more information about the soft-deleted mailbox retention period, see the [More information](#more-information) section in this article. After the inactive mailbox is permanently deleted, it can't be recovered. Before you remove the hold, be sure that you no longer need the contents in the mailbox. If you want to reactivate an inactive mailbox, you can recover it. For details, see [Recover an inactive mailbox in Office 365](recover-an-inactive-mailbox.md).

- For more information about inactive mailboxes, see [Learn about inactive mailboxes](inactive-mailboxes-in-office-365.md).

## Step 1: Identify the holds on an inactive mailbox

As previously stated, a Litigation Hold, In-Place Hold, or retention policy might be placed on an inactive mailbox. The first step is to identify the holds on an inactive mailbox.
  
[Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell)and then run the following command to display the hold information for all inactive mailboxes in your organization.
  
```powershell
Get-Mailbox -InactiveMailboxOnly | FL DisplayName,Name,IsInactiveMailbox,LitigationHoldEnabled,InPlaceHolds
```

The value of **True** for the **LitigationHoldEnabled** property indicates that the inactive mailbox is on Litigation Hold. If an In-Place Hold is placed on an inactive mailbox, the GUID for the hold is displayed as the value for the **InPlaceHolds** property. For example, the following results for two inactive mailboxes show that a Litigation Hold is placed on Ann Beebe and that an In-Place Hold and retention policy are placed on Pilar Pinilla.
  
```text
DisplayName           : Ann Beebe
Name                  : annb
IsInactiveMailbox     : True
LitigationHoldEnabled : True
InPlaceHolds          : {}
...
DisplayName           : Pilar Pinilla
Name                  : pilarp
IsInactiveMailbox     : True
LitigationHoldEnabled : False
InPlaceHolds          : {c0ba3ce811b6432a8751430937152491, mbxba6f4ba25b62490aaaa253eea27426ab}
```

> [!TIP]
> If a lot of In-Place Holds or retention policies are placed on an inactive mailbox, not all of the In-Place Hold GUIDs will be displayed. You can run the following command to display all the GUIDs in the InPlaceHolds property:  `Get-Mailbox -InactiveMailboxOnly -Identity <identity of inactive mailbox> | Select-Object -ExpandProperty InPlaceHolds`
  
For more information about identify holds, see [How to identify the type of hold placed on a mailbox](identify-a-hold-on-an-exchange-online-mailbox.md).

## Step 2: Remove a hold from an inactive mailbox

After you identify what type of hold is placed on the inactive mailbox (and whether there are multiple holds), the next step is to remove the holds on the mailbox. As previously stated, you have to remove all holds to permanently delete an inactive mailbox.
  
### Remove a Litigation Hold

Run the following PowerShell command to remove a Litigation Hold.
  
```powershell
Set-Mailbox -InactiveMailbox -Identity <identity of inactive mailbox> -LitigationHoldEnabled $false
```

> [!TIP]
> The best way to identify an inactive mailbox is by using its Distinguished Name or Exchange GUID value. Using one of these values helps prevent accidentally specifying the wrong mailbox. 
  
### Remove an inactive mailbox from a retention policy

The procedure to remove an inactive mailbox from a Microsoft 365 retention policy depends whether the retention policy assigned to the inactive mailbox is organization-wide or explicit:

- Organization-wide retention policies assigned to all mailboxes in the organization. Use the **Get-OrganizationConfig** cmdlet in Exchange Online PowerShell to get information about organization-wide retention policies.

- Specific location retention policies assigned to specific mailboxes. These are policies that are assigned to the content locations of specific users. Use the **Get-Mailbox -IncludeInactiveMailbox** cmdlet in Exchange Online PowerShell to get information about retention policies assigned to specific inactive mailboxes.

#### Remove an inactive mailbox from an organization-wide retention policy

Run the following PowerShell command to exclude an inactive mailbox from an organization-wide retention policy.

```powershell
Set-Mailbox <identity of inactive mailbox> -ExcludeFromOrgHolds <retention policy GUID without prefix or suffix>
```

For more information identifying organization-wide retention policies applied to an inactive mailbox and obtaining the GUID for a retention policy, see the "Get-OrganizationConfig" section in [How to identify the type of hold placed on a mailbox](identify-a-hold-on-an-exchange-online-mailbox.md#get-organizationconfig).

Alternatively, you can run the following PowerShell command to remove the inactive mailbox from all organization-wide policies:

```powershell
Set-Mailbox <identity of inactive mailbox> -ExcludeFromAllOrgHolds
```

#### Remove an inactive mailbox from a specific location retention policy

Use [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell) to remove an inactive mailbox from an explicit retention policy:

```powershell
Set-RetentionCompliancePolicy -Identity <retention policy GUID without prefix or suffix> -RemoveExchangeLocation <identity of inactive mailbox>
```

For more information about identifying specific location retention policies that are applied to an inactive mailbox, and obtaining the GUID for a retention policy, see the "Get-Mailbox" section in [How to identify the type of hold placed on a mailbox](identify-a-hold-on-an-exchange-online-mailbox.md#get-mailbox).

### Remove In-Place Holds

 There are two ways to remove an In-Place Hold from an inactive mailbox:
  
- **Delete the In-Place Hold object**. If the inactive mailbox that you want to permanently delete is the only source mailbox for an In-Place Hold, you can just delete the In-Place Hold object. 

    > [!NOTE]
    > You have to disable the hold before you can delete an In-Place Hold object. If you try to delete an In-Place Hold object that has the hold enabled, you'll receive an error message. 
  
- **Remove the inactive mailbox as a source mailbox of an In-Place Hold**. If you want to retain other source mailboxes for an In-Place Hold, you can remove the inactive mailbox from the list of source mailboxes and keep the In-Place Hold object.

#### Delete an In-Place Hold

1. Create a variable that contains the properties of the In-Place Hold that you want to delete. Use the In-Place Hold GUID that you obtained in [Step 1: Identify the holds on an inactive mailbox](#step-1-identify-the-holds-on-an-inactive-mailbox).

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

#### Remove an inactive mailbox from an In-Place Hold

If the In-Place Hold contains a large number of source mailboxes, it's possible the inactive mailbox won't be listed on the **Sources** page in the EAC. Up to 3,000 mailboxes are displayed on the **Sources** page when you edit an In-Place Hold. If an inactive mailbox isn't listed on the **Sources** page, you can use Exchange Online PowerShell to remove it from the In-Place Hold. 
  
1. Create a variable that contains the properties of the In-Place Hold placed on the inactive mailbox. Use the In-Place Hold GUID that you obtained in [Step 1: Identify the holds on an inactive mailbox](#step-1-identify-the-holds-on-an-inactive-mailbox).

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

- **An inactive mailbox is a type of soft-deleted mailbox.** In Exchange Online, a soft-deleted mailbox is a mailbox that's been deleted but can be recovered within a specific retention period. For soft-deleted mailboxes that aren't on hold, the mailbox is recoverable within 30 days. An inactive mailbox (a mailbox on hold before it was deleted) will remain in a soft-deleted with hold state until the hold is removed. After the hold is removed from an inactive mailbox, the mailbox will no longer be in an inactive state. Instead it will become soft-deleted and remain in Exchange Online for 183 days from the day the hold was removed and recoverable during that time. After 183 days, a soft-deleted mailbox is marked for permanent deletion and can't be recovered.

- **What happens after you remove the hold on an inactive mailbox?** The mailbox is treated like other soft-deleted mailboxes and is marked for permanent deletion after the 183-day soft-deleted mailbox retention period expires. This retention period starts on the date when the hold is removed from the inactive mailbox. The *InactiveMailboxRetireTime* property is set when the mailbox transitions from being inactive (soft-deleted on hold) to no longer being inactive (soft-deleted with no holds). At that point, the *InactiveMailboxRetireTime* property is set to the current date when the transition occurred. There is an assistant that runs (called the *MailboxLifeCycle* assistant) that looks for mailboxes that have the *InactiveMailboxRetireTime* property set. If "InactiveMailboxRetireTime + 183 days" is less than the current date, then it will purge the mailbox.

- **Is an inactive mailbox permanently deleted immediately after the hold is removed?** A formerly inactive mailbox will be available in the soft-deleted state for 183 days. After 183 days, the mailbox will be marked for permanent deletion.

- **How do you display information about an inactive mailbox after the hold is removed?** After a hold is removed and the inactive mailbox is reverted back to a soft-deleted mailbox, it won't be returned by using the  *InactiveMailboxOnly*  parameter with the **Get-Mailbox** cmdlet. But you can display information about the mailbox by using the **Get-Mailbox -SoftDeletedMailbox** command. For example:

  ```text
  Get-Mailbox -SoftDeletedMailbox -Identity pilarp | FL Name,Identity,LitigationHoldEnabled,In
  Placeholds,WhenSoftDeleted,IsInactiveMailbox,WasInactiveMailbox,InactiveMailboxRetireTime
  Name                   : pilarp
  Identity               : Soft Deleted Objects\pilarp
  LitigationHoldEnabled  : False
  InPlaceHolds           : {}
  WhenSoftDeleted        : 6/16/2020 1:19:04 AM
  IsInactiveMailbox      : False
  WasInactiveMailbox     : True
  InactiveMailboxRetireTime : 9/30/2020 11:16:23 PM
  ```

  In the above example, the *WhenSoftDeleted* property identifies the soft-deleted date, which in this example is June 16, 2020. The *WasInactiveMailbox* property is listed as `True` because it was previously an inactive mailbox. The mailbox will be permanently deleted 183 days after September 30, 2020.
