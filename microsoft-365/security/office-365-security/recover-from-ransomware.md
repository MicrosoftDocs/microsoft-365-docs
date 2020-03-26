---
title: "Recover from a ransomware attack"
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
description: "Office 365 admins can learn how to recover from a ransomware attack."
---

# Recover from a ransomware attack in Office 365

Even if you take every precaution to protect your Office 365 organization, you can still fall victim to a [ransomware](https://docs.microsoft.com/windows/security/threat-protection/intelligence/ransomware-malware) attack. Ransomware is big business, and the attacks are verify sophisticated.

The steps in this topic will give you the best chance to recover data that was encrypted by the ransomware, and will help stop the spread of the infection in your Office 365 organization. Before you get started, consider the following items:

- There's no guarantee that paying the ransom will return access to your files. In fact, paying the ransom can make you a target for more ransomware. If you've already paid, but you were able to successfully recover your files without having to use the attacker's resolution, you should call your bank to see if they can block the transaction. We also recommend that you report the ransomware attack to law enforcement, scam reporting websites and Microsoft as described later in this topic.

- It's very important that you respond quickly to the attack and its consequences. The longer you wait, the less likely it is that you can recover the affected data.

## Step 1: Verify your backups

If you have offline backups, you can probably restore the encrypted data **after** you've removed the ransomware payload (malware) from your environment.

If you don't have backups, or if your backups were also affected by the ransomware, you can skip this step.

## Step 2: Disable ActiveSync and OneDrive sync

The key point here is to stop the spread of data encryption by the ransomware.

If you suspect that email is a target, you should temporarily disable user access to mailboxes. Exchange ActiveSync is used by mobile devices to synchronize data between the device and the Exchange Online mailbox.

To disable ActiveSync for a mailbox, see [How to disable Exchange ActiveSync for users in Office 365](https://support.microsoft.com/help/2795303/how-to-disable-exchange-activesync-for-users-in-office-365).

To disable other types of access to a mailbox, see:

- [Enable or disable MAPI for a mailbox](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-user-mailboxes/enable-or-disable-mapi).

- [Enable or Disable POP3 or IMAP4 access for a user](https://docs.microsoft.com/Exchange/clients-and-mobile-in-exchange-online/pop3-and-imap4/enable-or-disable-pop3-or-imap4-access)

Pausing OneDrive sync will help protect your cloud data from being updated by potentially infected devices. For more information, see [How to Pause and Resume sync in OneDrive](https://support.office.com/article/2152bfa4-a2a5-4d3a-ace8-92912fb4421e).

## Step 3: Remove the malware from the affected devices

Run a full antivirus scan with the latest updates on all suspected computers and devices to detect and remove the payload that's associated with the ransomware. Don't forget devices that are synchronizing data, or the target of mapped network drives (those computers and devices need to be scanned, too).

You can use [Windows Defender](https://www.microsoft.com/windows/comprehensive-security) or (for older clients) [Microsoft Security Essentials](https://www.microsoft.com/download/details.aspx?id=5201).

An alternative that will also help you remove ransomware or malware is the [Malicious Software Removal Tool (MSRT)](https://www.microsoft.com/download/details.aspx?id=9905).

If these options don't work, you can try [Windows Defender Offline](https://support.microsoft.com/help/17466/windows-defender-offline-help-protect-my-pc) or [Troubleshoot problems with detecting and removing malware](https://support.microsoft.com/help/4466982/windows-10-troubleshoot-problems-with-detecting-and-removing-malware).

## Step 4: Recover files on a cleaned computer or device

After you've completed the previous step to remove the ransomware payload from your environment (which will prevent the ransomware from encrypting or removing your files), you can use [File History](https://support.microsoft.com/help/17128/windows-8-file-history) in Windows 10 and Windows 8.1 or System Protection in Windows 7 to attempt to recover your local files and folders.

**Notes**:

- Some ransomware will also encrypt or delete the backup versions, so you can't use File History or System Protection to restore files. If that happens, you need use backups on external drives or devices that were not affected by the ransomware or OneDrive as described in the next section.

- If a folder is synchronized to OneDrive and you aren't using the latest version of Windows, there might be some limitations using File History.

## Step 5: Recover your files in your OneDrive for Business

Files Restore in OneDrive for Business allows you to restore your entire OneDrive to a previous point in time within the last 30 days. For more information, see [Restore your OneDrive](https://support.office.com/article/fa231298-759d-41cf-bcd0-25ac53eb8a15).

## Step 6: Recover deleted email

In the rare case that the ransomware deleted all your email, you can probably recover the deleted items. For more information, see:

- [Recover deleted messages in a user's mailbox](https://docs.microsoft.com/exchange/recipients-in-exchange-online/manage-user-mailboxes/recover-deleted-messages)

- [Recover deleted items in Outlook for Windows](https://support.office.com/article/49e81f3c-c8f4-4426-a0b9-c0fd751d48ce)

## Step 7: Re-enable Exchange ActiveSync and OneDrive sync

After you've cleaned your computers and devices and recovered your data, you can re-enable ActiveSync and OneDrive sync that you previously disabled in [Step 2](#step-2-disable-activesync-and-onedrive-sync).

## Step 8 (Optional): Block OneDrive sync for specific file extensions

After you've recovered, you can prevent OneDrive for Business clients from synchronizing the file types that were affected by this ransomware. For more information, see [Set-SPOTenantSyncClientRestriction](https://docs.microsoft.com/powershell/module/sharepoint-online/set-spotenantsyncclientrestriction)

## Report the attack

### Contact law enforcement

You should contact your local or federal law enforcement agencies. For example, if you are in the United States you can contact the [FBI local field office](https://www.fbi.gov/contact-us/field), [IC3](http://www.ic3.gov/complaint/default.aspx) or [Secret Service](http://www.secretservice.gov/).

### Submit a report to your country's scam reporting website

Scam reporting websites provide information about how to prevent and avoid scams. They also provide mechanisms to report if you were victim of scam.

- Australia: [SCAMwatch](http://www.scamwatch.gov.au/)

- Canada: [Canadian Anti-Fraud Centre](http://www.antifraudcentre-centreantifraude.ca/)

- France: [Agence nationale de la sécurité des systèmes d'information](http://www.ssi.gouv.fr/)

- Germany: [Bundesamt für Sicherheit in der Informationstechnik](https://www.bsi.bund.de/DE/Home/home_node.html)

- Ireland: [An Garda Síochána](http://www.garda.ie/)

- New Zealand: [Consumer Affairs Scams](http://www.consumeraffairs.govt.nz/scams)

- United Kingdom: [Action Fraud](http://www.actionfraud.police.uk/)

- United States: [On Guard Online](http://www.onguardonline.gov/)

If your country isn't listed, ask your local or federal law enforcement agencies.

### Submit email messages to Microsoft

You can report phishing message that contain ransomware by following the instructions in [Manually submit messages to Microsoft for analysis](https://docs.microsoft.com/microsoft-365/security/office-365-security/submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis).

## See also

- [Ransomware](https://docs.microsoft.com/windows/security/threat-protection/intelligence/ransomware-malware)

- [Ransomware response—to pay or not to pay?](https://www.microsoft.com/security/blog/2019/12/16/ransomware-response-to-pay-or-not-to-pay/)

- [Norsk Hydro responds to ransomware attack with transparency](https://www.microsoft.com/security/blog/2019/12/17/norsk-hydro-ransomware-attack-transparency/)

- [Ransomware detection and recovering your files in OneDrive](https://support.office.com/article/0d90ec50-6bfd-40f4-acc7-b8c12c73637f)

- [Microsoft Security Intelligence Report](https://www.microsoft.com/securityinsights/)

- [Enable or disable macros in Office files](https://support.office.com/article/12b036fd-d140-4e74-b45e-16fed1a7e5c6)

- [Recommended settings for EOP and Office 365 ATP security](https://docs.microsoft.com/microsoft-365/security/office-365-security/recommended-settings-for-eop-and-office365-atp)

- [A worthy upgrade: Next-gen security on Windows 10 proves resilient against ransomware outbreaks in 2017](https://www.microsoft.com/security/blog/2018/01/10/a-worthy-upgrade-next-gen-security-on-windows-10-proves-resilient-against-ransomware-outbreaks-in-2017/)

- [No mas, Samas: What's in this ransomware's modus operandi?](https://www.microsoft.com/security/blog/2016/03/17/no-mas-samas-whats-in-this-ransomwares-modus-operandi/)

- [Locky malware, lucky to avoid it](https://www.microsoft.com/security/blog/2016/02/24/locky-malware-lucky-to-avoid-it/)

- [MSRT July 2016: Cerber ransomware](https://www.microsoft.com/security/blog/2016/07/12/msrt-july-2016-cerber-ransomware/)

- [The three heads of the Cerberus-like Cerber ransomware](https://www.microsoft.com/security/blog/2016/03/09/the-three-heads-of-the-cerberus-like-cerber-ransomware/)

- [Troldesh ransomware influenced by (the) Da Vinci code](https://www.microsoft.com/security/blog/2016/07/13/troldesh-ransomware-influenced-by-the-da-vinci-code/)
