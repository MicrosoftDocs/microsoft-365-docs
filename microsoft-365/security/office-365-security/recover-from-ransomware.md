---
title: Recover from a ransomware attack
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: article

ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.collection: 
  - m365-security
  - m365initiative-defender-office365
  - m365solution-ransomware
  - highpri
description: Microsoft 365 admins can learn how to recover from a ransomware attack.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Recover from a ransomware attack in Microsoft 365

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Even if you take every precaution to protect your organization, you can still fall victim to a [ransomware](/windows/security/threat-protection/intelligence/ransomware-malware) attack. Ransomware is big business, and in today's threat landscape Microsoft 365 is an ever-increasing [target for sophisticated attacks](https://i.blackhat.com/USA21/Wednesday-Handouts/us-21-Cloudy-With-A-Chance-Of-APT-Novel-Microsoft-365-Attacks-In-The-Wild.pdf).

The steps in this article will give you the best chance to recover data and stop the internal spread of infection. Before you get started, consider the following items:

- There's no guarantee that paying the ransom will return access to your files. In fact, paying the ransom can make you a target for more ransomware.

  If you already paid, but you recovered without using the attacker's solution, contact your bank to see if they can block the transaction.

  We also recommend that you report the ransomware attack to law enforcement, scam reporting websites, and Microsoft as described later in this article.

- It's important for you respond quickly to the attack and its consequences. The longer you wait, the less likely it is that you can recover the affected data.

## Step 1: Verify your backups

If you have offline backups, you can probably restore the encrypted data **after** you've removed the ransomware payload (malware) from your environment and **after** you've verified that there's no unauthorized access in your Microsoft 365 environments.

If you don't have backups, or if your backups were also affected by the ransomware, you can skip this step.

## Step 2: Disable Exchange ActiveSync and OneDrive sync

The key point here is to stop the spread of data encryption by the ransomware.

If you suspect email as a target of the ransomware encryption, temporarily disable user access to mailboxes. Exchange ActiveSync synchronizes data between devices and Exchange Online mailboxes.

To disable Exchange ActiveSync for a mailbox, see [How to disable Exchange ActiveSync for users in Exchange Online](https://support.microsoft.com/help/2795303).

To disable other types of access to a mailbox, see:

- [Enable or disable MAPI for a mailbox](/Exchange/recipients-in-exchange-online/manage-user-mailboxes/enable-or-disable-mapi).

- [Enable or Disable POP3 or IMAP4 access for a user](/Exchange/clients-and-mobile-in-exchange-online/pop3-and-imap4/enable-or-disable-pop3-or-imap4-access)

Pausing OneDrive sync will help protect your cloud data from being updated by potentially infected devices. For more information, see [How to Pause and Resume sync in OneDrive](https://support.microsoft.com/office/2152bfa4-a2a5-4d3a-ace8-92912fb4421e).

## Step 3: Remove the malware from the affected devices

Run a full, current antivirus scan on all suspected computers and devices to detect and remove the payload that's associated with the ransomware.

Don't forget to scan devices that are synchronizing data, or the targets of mapped network drives.

You can use [Windows Defender](https://www.microsoft.com/windows/comprehensive-security) or (for older clients) [Microsoft Security Essentials](https://www.microsoft.com/download/details.aspx?id=5201).

An alternative that will also help you remove ransomware or malware is the [Malicious Software Removal Tool (MSRT)](https://www.microsoft.com/download/details.aspx?id=9905).

If these options don't work, you can try [Windows Defender Offline](https://support.microsoft.com/help/17466) or [Troubleshoot problems with detecting and removing malware](https://support.microsoft.com/help/4466982).

## Step 4: Recover files on a cleaned computer or device

After you've completed the previous step to remove the ransomware payload from your environment (which will prevent the ransomware from encrypting or removing your files), you can use [File History](https://support.microsoft.com/help/17128) in Windows 11, Windows 10, Windows 8.1, and by using System Protection in Windows 7 to attempt to recover your local files and folders.

**Notes**:

- Some ransomware will also encrypt or delete the backup versions, so you can't use File History or System Protection to restore files. If that happens, you need use backups on external drives or devices that were not affected by the ransomware or OneDrive as described in the next section.

- If a folder is synchronized to OneDrive and you aren't using the latest version of Windows, there might be some limitations using File History.

## Step 5: Recover your files in your OneDrive for Business

Files Restore in OneDrive for Business allows you to restore your entire OneDrive to a previous point in time within the last 30 days. For more information, see [Restore your OneDrive](https://support.microsoft.com/office/fa231298-759d-41cf-bcd0-25ac53eb8a15).

## Step 6: Recover deleted email

In the rare case that the ransomware deleted all your email, you can probably recover the deleted items. For more information, see:

- [Recover deleted messages in a user's mailbox](/exchange/recipients-in-exchange-online/manage-user-mailboxes/recover-deleted-messages)

- [Recover deleted items in Outlook for Windows](https://support.microsoft.com/office/49e81f3c-c8f4-4426-a0b9-c0fd751d48ce)

## Step 7: Re-enable Exchange ActiveSync and OneDrive sync

After you've cleaned your computers and devices and recovered your data, you can re-enable Exchange ActiveSync and OneDrive sync that you previously disabled in [Step 2](#step-2-disable-exchange-activesync-and-onedrive-sync).

## Step 8 (Optional): Block OneDrive sync for specific file extensions

After you've recovered, you can prevent OneDrive for Business clients from synchronizing the file types that were affected by this ransomware. For more information, see [Set-SPOTenantSyncClientRestriction](/powershell/module/sharepoint-online/set-spotenantsyncclientrestriction)

## Report the attack

### Contact law enforcement

You should contact your local or federal law enforcement agencies. For example, if you are in the United States you can contact the [FBI local field office](https://www.fbi.gov/contact-us/field), [IC3](http://www.ic3.gov/complaint/default.aspx) or [Secret Service](http://www.secretservice.gov/).

### Submit a report to your country's scam reporting website

Scam reporting websites provide information about how to prevent and avoid scams. They also provide mechanisms to report if you were victim of scam.

- Australia: [SCAMwatch](http://www.scamwatch.gov.au/)

- Canada: [Canadian Anti-Fraud Centre](http://www.antifraudcentre-centreantifraude.ca/)

- France: [Agence nationale de la sécurité des systèmes d'information](http://www.ssi.gouv.fr/)

- Germany: [Bundesamt für Sicherheit in der Informationstechnik](https://www.bsi.bund.de/DE/Home/home_node.html)

- Ireland: [a Garda Síochána](http://www.garda.ie/)

- New Zealand: [Consumer Affairs Scams](http://www.consumeraffairs.govt.nz/scams)

- Switzerland [Nationales Zentrum für Cybersicherheit NCSC](https://www.ncsc.admin.ch/ncsc/de/home.html)

- United Kingdom: [Action Fraud](http://www.actionfraud.police.uk/)

- United States: [On Guard Online](http://www.onguardonline.gov/)

If your country isn't listed, ask your local or federal law enforcement agencies.

### Submit email messages to Microsoft

You can report phishing messages that contain ransomware by using one of several methods. For more information, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## Additional ransomware resources

Key information from Microsoft:

- [The growing threat of ransomware](https://blogs.microsoft.com/on-the-issues/2021/07/20/the-growing-threat-of-ransomware/), Microsoft On the Issues blog post on July 20, 2021
- [Human-operated ransomware](/security/compass/human-operated-ransomware)
- [Rapidly protect against ransomware and extortion](/security/compass/protect-against-ransomware)
- [2021 Microsoft Digital Defense Report](https://www.microsoft.com/security/business/microsoft-digital-defense-report) (see pages 10-19)
- [Ransomware: A pervasive and ongoing threat](https://security.microsoft.com/threatanalytics3/05658b6c-dc62-496d-ad3c-c6a795a33c27/overview) threat analytics report in the Microsoft 365 Defender portal

Microsoft 365:

- [Deploy ransomware protection for your Microsoft 365 tenant](/microsoft-365/solutions/ransomware-protection-microsoft-365)
- [Maximize Ransomware Resiliency with Azure and Microsoft 365](https://azure.microsoft.com/resources/maximize-ransomware-resiliency-with-azure-and-microsoft-365/)
- [Malware and ransomware protection](/compliance/assurance/assurance-malware-and-ransomware-protection)
- [Protect your Windows PC from ransomware](https://support.microsoft.com//windows/protect-your-pc-from-ransomware-08ed68a7-939f-726c-7e84-a72ba92c01c3)
- [Handling ransomware in SharePoint Online](/sharepoint/troubleshoot/security/handling-ransomware-in-sharepoint-online)
- [Threat analytics reports for ransomware](https://security.microsoft.com/threatanalytics3?page_size=30&filters=tags%3DRansomware&ordering=-lastUpdatedOn&fields=displayName,alertsCount,impactedEntities,reportType,createdOn,lastUpdatedOn,tags,flag) in the Microsoft 365 Defender portal

Microsoft 365 Defender:

- [Find ransomware with advanced hunting](/microsoft-365/security/defender/advanced-hunting-find-ransomware)

Microsoft Azure:

- [Azure Defenses for Ransomware Attack](https://azure.microsoft.com/resources/azure-defenses-for-ransomware-attack/)
- [Maximize Ransomware Resiliency with Azure and Microsoft 365](https://azure.microsoft.com/resources/maximize-ransomware-resiliency-with-azure-and-microsoft-365/)
- [Backup and restore plan to protect against ransomware](/security/compass/backup-plan-to-protect-against-ransomware)
- [Help protect from ransomware with Microsoft Azure Backup](https://www.youtube.com/watch?v=VhLOr2_1MCg) (26 minute video)
- [Recovering from systemic identity compromise](/azure/security/fundamentals/recover-from-identity-compromise)
- [Advanced multistage attack detection in Microsoft Sentinel](/azure/sentinel/fusion#ransomware)
- [Fusion Detection for Ransomware in Microsoft Sentinel](https://techcommunity.microsoft.com/t5/azure-sentinel/what-s-new-fusion-detection-for-ransomware/ba-p/2621373)

Microsoft Defender for Cloud Apps:

-  [Create anomaly detection policies in Defender for Cloud Apps](/cloud-app-security/anomaly-detection-policy)

Microsoft Security team blog posts:

- [3 steps to prevent and recover from ransomware (September 2021)](https://www.microsoft.com/security/blog/2021/09/07/3-steps-to-prevent-and-recover-from-ransomware/)
- [A guide to combatting human-operated ransomware: Part 1 (September 2021)](https://www.microsoft.com/security/blog/2021/09/20/a-guide-to-combatting-human-operated-ransomware-part-1/)

  Key steps on how Microsoft's Detection and Response Team (DART) conducts ransomware incident investigations.

- [A guide to combatting human-operated ransomware: Part 2 (September 2021)](https://www.microsoft.com/security/blog/2021/09/27/a-guide-to-combatting-human-operated-ransomware-part-2/)

  Recommendations and best practices.

- [Becoming resilient by understanding cybersecurity risks: Part 4—navigating current threats (May 2021)](https://www.microsoft.com/security/blog/2021/05/26/becoming-resilient-by-understanding-cybersecurity-risks-part-4-navigating-current-threats/)

  See the **Ransomware** section.

- [Human-operated ransomware attacks: A preventable disaster (March 2020)](https://www.microsoft.com/security/blog/2020/03/05/human-operated-ransomware-attacks-a-preventable-disaster/)

  Includes attack chain analyses of actual attacks.

- [Ransomware response—to pay or not to pay? (December 2019)](https://www.microsoft.com/security/blog/2019/12/16/ransomware-response-to-pay-or-not-to-pay/)
- [Norsk Hydro responds to ransomware attack with transparency (December 2019)](https://www.microsoft.com/security/blog/2019/12/17/norsk-hydro-ransomware-attack-transparency/)
