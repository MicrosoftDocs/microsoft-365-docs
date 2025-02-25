---
title: "Mailbox utilization service alerts"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/09/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- must-keep
ms.custom:
- admindeeplinkMAC
- admindeeplinkEXCHANGE
f1.keywords:
- NOCSH
description: "Use mailbox utilization service advisories to monitor mailboxes on hold that are reaching their mailbox quota."
---

# Service advisories for mailbox utilization in Exchange Online monitoring

An Exchange Online service advisory informs you about mailboxes that are on hold and at risk of reaching or exceeding their quota. These service advisories provide visibility to the number of mailboxes in your organization that might require admin intervention.

These service advisories are displayed in the Microsoft 365 admin center. To view these service advisories, you can go to **Health** \> **Service health** \> **Exchange Online** and then look for **Mailbox Storage Limits under the Organization Scenarios**, or you can go **Health** \> **Service health** \> **Exchange Online** and select the **Active issues** tab. Here's an example of a mailbox utilization service advisory under active issues.

:::image type="content" alt-text="Mailbox utilization service alert." source="../media/MailboxUtilizationServiceAlert.png" lightbox="../media/MailboxUtilizationServiceAlert.png":::

When you access the service advisory, you see a link under **User Impact**. Selecting that link opens a flyout window that lists affected mailbox GUIDs for your tenant.  This list is limited to no more than 155 mailboxes.

:::image type="content" alt-text="Mailbox utilization service alert details view" source="../media/MailboxUtilizationAffectedMailboxes.png" lightbox="../media/MailboxUtilizationAffectedMailboxes.png":::

If your tenant exceeds more than 155 mailboxes at or nearing their storage quota, visit your admin portal and access your mailbox usage report.  Alternatively, the direct URL to the mailbox usage report is <https://admin.microsoft.com/Adminportal/Home?source=applauncher#/reportsUsage/MailboxUsage>.

> [!NOTE]
> The mailbox usage report information could be 24 hours behind your mailbox utilization service advisory alert.

## What do these service advisories indicate?

The service advisories for mailbox utilization inform admins about mailboxes on hold that are nearing the mailbox storage quota. The type of holds that that can be placed on mailboxes include Litigation holds, eDiscovery hold, and Microsoft 365 retention policies (that are configured to retain data). When a mailbox is on hold, users (or automated processes) can't permanently remove data from their mailbox. Instead, admins should configure Messaging Records Management (MRM) retention policies in Exchange Online (in line with their organization's compliance policies related to data retention) to move data from a user's primary mailbox to their archive mailbox.

If a mailbox on hold doesn't have an archive and reaches a critical or warning state, admins should [enable archive mailboxes](../compliance/enable-archive-mailboxes.md) and [enable auto-expanding archiving](../compliance/enable-autoexpanding-archiving.md). Make sure the retention period for the archive policy assigned to the mailbox (which moves email from the primary mailbox to the archive mailbox) only retains data in the main mailbox for as long as needed. If nothing is done to resolve the quota issues identified by the mailbox utilization service advisory, users might not be able to send or receive email messages or meeting invites.

### Mailboxes on hold without an archive

If a mailbox is on hold and is nearing or has reached its quota and doesn't have an archive, an admin can [enable an archive mailbox](../compliance/enable-archive-mailboxes.md) (and potentially [enable auto-expanding archiving](../compliance/enable-autoexpanding-archiving.md)) along with ensuring an MRM archive policy is applied to the mailbox. (An MRM archive policy is a retention policy in Exchange Online that moves items to the archive mailbox.) For more information about how holds interact with quotas and recommended quota sizes for the main mailbox and Recoverable Items folder, see [Increase the Recoverable Items quota for mailboxes on hold](../compliance/ediscovery-increase-the-recoverable-quota-for-mailboxes-on-hold.md).

### Mailboxes on hold with an archive

If a mailbox is on hold, has an archive, and is nearing or has reached its Recoverable Items Quota, an admin can increase the quota for the Recoverable Items folder. For more information, see [Increase the Recoverable Items quota for mailboxes on hold](../compliance/ediscovery-increase-the-recoverable-quota-for-mailboxes-on-hold.md).

If an admin increases the Recoverable Items Quota, they should also make sure that an MRM archive policy that moves items to the archive mailbox is applied to the mailboxes. The retention period for the archive policy must be short enough so that items aren't retained too long in the primary mailbox before they're moved to the archive.

> [!NOTE]
> MRM archive policies also move items from the Recoverable Items folder in the primary mailbox to the Recoverable Items folder in the corresponding archive mailbox. This capability helps prevent the mailbox from exceeding the quota for the Recoverable Items quota.

### MRM retention policies in your organization

Archive retention policies can be configured in various ways, depending on your organization's needs. For detailed information about retention policies, see [Retention tags and retention policies in Exchange Online](/exchange/security-and-compliance/messaging-records-management/retention-tags-and-policies). An admin can view existing retention policies by running the following command:

```powershell
Get-RetentionPolicy | FL
```

Retention policies can be applied to and take different actions on mailboxes with or without archives. The following is a brief overview of common archive retention policy actions:

- MovePrimaryToArchive and MoveDumpsterToArchive instruct the retention policy to move the contents of the main mailbox, or Recoverable Items folder respectively, to the mailbox's archive once the policy's conditions have been met. These tags are set by admins and apply regardless of a user's individual settings.
  - The retention policy applied to moving Recoverable Items content should be relatively short to ensure the user's primary mailbox doesn't reach its Recoverable Items quota.
- A Personal Archive tag means this policy can be applied by users to their personal folders to archive content on the specified schedule.

### MRM retention policies don't function as expected

Administrators possess the necessary tools to evaluate the cause of a nonfunctional retention policy and address any errors. Some common scenarios of failure include the policy not being correctly applied or failure to process a mailbox.

For information on troubleshooting retention policies, see [Troubleshooting Retention Policies in Exchange Online](https://techcommunity.microsoft.com/t5/exchange-team-blog/troubleshooting-retention-policies-in-exchange-online/ba-p/3750197).

## How often will I see these service advisories?

If you don't resolve the quota issues, you can expect to see this type of service advisory every seven days. Subsequent service advisories might contain higher mailbox counts for other mailboxes that are nearing their quota. If you resolve quota issues, this service advisory only occurs when another mailbox with quota issues is identified.

## More information

- For information about troubleshooting and resolving archive mailbox issues, see [Microsoft Purview troubleshooting](/microsoft-365/troubleshoot/microsoft-365-compliance-welcome).
- For guidance about identifying the holds placed on a mailbox, see [How to identify the type of hold placed on a mailbox](../compliance/ediscovery-identify-a-hold-on-an-exchange-online-mailbox.md).
