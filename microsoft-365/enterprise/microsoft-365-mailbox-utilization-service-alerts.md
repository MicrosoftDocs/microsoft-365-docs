---
title: "Mailbox utilization service alerts"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
ms.custom: 
- admindeeplinkMAC
- admindeeplinkEXCHANGE
f1.keywords:
- NOCSH
description: "Use mailbox utilization service advisories to monitor mailboxes on hold that are reaching their mailbox quota."
---

# Service advisories for mailbox utilization in Exchange Online monitoring

We've released a new Exchange Online service advisory that informs you of mailboxes that are on hold that are at risk of reaching or exceeding their quota. These service advisories provide visibility to the number of mailboxes in your organization that may require admin intervention.

These service advisories are displayed in the Microsoft 365 admin center. To view these service advisories, go to **Health** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842900" target="_blank">**Service health**</a> > **Exchange Online** and then click the **Active issues** tab. Here's an example of a mailbox utilization service advisory.

:::image type="content" alt-text="Mailbox utilization service alert." source="../media/MailboxUtilizationServiceAlert.png" lightbox="../media/MailboxUtilizationServiceAlert.png":::

To display a list of mailboxes that are nearing their storage quota, select the highlighted link in the following screenshot to access your mailbox usage report. This link is displayed in the service advisory.

:::image type="content" alt-text="Link to mailbox usage report." source="../media/LinkToMailboxUsageReport.png" lightbox="../media/LinkToMailboxUsageReport.png":::

Alternatively, the direct URL to the mailbox usage report is <https://admin.microsoft.com/Adminportal/Home?source=applauncher#/reportsUsage/MailboxUsage>.

> [!NOTE]
> The mailbox usage report information could be 24 hours behind your mailbox utilization service advisory alert.

## What do these service advisories indicate?

The service advisories for mailbox utilization inform admins about mailboxes on hold that are nearing the mailbox storage quota. The type of holds that that can be placed on mailboxes include Litigation holds, eDiscovery hold, and Microsoft 365 retention policies (that are configured to retain data). When a mailbox is on hold, users (or automated processes) can't permanently remove data from their mailbox. Instead, admins must configure MRM retention policies in Exchange Online (inline with their organization's compliance policies related to data retention) to move data from a user's primary mailbox to their archive mailbox. If not and a mailbox on a hold reaches a critical or warning state, admins have to [enable archive mailboxes](../compliance/enable-archive-mailboxes.md) and [enable auto-expanding archiving](../compliance/enable-autoexpanding-archiving.md) and then make sure that the retention period for the archive policy assigned to the mailbox (that moves email from the primary mailbox to the archive mailbox) is short enough. If nothing is done to resolve the quota issues that are identified by the mailbox utilization service advisory, then users might not be able to send or receive email messages or meeting invites.

A service advisory for mailbox utilization contains tables about the number of mailboxes that are nearing their quota. The following sections describe the information in these tables and the action admins can take to help ensure these mailboxes don't exceed their quota.

> [!NOTE]
> Service advisories contain descriptions of the mailbox quota properties that appear in the columns in the tables described in the following sections.

### Mailboxes on hold without an archive

The following table lists the number of mailboxes on hold that are nearing their quota but don't have an archive mailbox enabled. Each column in the table identifies the specific quota and the number of mailboxes nearing that quota.

| # Mailboxes ProhibitSendReceiveQuota (Warning)| # Mailboxes ProhibitSendReceiveQuota (Critical)** |# Mailboxes RecoverableItemsQuota (Warning)|# Mailboxes RecoverableItemsQuota (Critical)** |
|:--------------|:--------------|:------------------|:--------------- |
| 2             | 2             | 1                 | 0               |
||||

The action admins can take for these mailboxes is to enable the archive mailbox and ensure that an MRM archive policy (which is an MRM retention policy in Exchange Online that moves items to the archive mailbox) is applied to the mailbox so that items are moved to the archive mailbox. For more information, see [Set up an archive and deletion policy for mailboxes](../compliance/set-up-an-archive-and-deletion-policy-for-mailboxes.md).

After you enable an archive mailbox, we recommend that you consider increasing the quota for the Recoverable Items folder. This helps prevents exceeding the quota for the Recoverable Items folder for mailboxes that are placed on hold. For more information, see [Increase the Recoverable Items quota for mailboxes on hold](../compliance/increase-the-recoverable-quota-for-mailboxes-on-hold.md).

### Mailboxes on hold with an archive

The following table lists the number of mailboxes on hold that are nearing their quota and have an archive mailbox enabled.

|# Mailboxes ProhibitSendReceiveQuota (Warning) |# Mailboxes ProhibitSendReceiveQuota (Critical) |# Mailboxes RecoverableItemsQuota (Warning) |# Mailboxes RecoverableItemsQuota (Critical)** |
|:--------------|:--------------|:------------------|:--------------- |
| 1             | 1             | 6                 | 0               |
||||

The action admins can take for these mailboxes is to increase the quota for the Recoverable Items folder. For more information, see [Increase the Recoverable Items quota for mailboxes on hold](../compliance/increase-the-recoverable-quota-for-mailboxes-on-hold.md).

Admins should also make sure that an MRM archive policy that moves items to the archive mailbox is also applied to the mailboxes, and that the retention period for the archive policy is short enough so that items aren't retained too long in the primary mailbox before they're moved to the archive.

> [!NOTE]
> MRM archive policies also move items from the Recoverable Items folder in the primary mailbox to the Recoverable Items folder in the corresponding archive mailbox. This capability helps prevent the mailbox from exceeding the quota for the Recoverable Items quota.

### MRM retention policies in your organization

Service advisories for mailbox utilization may also contain a table with information about the MRM retention policies in your organization and whether or not the mailboxes that are a retention policy have an archive mailbox. For more information about retention policies, see [Retention tags and retention policies in Exchange Online](/exchange/security-and-compliance/messaging-records-management/retention-tags-and-policies).

| RetentionPolicyGuid | MailboxType | HasMoveDumpsterToArchiveTag | HasMovePrimaryToArchiveTag | HasPersonalArchiveTag |  Mailboxes |
|:--------------|:--------------|:---------------|:---------------|:---------------|:--------------- |
| 6c041498-1611-5011-a058-1156ce60890c | PrimaryWithArchive | True | False | True | 398 |
| 6c041498-1611-5011-a058-1156ce60890c | Primary | True | False | True | 10 |
| 749ceecc-d49d-4000-a9d5-594dbaea1e56 | PrimaryWithArchive | False | True | False | 7 |
| 269f6a85-1234-4648-8cde-59bbc7bc67d0 | PrimaryWithArchive | True | True | True | 1 |
| 13fb778d-e1cb-4c44-5768-ad4282906c1f | PrimaryWithArchive | True | True  | False | 1 |
|||||||

The following list describes each column in the previous table.

- **RetentionPolicyGuid**: The GUID of the retention policy assigned to mailboxes in your organization. In the previous example, there are two separate rows for the same retention policy. The first row indicates the number of mailboxes with an archive that are assigned the policy. The second row indicates the number of mailboxes without an archive that are assigned the same policy.

   To obtain more information about the retention policy listed in this column, run the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

   ```powershell
   Get-RetentionPolicy <GUID> | FL
   ```

   The value of the **Name** property is the name of the retention policy that's displayed on the **Retention policies** page in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>.

- **MailboxType**: Specifies what type of mailboxes the policy is assigned to. Values include *Primary* (mailboxes without an archive) or *PrimaryWithArchive* (mailboxes with an archive). If the value in this column is *Primary*, then you should enable the archive for the mailboxes (the **Mailbox** column indicates the number of these mailboxes) that are assigned the policy. Otherwise, an archive policy or personal archive tag won't work because there isn't an archive to move items to.

- **HasMoveDumpsterToArchiveTag**: Indicates that the retention policy includes a retention tag that move items in the Recoverable Items folder (also called the *dumpster*) in the primary mailbox to the Recoverable Items folder in the archive. This type of retention tag is set by an admin. If the retention period for the recoverable items tag is too long, then reducing the retention period should help prevent mailboxes from nearing the quota for Recoverable Items folder. For example, if the retention period is set to 30 days, reducing it to three or five days may help.  For more information, see [Increase the Recoverable Items quota for mailboxes on hold](../compliance/increase-the-recoverable-quota-for-mailboxes-on-hold.md).

- **HasMovePrimaryToArchiveTag**: Indicates if there is a default "move to archive" retention tag (also called an *archive policy*) included in the retention policy. In this case, messages will be moved from the regular folders in the primary mailbox to the archive mailbox. This type of retention tag is set by an admin. Again, if the retention period for this tag is too short, users may have problems with continually reaching the quota for their primary mailbox. Reducing the retention period for an archive policy may help solve this issue.

- **HasPersonalArchiveTag**: Indicates if the retention policy includes a personal "move to archive" tag. If the retention policy does include a personal "move to archive" tag, then users can apply this tag to folders and messages in their mailbox to move items to the archive. Users can also set up an inbox rule to move messages to a folder with this tagged applied to it. In both cases, this can help move items to the archive to help avoid reaching the quota for their primary mailbox.

- **Mailboxes**: Indicates the number of mailboxes (those with or without an archive, which is indicated in the **MailboxType** column) the retention policy is assigned to.

## How often will I see these service advisories?

If you don't take action to resolve the quota issues, you can expect to see this type of service advisory every seven days. Subsequent service advisories may contain higher mailbox counts for other mailboxes that are nearing their quota. If you take action to resolve quota issues, this service advisory will only occur when another mailbox with quota issues is identified.

## More information

- For information about troubleshooting and resolving archive mailbox issues, see [Microsoft Purview troubleshooting](/office365/troubleshoot/microsoft-365-compliance-welcome).

- For guidance about identifying the holds placed on a mailbox, see [How to identify the type of hold placed on a mailbox](../compliance/identify-a-hold-on-an-exchange-online-mailbox.md).
