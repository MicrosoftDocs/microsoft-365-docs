---
title: "Change the hold duration for an inactive mailbox in Office 365"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 8/29/2017
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid: MOE150
ms.assetid: bdee24ed-b8cf-4dd0-92ae-b86ec4661e6b
description: "After an Office 365 mailbox is made inactive, you can change the duration of the hold or Office 365 retention policy assigned to the inactive mailbox. The hold duration defines how long items in the Recoverable Items folder are held."
---

# Change the hold duration for an inactive mailbox in Office 365

An inactive mailbox is used to retain a former employee's email after he or she leaves your organization. A mailbox becomes inactive when a Litigation Hold, an In-Place Hold, an Office 365 retention policy, or a hold that's associated with an eDiscovery case is placed on the mailbox, and the corresponding Office 365 user account is deleted. The contents of an inactive mailbox are retained for the duration of the hold that was placed on the mailbox before it was made inactive. The hold duration defines how long items in the Recoverable Items folder are held. When the hold duration expires for an item in the Recoverable Items folder, the item is permanently deleted (purged) from the inactive mailbox. After a mailbox is made inactive, you can change the duration of the hold or Office 365 retention policy assigned to the inactive mailbox.
  
> [!IMPORTANT]
> We've postponed the July 1, 2017 deadline for creating new In-Place Holds to make a mailbox inactive. But later this year or early next year, you won't be able to create new In-Place Holds in Exchange Online. At that time, only Litigation Holds and Office 365 retention policies can be used to create an inactive mailbox. However, existing inactive mailboxes that are on In-Place Hold will still be supported, and you can continue to manage the In-Place Holds on inactive mailboxes. This includes changing the duration of an In-Place Hold and permanently deleting an inactive mailbox by removing the In-Place Hold. 
  
## Before you begin

- You have to use Exchange Online PowerShell to change the hold duration for a Litigation Hold on an inactive mailbox. You can't use the Exchange admin center (EAC). But you can use Exchange Online PowerShell or the EAC to change the hold duration for an In-Place Hold. You can use the security and compliance center or the Security & Compliance Center PowerShell to change the hold duration for an Office 365 retention policy.
    
- To connect to Exchange Online PowerShell or Security & Compliance Center PowerShell, see one of the following topics:
    
  - [Connect to Exchange Online PowerShell](https://go.microsoft.com/fwlink/p/?linkid=396554)
    
  - [Connect to Office 365 Security & Compliance Center PowerShell](https://go.microsoft.com/fwlink/?linkid=799771)
    
- Holds associated with eDiscovery cases are infinite holds, which means there's no hold duration that can be changed. Items are held forever or until the hold is removed and the inactive mailbox is deleted.
    
- For more information about inactive mailboxes, see [Inactive mailboxes in Office 365](inactive-mailboxes-in-office-365.md).
    
## Step 1: Identify the holds on an inactive mailbox

Because different types of holds or one or more Office 365 retention policies might be placed on an inactive mailbox, the first step is to identify the holds on an inactive mailbox.
  
Run the following command in Exchange Online PowerShell to display the hold information for all inactive mailboxes in your organization.
  
```powershell
Get-Mailbox -InactiveMailboxOnly | FL DisplayName,Name,IsInactiveMailbox,LitigationHoldEnabled,LitigationHoldDuration,InPlaceHolds
```

The value of **True** for the **LitigationHoldEnabled** property indicates that the inactive mailbox is on Litigation Hold. If an In-Place Hold, eDiscovery hold, or Office 365 retention policy is placed on an inactive mailbox, a GUID for the hold or retention policy is displayed as the value for the **InPlaceHolds** property. For example, the following shows results for five inactive mailboxes. 
  
||
|:-----|
|
```text
DisplayName           : Ann Beebe
Name                  : annb
IsInactiveMailbox     : True
LitigationHoldEnabled : True
LitigationHoldDuration: 365.00:00:00
InPlaceHolds          : {}
...
DisplayName           : Pilar Pinilla
Name                  : pilarp
IsInactiveMailbox     : True
LitigationHoldEnabled : False
LitigationHoldDuration: Unlimited
InPlaceHolds          : {c0ba3ce811b6432a8751430937152491}
...
DisplayName           : Mario Necaise
Name                  : marion
IsInactiveMailbox     : True
LitigationHoldEnabled : False
LitigationHoldDuration: Unlimited
InPlaceHolds          : {}
...
DisplayName           : Carol Olson
Name                  : carolo
IsInactiveMailbox     : True
LitigationHoldEnabled : False
LitigationHoldDuration: Unlimited
InPlaceHolds          : {mbxcdbbb86ce60342489bff371876e7f224}
...
DisplayName           : Abraham McMahon
Name                  : abrahamm
IsInactiveMailbox     : True
LitigationHoldEnabled : False
LitigationHoldDuration: Unlimited
InPlaceHolds          : {UniH7d895d48-7e23-4a8d-8346-533c3beac15d}
```

The following table identifies the five different hold types that were used to make each mailbox inactive.
  
|**Inactive mailbox**|**Hold type**|**How to identify the hold on the inactive mailbox**|
|:-----|:-----|:-----|
|Ann Beebe  <br/> |Litigation Hold  <br/> |The  *LitigationHoldEnabled*  property is set to  `True`.  <br/> |
|Pilar Pinilla  <br/> |In-Place Hold  <br/> |The  *InPlaceHolds*  property contains the GUID of the In-Place Hold that's placed on the inactive mailbox. You can tell this is an In-Place Hold because the ID doesn't start with a prefix.  <br/> You can use the  `Get-MailboxSearch -InPlaceHoldIdentity <hold GUID> | FL` command in Exchange Online PowerShell to get information about the In-Place Hold on the inactive mailbox.  <br/> |
|Mario Necaise  <br/> |Organization-wide Office 365 retention policy in the Security & Compliance Center  <br/> |The  *InPlaceHolds*  property is empty. This indicates that one or more organization-wide or (Exchange-wide) Office 365 retention policy is applied to the inactive mailbox. In this case, you can run the  `Get-OrganizationConfig | Select-Object -ExpandProperty InPlaceHolds` command in Exchange Online PowerShell to get a list of the GUIDs for organization-wide Office 365 retention policies. The GUID for organization-wide retention policies that are applied to Exchange mailboxes start with the  `mbx` prefix; for example,  `mbxa3056bb15562480fadb46ce523ff7b02`.  <br/> <br/>To identity the Office 365 retention policy that's applied to the inactive mailbox, run the following command in Security & Compliance Center PowerShell.  <br/><br/> `Get-RetentionCompliancePolicy <retention policy GUID without prefix> | FL Name`<br/><br/>
|Carol Olson  <br/> |Office 365 retention policy in the Security & Compliance Center applied to specific mailboxes  <br/> |The  *InPlaceHolds*  property contains the GUID of the Office 365 retention policy that's applied to the inactive mailbox. You can tell this is a retention policy that applied to specific mailboxes because the GUID starts with the  `mbx` prefix. If the GUID of the retention policy applied to the inactive mailbox started with the  `skp` prefix, it would indicate that the retention policy is applied to Skype for Business conversations.  <br/><br/> To identity the Office 365 retention policy that's applied to the inactive mailbox, run the following command in Security & Compliance Center PowerShell.<br/><br/> `Get-RetentionCompliancePolicy <retention policy GUID without prefix> | FL Name` <br/><br/>Be sure to remove the  `mbx` or  `skp` prefix when you run this command.  <br/> |
|Abraham McMahon  <br/> |eDiscovery case hold in the Security & Compliance Center  <br/> |The  *InPlaceHolds*  property contains the GUID of the eDiscovery case hold that's placed on the inactive mailbox. You can tell this is an eDiscovery case hold because the GUID starts with the  `UniH` prefix.  <br/> You can use the  `Get-CaseHoldPolicy` cmdlet in Security & Compliance Center PowerShell to get information about the eDiscovery case that the hold on the inactive mailbox is associated with. For example, you can run the command  `Get-CaseHoldPolicy <hold GUID without prefix> | FL Name` to display the name of the case hold that's on the inactive mailbox. Be sure to remove the  `UniH` prefix when you run this command.  <br/><br/> To identity the eDiscovery case that the hold on the inactive mailbox is associated with, run the following commands.  <br/><br/> `$CaseHold = Get-CaseHoldPolicy <hold GUID without prefix>`<br/><br/> `Get-ComplianceCase $CaseHold.CaseId | FL Name`<br/><br/><br/> **Note:** We don't recommend using eDiscovery holds for inactive mailboxes. That's because eDiscovery cases are intended for specific, time-bound cases related to a legal issue. At some point, a legal case will probably end and the holds associated with the case will be removed and the eDiscovery case will be closed (or deleted). In fact, if a hold that's placed on an inactive mailbox is associated with an eDiscovery case, and the hold is released or the eDiscovery case is closed or deleted, the inactive mailbox will be permanently deleted. 

For more information about Office 365 retention policies, see [Overview of retention policies](retention-policies.md).
  
## Step 2: Change the hold duration for an inactive mailbox

After you identify what type of hold is placed on the inactive mailbox (and whether there are multiple holds), the next step is to change the duration for the hold. 
  
### Change the duration for a Litigation Hold

Here's how to use Exchange Online PowerShell to change the hold duration for a Litigation Hold that is placed on an inactive mailbox. You can't use the EAC. Run the following command to change the hold duration. In this example, the hold duration is changed to an unlimited period of time.
  
```powershell
Set-Mailbox -InactiveMailbox -Identity <identity of inactive mailbox> -LitigationHoldDuration unlimited
```

The result is that items in the inactive mailbox are retained indefinitely or until the hold is removed or the hold duration is changed to a different value.
  
> [!TIP]
> The best way to identify an inactive mailbox is by using its **Distinguished Name** or **Exchange GUID** value. Using one of these values helps prevent accidentally specifying the wrong mailbox. 
  
### Change the duration for an In-Place Hold

 You can use the EAC or Exchange Online PowerShell to change the hold duration for an In-Place Hold. 
  
#### Use the EAC to change the hold duration

1. If you know the name of the In-Place Hold that you want to change, go to the next step. Otherwise, run the following command to get the name of the In-Place Hold that is placed on the inactive mailbox. Use the In-Place Hold GUID that you obtained in [Step 1](#step-1-identify-the-holds-on-an-inactive-mailbox).

    ```powershell
    Get-MailboxSearch -InPlaceHoldIdentity <In-Place Hold GUID> | FL Name
    ```

2. In the EAC, go to **Compliance management** \> **In-Place eDiscovery &amp; Hold**.
    
3. Select the In-Place Hold you want to change, and then select **Edit** ![Edit icon](media/ebd260e4-3556-4fb0-b0bb-cc489773042c.gif).
    
4. On the **In-Place eDiscovery &amp; Hold** properties page, select **In-Place Hold**. 
    
5. Do one of the following based on the current hold duration:
    
    1. Select **Hold indefinitely** to hold items for an unlimited period of time. 
    
    2. Select **Specify number of days to hold items relative to their received date** to hold items for a specific period. Type the number of days that you want to hold items for. 
    
    ![Screenshot of changing the duration for an In-Place Hold](media/cfcfd92a-9d65-40c0-90ef-ab72697b0166.png)
  
6. Select **Save**.
    
#### Use Exchange Online PowerShell to change the hold duration

1. If you know the name of the In-Place Hold that you want to change, go to the next step. Otherwise, run the following command to get the name of the In-Place Hold that is placed on the inactive mailbox. Use the In-Place Hold GUID that you obtained in [Step 1](#step-1-identify-the-holds-on-an-inactive-mailbox).

    ```powershell
    Get-MailboxSearch -InPlaceHoldIdentity <In-Place Hold GUID> | FL Name
    ```

2. Run the following command to change the hold duration. In this example, the hold duration is changed to 2,555 days (approximately seven years). 
    
    ```powershell
    Set-MailboxSearch <identity of In-Place Hold> -ItemHoldPeriod 2555
    ```

     To change the hold duration to an unlimited period of time, use  _-ItemHoldPeriod unlimited_.
  
## More information

- **How is the hold duration calculated for an item in an inactive mailbox?** The duration is calculated from the original date a mailbox item was received or created. 
    
- **What happens when the hold duration expires?** When the hold duration expires for a mailbox item in the Recoverable Items folder, the item is permanently deleted (purged) from the inactive mailbox. If there's no duration specified for the hold placed on the inactive mailbox, items in the Recoverable Items folder are never purged (unless the hold duration for the inactive mailbox is changed). 
    
- **Is an Exchange retention policy still processed on inactive mailboxes?** If an Exchange retention policy (the messaging records management, or MRM, feature in Exchange Online) was applied to a mailbox when it was made inactive, the deletion policies (which are retention tags configured with a **Delete** retention action) will continue to be processed on the inactive mailbox. That means items that are tagged with a deletion policy are moved to the Recoverable Items folder when the retention period expires. Those items are then purged from the inactive mailbox when the hold duration for an item expires. 
    
    Conversely, any archive policies (which are retention tags configured with a **MoveToArchive** retention action) that are included in the retention policy assigned to an inactive mailbox are ignored. That means items in an inactive mailbox that are tagged with an archive policy remain in the primary mailbox when the retention period expires. They're not moved to the archive mailbox or to the Recoverable Items folder in the archive mailbox. Because a user can't sign in to an inactive mailbox, there's no reason to consume datacenter resources to process archive policies. 
    
- **To check the new hold duration, run one of the following commands.** The first command is for Litigation Hold; the second is for In-Place Hold. 

    ```powershell
    Get-Mailbox -InactiveMailboxOnly -Identity <identity of inactive mailbox> | FL LitigationHoldDuration
    ```

    ```powershell
    Get-MailboxSearch <identity of In-Place Hold> | FL ItemHoldPeriod
    ```

- **Like regular mailboxes, the Managed Folder Assistant (MFA) also processes inactive mailboxes.** In Exchange Online, the MFA processes mailboxes approximately once every seven days. After you change the hold duration for an inactive mailbox, you can use the **Start-ManagedFolderAssistant** cmdlet to immediately start processing the new hold duration for the inactive mailbox. Run the following command. 

    ```powershell
    Start-ManagedFolderAssistant -InactiveMailbox <identity of inactive mailbox>
    ```
   
- **If many holds are placed on an inactive mailbox, not all of the hold GUIDs will be displayed.** You can run the following command to display the GUIDs for all holds (except Litigation Holds) that are placed on an inactive mailbox. 
    
    ```powershell
    Get-Mailbox -InactiveMailboxOnly -Identity <identity of inactive mailbox> | Select-Object -ExpandProperty InPlaceHolds
    ```
