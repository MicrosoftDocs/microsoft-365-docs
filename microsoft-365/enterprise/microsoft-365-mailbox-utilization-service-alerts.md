---
title: "Mailbox utilization service alerts"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
f1.keywords:
- NOCSH
description: "Use mailbox utilization service alerts to monitor mailboxes on hold that are reaching their mailbox quota limits."
---

# Mailbox utilization service alerts in Exchange Online monitoring

We've released a new Exchange Online service alert that informs you of mailboxes that are on hold that are at risk of reaching or exceeding their quota limits. These service alerts provide visibility to the number of mailboxes in your organization that may require admin intervention.

These service alerts are displayed in the Microsoft 365 admin center. To view these service alerts, go to **Health** > **Service health** > **Exchange Online** and then click the **Active issues** tab.

## What do these service alerts indicate?

The service alerts for mailbox utilization inform admins about mailboxes on hold that are nearing mailbox storage quota limits. The type of holds that that can be placed on mailboxes include Litigation holds, eDiscovery hold, and Microsoft 365 retention policies. When a mailbox is on hold, users (or automated processes) can't permanently remove data from their mailbox. Instead, admins must configure MRM retention policies in Exchange Online (inline with their organization's compliance policies related to data retention) to move data from users' primary mailbox to their archive mailboxes. If not and a mailbox on a hold reaches a critical or warning state, admins have to [enable archive mailboxes](../compliance/enable-archive-mailboxes.md) and [enable auto-expanding archiving](../compliance/enable-unlimited-archiving.md) and then make sure the archive policy assigned to the mailbox (that moves email from the primary mailbox to the archive mailbox are aggressive enough. If nothing is done to resolve the quota issues that are identified by the mailbox utilization service alerts, then users might not be able to send or received email messages or meeting invites.

A service alert for mailbox utilization contains tables about the number of mailboxes that are nearing their quota limits. The following sections describe the information in these tables and the action admins can take to help ensure these mailboxes don't exceed their quota limits.

### Mailboxes on hold without an archive

The following table lists the number of mailboxes on hold that are nearing their quota limits but don't have an archive mailbox enabled. Each column in the table identifies the specific quota and the number of mailboxes nearing that quota.

| # Mailboxes ProhibitSendReceiveQuota (Warning)| # Mailboxes ProhibitSendReceiveQuota (Critical)** |# Mailboxes RecoverableItemsQuota (Warning)|# Mailboxes RecoverableItemsQuota (Critical)** |
|:--------------|:--------------|:------------------|:--------------- |
| 2             | 2             | 1                 | 0               |
||||

The action admins can take for these mailboxes is to enable the archive mailbox and ensure that an MRM archive policy (which is an MRM retention policy in Exchange Online that moves items to the archive mailbox) is applied to the mailbox so that items are moved to the archive mailbox. For more information, see [Set up an archive and deletion policy for mailboxes](../compliance/set-up-an-archive-and-deletion-policy-for-mailboxes.md).

### Mailboxes on hold with an archive

The following table lists the number of mailboxes on hold that are nearing their quota limits and have an archive mailbox enabled.

|# Mailboxes ProhibitSendReceiveQuota (Warning) |# Mailboxes ProhibitSendReceiveQuota (Critical) |# Mailboxes RecoverableItemsQuota (Warning) |# Mailboxes RecoverableItemsQuota (Critical)** |
|:--------------|:--------------|:------------------|:--------------- |
| 1             | 1             | 6                 | 0               |
||||

The action admins can take for these mailboxes is to increase the quota for the Recoverable Items folder. For more information, see [Increase the Recoverable Items quota for mailboxes on hold](../compliance/increase-the-recoverable-quota-for-mailboxes-on-hold.md).

Admins should also make sure that an MRM archive policy that moves items to the archive mailbox is also applied to the mailboxes, and that the retention period for the archive policy is short enough so that items aren't retained too long in the primary mailbox before they're moved to the archive.

> [!NOTE]
> MRM archive policies also move items from the Recoverable Items folder in the primary mailbox to the Recoverable Items folder in the corresponding archive mailbox. This capability helps prevent the mailbox from exceeding the quota for the Recoverable Items quota.


Within the service alert there are descriptions for each column and what they represent.


### MRM retention policies in your organization

Service alerts for mailbox utilization may also contain a table with information about the MRM retention policies in your organization. For more information about retention policies, see [Retention tags and retention policies in Exchange Online](/exchange/security-and-compliance/messaging-records-management/retention-tags-and-policies).

| RetentionPolicyGuid | MailboxType | HasMoveDumpsterToArchiveTag | HasMovePrimaryToArchiveTag | HasPersonalArchiveTag |  Mailboxes |
|:--------------|:--------------|:---------------|:---------------|:---------------|:--------------- |
| 6c041498-1611-5011-a058-1156ce60890b | PrimaryWithArchive | True | False | True | 398 |
| 6c041498-1611-5011-a058-1156ce60890c | Primary | True | False | True | 10 |
| 749ceecc-d49d-4000-a9d5-594dbaea1e56 | PrimaryWithArchive | False | True | False | 7 |
| 269f6a85-1234-4648-8cde-59bbc7bc67d0 | PrimaryWithArchive | True | True | True | 1 |
| 13fb778d-e1cb-4c44-5768-ad4282906c1f | PrimaryWithArchive | True | True  | False | 1 |
|||||||

The following list describes each column in the previous table that contains information about retention policies.

- **RetentionPolicyGuid**: The GUID of the retention policy applied to mailboxes in your organization. To obtain more information about the retention policy, run the following command in Exchange Online PowerShell.

   ```powershell
   Get-RetentionPolicy <GUID> | FL
   ```

   The value of the **Name** property is the name of the retention policy that's displayed on the **Retention policies** page in the Exchange admin center.

- **MailboxType**: Specifies what type of mailbox the policy applies to. Values include *Primary* (mailbox without an archive) or *PrimaryWithArchive* (mailbox with an archive).

- **HasMoveDumpsterToArchiveTag**: Indicates that the retention policy includes a retention tag that move items in the Recoverable Items folder (also called the *dumpster*) in the primary mailbox to the Recoverable Items folder in the archive. This type of retention tag is set by an admin. If the retention period for the recoverable items tag is too long, then reducing the retention period should help prevent mailboxes from nearing the quota for Recoverable Items folder. For example, if the retention period is set to 30 days, reducing it to three or five days may help.  For more information, see [Increase the Recoverable Items quota for mailboxes on hold](../compliance/increase-the-recoverable-quota-for-mailboxes-on-hold.md).

- **HasMovePrimaryToArchiveTag**: Indicates if there is a default "move to archive" retention tag (also called an *archive policy*) included in the retention policy. In this case, messages will be moved from the regular folders in the primary mailbox to the archive mailbox. This type of retention tag is set by an admin. Again, if the retention period for this tag is too short, users may have problems with continually reaching the quota limits for their primary mailbox. Reducing the retention period for an archive policy may help solve this issue.

- **HasPersonalArchiveTag**: Indicates if the retention policy includes a personal "move to archive" tag. If the retention policy does include a personal "move to archive" tag, then users can apply this tag to folders and messages in their mailbox to move items to the archive. Users can also set up an inbox rule to move messages to a folder with this tagged applied to it. In both cases, this can help move items to the archive to help avoid reaching the quota limits for their primary mailbox. 

## How often will I see mailbox utilization service alerts?**

If you don't take action to resolve the quota issues, you can expect to see this type of service alert every four days. Subsequent service alerts may contain higher mailbox counts for other mailboxes that are nearing their quota limits. If you take action to resolve quota issues, this service alert will only occur when another mailbox with quota issues is identified.

## More information

[Listing some issues for Microsoft 365 Compliance - Office 365 \| Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Foffice365%2Ftroubleshoot%2Fmicrosoft-365-compliance-welcome&data=04%7C01%7Cdavidsan%40exchange.microsoft.com%7C2deb047b48bd41919bfb08d947eec75e%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637619913145484421%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=hndbU%2FjFIh3fyfzdlsCycgTc%2BM2ZKMecdZ%2BF3doYHlQ%3D&reserved=0)

Aids with troubleshooting and resolving issues with archive mailboxes and compliance in general. 

[Enable archive mailboxes in the Security & Compliance Center - Microsoft 365 Compliance \| Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Fenable-archive-mailboxes%3Fview%3Do365-worldwide&data=04%7C01%7Cholliep%40microsoft.com%7Cf11e9617c3a245fdddda08d9487d2682%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637620524621839525%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=Aqmt1sAiG%2FZDvx8kNJ%2BoIyxI%2Bjrzr6OXrDZE6QKadQc%3D&reserved=0)

Provides direction on how to enable an archive mailbox in the security and compliance center.

[Overview of unlimited archiving - Microsoft 365 Compliance \| Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Funlimited-archiving%3Fview%3Do365-worldwide%23%3A~%3Atext%3DHow%2520auto-expanding%2520archiving%2520works%25201%2520Archiving%2520is%2520enabled%2C365%2520automatically%2520adds%2520more%2520storage%2520space%2520when%2520necessary.&data=04%7C01%7Cholliep%40microsoft.com%7Cf11e9617c3a245fdddda08d9487d2682%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637620524621849493%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=0wuPCaRlAGnUJHKFwOkeccpenw%2BEJdFxTS6QyRO9ods%3D&reserved=0)

Provides an overview of auto-expanding (unlimited) archiving.

[Increase the Recoverable Items quota for mailboxes on hold - Microsoft 365 Compliance \| Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Fincrease-the-recoverable-quota-for-mailboxes-on-hold%3Fview%3Do365-worldwide&data=04%7C01%7Cholliep%40microsoft.com%7Cf11e9617c3a245fdddda08d9487d2682%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637620524621849493%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=rdL7QUpMOUXtfJ8Xov4zLAwvXIWwdSqBXDwb71MIutw%3D&reserved=0)

Provides information on archive, auto-expanding archive, custom retention tags, creating/applying new retention policies and running the managed folder assistant.

[Retention tags and retention policies in Exchange Server \| Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2FExchange%2Fpolicy-and-compliance%2Fmrm%2Fretention-tags-and-retention-policies%3Fview%3Dexchserver-2019&data=04%7C01%7Cholliep%40microsoft.com%7Cf11e9617c3a245fdddda08d9487d2682%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637620524621859455%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=bXQSJ2ZksTfL%2B3eNH%2Fc0fmIW7Zn%2Fd%2FvrHunyV6p9peo%3D&reserved=0)

Provides information on retention tags and policies.
