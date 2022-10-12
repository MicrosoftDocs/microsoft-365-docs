---
title: "Change the hold duration for an inactive mailbox"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 8/29/2017
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
ms.assetid: bdee24ed-b8cf-4dd0-92ae-b86ec4661e6b
ms.custom:
- seo-marvel-apr2020
description: "After an Office 365 mailbox is made inactive, change the duration of the hold or Office 365 retention policy assigned to the inactive mailbox."
---

# Change the hold duration for an inactive mailbox

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

An [inactive mailbox](inactive-mailboxes-in-office-365.md) is mailbox state that is used to retain a former employee's email after they leave your organization. A mailbox becomes inactive when an applicable hold is applied to it before the Microsoft 365 user object is deleted.  The following types of holds will initiate the creation of an inactive mailbox upon user account deletion:

- [Microsoft 365 retention policies and labels](retention.md) with retain or retain and delete settings

- A hold associated with an [eDiscovery](ediscovery.md) case

- [Litigation Hold](create-a-litigation-hold.md)

- An existing In-Place Hold.

> [!IMPORTANT]
> While any of the above holds will force a mailbox to become inactive upon Microsoft 365 user account deletion, it is strongly recommended that you use Microsoft 365 retention when proactively planning to utilize inactive mailboxes.
>
> - eDiscovery holds are intended for specific, time-bound cases related to a legal issue. At some point, a legal case will probably end and the holds associated with the case will be removed and the eDiscovery case will be closed (or deleted). If a hold that's placed on an inactive mailbox is associated with an eDiscovery case, and the hold is released or the eDiscovery case is closed or deleted, the inactive mailbox will be permanently deleted.
>
> - In-Place Holds in the Exchange admin center are now retired. As of July 1, 2020, new In-Place Holds were unable to be created in Exchange Online. As of October 1, 2020, the hold duration of in-place holds could no longer be changed. Any inactive mailbox that has an In-Place Hold applied can only be deleted by removing the In-Place Hold. Existing inactive mailboxes that are on In-Place Hold will continue to be preserved until the hold is removed. For more information about In-Place Holds retirement, see [Retirement of legacy eDiscovery tools](legacy-ediscovery-retirement.md).
>
> - [Litigation hold](create-a-litigation-hold.md) remains supported as an alternative method to retain content in a mailbox and make it inactive after a user account is deleted. However, as an older technology, we recommend you use Microsoft 365 retention instead.

Once made inactive, the contents of the mailbox including the [Recoverable Items folder](/exchange/security-and-compliance/recoverable-items-folder/recoverable-items-folder) are retained until the hold that was placed on the mailbox before it was made inactive no longer applies.  

If the applicable hold is not time-based, such as a hold associated with an indefinite retain-only Microsoft 365 retention policy or label, an eDiscovery case or Litigation Hold (without a ```LitigationHoldDuration``` configured), the mailbox content will be retained indefinitely until the hold is removed.  

However, if the hold is time-based, the mailbox content will be retained until the hold duration expires, at which point any items in the Recoverable Items folder will be permanently deleted (purged) from the inactive mailbox.

> [!NOTE]
> For inactive mailboxes, we recommend using a retain and delete setting for your Microsoft 365 retention policy or labels.  If you choose a retain only setting, the Recoverable Items folder will purge at the end of the hold duration, however any other non-deleted items will remain within the inactive mailbox indefinitely.

As regulations and policies evolve, there may be some situations in which you need to change the duration of the hold assigned to the inactive mailbox.  The following steps outline how to do this.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Connect to PowerShell

As we mentioned before, many different types of holds can trigger the creation of an inactive mailbox.  For this reason, in order to change the hold duration applied to the inactive mailbox, you must first identify what type of holds are affecting it.  To do this, you must use Exchange Online PowerShell to identify the types of holds and, if the inactive mailbox is affected by Microsoft 365 retention policies or labels you must also use Security & Compliance PowerShell to identify the specific policies.

- To connect to Exchange Online PowerShell or Security & Compliance PowerShell, see one of the following topics:

  - [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell)

  - [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell)

## Step 1: Identify the holds on an inactive mailbox

Because different types of holds or one or more Microsoft 365 retention policies might be placed on an inactive mailbox, the first step is to identify the holds on an inactive mailbox.
  
Run the following command in Exchange Online PowerShell to display the hold information for a specific inactive mailbox in your organization.
  
```powershell
Get-Mailbox -Identity <identity of inactive mailbox> -InactiveMailboxOnly | FL DisplayName,Name,DistinguishedName,ExchangeGuid,IsInactiveMailbox,LitigationHoldEnabled,LitigationHoldDuration,LitigationHoldDate,LitigationHoldOwner,InPlaceHolds,ComplianceTagHoldApplied
```

If you need to identify the type of hold for multiple inactive mailboxes and your organization has a large number of them, it may become unmanageable to view using PowerShell. In this case, you can export all of the applicable information to a CSV file using the following command and modifying the ```Path``` as needed for your environment:

```powershell
Get-Mailbox -InactiveMailboxOnly -ResultSize Unlimited | Select DisplayName,Name,DistinguishedName,ExchangeGuid,IsInactiveMailbox,LitigationHoldEnabled,LitigationHoldDuration,LitigationHoldDate,LitigationHoldOwner,InPlaceHolds,ComplianceTagHoldApplied | Export-Csv -NoTypeInformation -Path "C:\Temp\InactiveMailboxHoldTypes.csv"
```

For the purposes of this example, the following shows results for six inactive mailboxes with different possible hold types.

> [!NOTE]
> Multiple holds including multiple types of holds can apply to a single inactive mailbox.
  
```text
DisplayName              : Ann Beebe
Name                     : annb
DistinguishedName        : CN=annb,OU=Soft Deleted
                           Objects,OU=contoso.onmicrosoft.com,OU=Microsoft Exchange
                           Hosted Organizations,DC=NAMPR06A007,DC=PROD,DC=OUTLOOK,DC=COM
ExchangeGuid             : 664ef44e-c1a0-47b0-9553-2ecdfc6ef840
IsInactiveMailbox        : True
LitigationHoldEnabled    : True
LitigationHoldDuration   : 365.00:00:00
LitigationHoldDate       : 10/25/2021 6:54:57 PM
LitigationHoldOwner      : admin@contoso.com
InPlaceHolds             : {}
ComplianceTagHoldApplied : False
...
DisplayName              : Carol Olson
Name                     : carolo
DistinguishedName        : CN=carolo,OU=Soft Deleted
                           Objects,OU=contoso.onmicrosoft.com,OU=Microsoft Exchange
                           Hosted Organizations,DC=NAMPR06A007,DC=PROD,DC=OUTLOOK,DC=COM
ExchangeGuid             : e646a369-00bf-43d3-837a-8eae8b301d44
IsInactiveMailbox        : True
LitigationHoldEnabled    : False
LitigationHoldDuration   : Unlimited
LitigationHoldDate       :
LitigationHoldOwner      :
InPlaceHolds             : {mbxcdbbb86ce60342489bff371876e7f224:3}
ComplianceTagHoldApplied : False
...
DisplayName              : Megan Bowen
Name                     : meganb
DistinguishedName        : CN=meganb,OU=Soft Deleted
                           Objects,OU=contoso.onmicrosoft.com,OU=Microsoft Exchange
                           Hosted Organizations,DC=NAMPR06A007,DC=PROD,DC=OUTLOOK,DC=COM
ExchangeGuid             : 36ec77cb-c524-468a-a8e8-bfb75e01a176
IsInactiveMailbox        : True
LitigationHoldEnabled    : False
LitigationHoldDuration   : Unlimited
LitigationHoldDate       :
LitigationHoldOwner      :
InPlaceHolds             : {mbx6fe063689d404a5bb9940eed0f0bf5d2:1}
ComplianceTagHoldApplied : True
...
DisplayName              : Mario Necaise
Name                     : marion
DistinguishedName        : CN=marion,OU=Soft Deleted
                           Objects,OU=contoso.onmicrosoft.com,OU=Microsoft Exchange
                           Hosted Organizations,DC=NAMPR06A007,DC=PROD,DC=OUTLOOK,DC=COM
ExchangeGuid             : 0579e039-a695-40d5-8f0a-0dc04f4b4c8f
IsInactiveMailbox        : True
LitigationHoldEnabled    : False
LitigationHoldDuration   : Unlimited
LitigationHoldDate       :
LitigationHoldOwner      :
InPlaceHolds             : {}
ComplianceTagHoldApplied : False
...
DisplayName              : Abraham McMahon
Name                     : abrahamm
DistinguishedName        : CN=abrahamm,OU=Soft Deleted
                           Objects,OU=contoso.onmicrosoft.com,OU=Microsoft Exchange
                           Hosted Organizations,DC=NAMPR06A007,DC=PROD,DC=OUTLOOK,DC=COM
ExchangeGuid             : 55ad8905-4e68-4c8d-940d-e068ec6b51fc
IsInactiveMailbox        : True
LitigationHoldEnabled    : False
LitigationHoldDuration   : Unlimited
LitigationHoldDate       :
LitigationHoldOwner      :
InPlaceHolds             : {UniH7d895d48-7e23-4a8d-8346-533c3beac15d}
ComplianceTagHoldApplied : False
...
DisplayName              : Pilar Pinilla
Name                     : pilarp
DistinguishedName        : CN=pilarp,OU=Soft Deleted
                           Objects,OU=contoso.onmicrosoft.com,OU=Microsoft Exchange
                           Hosted Organizations,DC=NAMPR06A007,DC=PROD,DC=OUTLOOK,DC=COM
ExchangeGuid             : 8d7867d6-bb6d-4cd8-a51f-09d208f97fcc
IsInactiveMailbox        : True
LitigationHoldEnabled    : False
LitigationHoldDuration   : Unlimited
LitigationHoldDate       :
LitigationHoldOwner      :
InPlaceHolds             : {c0ba3ce811b6432a8751430937152491}
ComplianceTagHoldApplied : False
```

The following table identifies the six different hold types that were used to make each mailbox inactive from the above example.
  
|**Inactive mailbox**|**Hold type**|**How to identify the hold on the inactive mailbox**|
|:-----|:-----|:-----|
|Ann Beebe  <br/> |Litigation Hold  <br/> | The  `LitigationHoldEnabled`  property is set to  `True` indicating the mailbox is on Litigation Hold. <br/><br/> Additionally, the `LitigationHoldDuration` is set to `365.00:00:00` indicating that mailbox items will no longer be subject to litigation hold 365 days after their creation date (sent/received).  <br/><br/> The `LitigationHoldDate` indicates the date LitigationHold was enabled and `LitigationHoldOwner` identifies the person who initiated the litigation hold. <br/> |
|Carol Olson  <br/> |Microsoft 365 retention policy from the Microsoft Purview compliance portal that is applied to specific mailboxes  <br/> |The  `InPlaceHolds`  property contains the GUID of the Microsoft 365 retention policy that's applied to the inactive mailbox. You can tell this is a retention policy that applied to specific mailboxes because the GUID starts with the `mbx` prefix and ends in a `:2` or `:3`. <br/><br/> For more information, see [Understanding the format of the InPlaceHolds value for retention policies](identify-a-hold-on-an-exchange-online-mailbox.md#understanding-the-format-of-the-inplaceholds-value-for-retention-policies).  <br/> |
|Megan Bowen <br/> | Microsoft 365 retention label with a retain or retain and delete action is applied to at least one item in the mailbox  <br/> |The `ComplianceTagHoldApplied` property is `True` indicating an item has been labeled with a retain or retain and delete label.  <br/><br/> Additionally, the `InPlaceHolds` property contains the GUID of the Microsoft 365 retention label policy that's applied to the inactive mailbox.  <br/><br/> For more information, see [Identifying mailboxes on hold because a retention label has been applied to a folder or item](identify-a-hold-on-an-exchange-online-mailbox.md#identifying-mailboxes-on-hold-because-a-retention-label-has-been-applied-to-a-folder-or-item) <br/>  |
|Mario Necaise  <br/> |Organization-wide Microsoft 365 retention policy from the Microsoft Purview compliance portal <br/> |The  `InPlaceHolds`  property is empty, `LitigationHoldEnabled` is `False` and `ComplianceTagHoldApplied` is `False`. This indicates that one or more entire (Exchange) location Microsoft 365 retention policies applied to the organization which the inactive mailbox is inheriting. <br/><br/> For more information, see [How to confirm that an organization-wide retention policy is applied to a mailbox](identify-a-hold-on-an-exchange-online-mailbox.md#how-to-confirm-that-an-organization-wide-retention-policy-is-applied-to-a-mailbox) <br/> |
|Abraham McMahon  <br/> |eDiscovery case hold in the Microsoft Purview compliance portal  <br/> |The  `InPlaceHolds`  property contains the GUID of the eDiscovery case hold that's placed on the inactive mailbox. You can tell this is an eDiscovery case hold because the GUID starts with the  `UniH` prefix.  <br/><br/> For more information, see [eDiscovery holds](identify-a-hold-on-an-exchange-online-mailbox.md#ediscovery-holds). <br/> |
|Pilar Pinilla  <br/> |In-Place Hold  <br/> |The  `InPlaceHolds`  property contains the GUID of the In-Place Hold that's placed on the inactive mailbox. You can tell this is an In-Place Hold because the GUID doesn't start with a prefix.  <br/><br/> **NOTE**: As of October 1, 2020, the hold duration of in-place holds can no longer be changed. You can only remove an In-Place Hold which will result in the deletion of the inactive mailbox. <br/><br/> For more information, see [Retirement of legacy eDiscovery tools](legacy-ediscovery-retirement.md). <br/> |

## Step 2: Change the hold duration for an inactive mailbox

After you identify what type of hold is placed on the inactive mailbox (and whether there are multiple holds), the next step is to change the duration for the hold.  The process varies depending on the type of hold applied.

- [Change the duration for a Microsoft 365 retention policy](#change-the-duration-for-a-microsoft-365-retention-policy)

- [Change the duration for a Microsoft 365 retention label](#change-the-duration-for-a-microsoft-365-retention-label)

- [Change the duration for an eDiscovery Hold](#change-the-duration-for-an-ediscovery-hold)

- [Change the duration for a Litigation Hold](#change-the-duration-for-a-litigation-hold)

- [Change the duration for an In-Place Hold](#change-the-duration-for-an-in-place-hold)

### Change the duration for a Microsoft 365 retention policy

In order to modify the hold duration for a Microsoft 365 retention policy, you must first identify the policy affecting the inactive mailbox by running `Get-RetentionCompliancePolicy` with the associated GUID from the `InPlaceHolds` property on the mailbox in Security & Compliance PowerShell.

Be sure to remove the prefix and suffix from the GUID when running this command.  For example, using the sample information from above, you would take the `InPlaceHolds` value of `mbxcdbbb86ce60342489bff371876e7f224:3` then remove `mbx` and `:3` resulting in a policy GUID of `cdbbb86ce60342489bff371876e7f224`.  In this example, you'd want to run:

```powershell
Get-RetentionCompliancePolicy cdbbb86ce60342489bff371876e7f224 | FL Name
```

Once you know the name of the policy, you can simply modify the retention policy in the Microsoft Purview compliance portal.  Be aware that retention policies are typically applied to more than one location, so modifying the policy will affect all applied locations - both inactive and active, which may also include locations other than Exchange.  For more information, see [Create and configure retention policies](create-retention-policies.md).  

> [!IMPORTANT]
> Retention policies with [preservation lock](retention-preservation-lock.md) enabled can have the retention period extended, but not decreased or removed.

If the intention is to modify the retention period for only inactive mailboxes, or only specific inactive mailboxes, you may consider deploying [adaptive policy scopes](retention.md#adaptive-or-static-policy-scopes-for-retention), which can be used to individually target specific mailboxes - or mailbox types, such as inactive mailboxes - using Azure AD and Exchange attributes and properties.

### Change the duration for a Microsoft 365 retention label

As with retention policies, when modifying the hold duration of a Microsoft 365 retention label, you must first identify the policy which publishes the label affecting the content within the inactive mailbox by running `Get-RetentionCompliancePolicy` with the associated GUID from the `InPlaceHolds` property on the mailbox in Security & Compliance PowerShell.

Be sure to remove the prefix and suffix from the GUID when running this command.  For example, using the sample information from above, you would take the `InPlaceHolds` value of `mbx6fe063689d404a5bb9940eed0f0bf5d2:1` then remove `mbx` and `:1` resulting in a policy GUID of `6fe063689d404a5bb9940eed0f0bf5d2`.  In this example, you'd want to run:

```powershell
Get-RetentionCompliancePolicy 6fe063689d404a5bb9940eed0f0bf5d2 | FL Name
```

Once you've identified the policy, you will know which labels have been published and their settings.  Because labels apply to individual items, depending on the number of labels published with the policy and their settings, you may not be able to directly identify which label is affecting the content.  

One method that you can use to identify the content each label applies to is using [Content Search](content-search.md).  For example, using the sample information from above, assume the policy publishes several labels, one of which is named "HR-Content".  With the [correct permissions](microsoft-365-compliance-center-permissions.md), a Content Search can be run with the [New-ComplianceSearch PowerShell command](/powershell/module/exchange/new-compliancesearch), specifying the inactive mailbox's primary SMTP address, pre-pended with a period (`.`), and the `-AllowNotFoundExchangeLocationsEnabled $true` parameter to skip validation:

```powershell
New-ComplianceSearch -Name "MeganB Inactive Mailbox HR-Content Label Search" -ExchangeLocation .meganb@contoso.onmicrosoft.com -AllowNotFoundExchangeLocationsEnabled $true -ContentMatchQuery "compliancetag=HR-Content"
```

Once the search is created, you will start the search using the following command:

```powershell
Start-ComplianceSearch "MeganB Inactive Mailbox HR-Content Label Search"
```

Using this method, you can then identify which labels from the identified label policy apply to content within the inactive mailbox so that you can modify their retention periods. Be aware that retention labels are typically applied to more than one location, so modifying a label will affect all applied locations and labeled content, which may also include locations and content other than Exchange. For more information, see [Publish retention labels and apply them in apps](create-apply-retention-labels.md).

> [!NOTE]
> Not all types of retention labels can be modified.  For some labels, you may only be able to increase the time of retention, and for others you may not be able to modify the retention period at all.

### Change the duration for an eDiscovery Hold

Holds associated with eDiscovery cases are indefinite holds, which means there's no hold duration that can be changed. Items are held forever or until the [hold is removed](create-ediscovery-holds.md#removing-content-locations-from-an-ediscovery-hold) or the case is closed.
  
### Change the duration for a Litigation Hold

You must use Exchange Online PowerShell to change the hold duration for a Litigation Hold that is placed on an inactive mailbox. You can't use the EAC. Run the following command to change the hold duration. In this example, the hold duration is changed to an unlimited period of time:
  
```powershell
Set-Mailbox -InactiveMailbox -Identity <identity of inactive mailbox> -LitigationHoldDuration unlimited
```

The result is that items in the inactive mailbox are retained indefinitely or until the hold is removed or the hold duration is changed to a different value.
  
> [!TIP]
> The best way to identify an inactive mailbox is by using its **Distinguished Name** or **Exchange GUID** value. Using one of these values helps prevent accidentally specifying the wrong mailbox.

### Change the duration for an In-Place Hold

In-Place Holds have been retired and can no longer be modified. If an inactive mailbox has an In-Place Hold applied to it, you can't change the hold duration. You can only remove the In-Place Hold, which will result in the deletion of the inactive mailbox. For more information, see [Delete an inactive mailbox](delete-an-inactive-mailbox.md#remove-in-place-holds).
  
## More information

- **How is the hold duration calculated for an item in an inactive mailbox?** The duration is calculated from the original date a mailbox item was received or created.
    
- **What happens when the hold duration expires?** When the hold duration expires for a mailbox item in the Recoverable Items folder, the item is permanently deleted (purged) from the inactive mailbox. If there's no duration specified for the hold placed on the inactive mailbox, items in the Recoverable Items folder are never purged (unless the hold duration for the inactive mailbox is changed). 
    
- **Is an Exchange MRM policy still processed on inactive mailboxes?**  If an MRM retention policy was applied to a mailbox before it went inactive, any deletion policies (MRM retention tags configured with a **Delete** action) will continue to be processed on the inactive mailbox. That means items that are tagged with an MRM deletion policy will be moved to the Recoverable Items folder when the retention period expires. Those items are purged from the inactive mailbox when the hold duration expires. If a hold duration isn't specified for the inactive mailbox, items in the Recover Items folder will be retained indefinitely.

    Conversely, any archive policies (MRM retention tags configured with a **MoveToArchive** action) that are included in the MRM retention policy assigned to an inactive mailbox are ignored. That means items in an inactive mailbox that are tagged with an archive policy remain in the primary mailbox when the retention period expires. They're not moved to the archive mailbox or to the Recoverable Items folder in the archive mailbox. They will be retained indefinitely.
    > [!NOTE]
    > Applying an Exchange retention policy (the messaging records management, or MRM, feature in Exchange Online) does not create an inactive mailbox when the user account is deleted.

- **As with regular mailboxes, the Managed Folder Assistant (MFA) also processes inactive mailboxes.** In Exchange Online, the MFA processes mailboxes approximately once every seven days. After you change the hold duration for an inactive mailbox, you can use the **Start-ManagedFolderAssistant** cmdlet to immediately start processing the new hold duration for the inactive mailbox. Run the following command. 

    ```powershell
    Start-ManagedFolderAssistant -InactiveMailbox <identity of inactive mailbox>
    ```
   
- **If many `InPlaceHolds` are placed on an inactive mailbox, not all of the hold GUIDs will be displayed.** You can run the following command to display the GUIDs for all `InPlaceHolds` that are placed on an inactive mailbox.
    
    ```powershell
    Get-Mailbox -InactiveMailboxOnly -Identity <identity of inactive mailbox> | Select-Object -ExpandProperty InPlaceHolds
    ```
