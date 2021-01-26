---
title: Anti-spam message headers
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual

localization_priority: Priority
search.appverid: 
  - MET150
ms.assetid: 2e3fcfc5-5604-4b88-ac0a-c5c45c03f1db
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
description: Admins can learn about the header fields that are added to messages by Exchange Online Protection (EOP). These header fields provide information about the message and how it was processed.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Anti-spam message headers in Microsoft 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


In all Microsoft 365 organizations, Exchange Online Protection (EOP) scans all incoming messages for spam, malware, and other threats. The results of these scans are added to the following header fields in messages:

- **X-Forefront-Antispam-Report**: Contains information about the message and about how it was processed.

- **X-Microsoft-Antispam**: Contains additional information about bulk mail and phishing.

- **Authentication-results**: Contains information about SPF, DKIM, and DMARC (email authentication) results.

This article describes what's available in these header fields.

For information about how to view an email message header in various email clients, see [View internet message headers in Outlook](https://support.microsoft.com/office/cd039382-dc6e-4264-ac74-c048563d212c).

> [!TIP]
> You can copy and paste the contents of a message header into the [Message Header Analyzer](https://mha.azurewebsites.net/) tool. This tool helps parse headers and put them into a more readable format.

## X-Forefront-Antispam-Report message header fields

After you have the message header information, find the **X-Forefront-Antispam-Report** header. There will be multiple field and value pairs in this header separated by semicolons (;). For example:

`...CTRY:;LANG:hr;SCL:1;SRV:;IPV:NLI;SFV:NSPM;PTR:;CAT:NONE;SFTY:;...`

The individual fields and values are described in the following table.

> [!NOTE]
> The **X-Forefront-Antispam-Report** header contains many different fields and values. Fields that aren't described in the table are used exclusively by the Microsoft anti-spam team for diagnostic purposes.

****

|Field|Description|
|---|---|
|`ARC`|The `ARC` protocol has the following fields: <ul><li>`AAR`: Records the content of the **Authentication-results** header from DMARC.</li><li>`AMS`: Includes cryptographic signatures of the message.</li><li>`AS`: Includes cryptographic signatures of the message headers. This field contains a tag of a chain validation called `"cv="`, which includes the outcome of the chain validation as **none**, **pass**, or **fail**.</li></ul>|
|`CAT:`|The category of protection policy, applied to the message: <ul><li>`BULK`: Bulk</li><li>`DIMP`: Domain Impersonation</li><li>`GIMP`: [Mailbox intelligence based impersonation](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)</li><li>`HPHSH` or `HPHISH` : High confidence phishing</li><li>`HSPM`: High confidence spam</li><li>`MALW`: Malware</li><li>`PHSH`: Phishing</li><li>`SPM`: Spam</li><li>`SPOOF`: Spoofing</li><li>`UIMP`: User Impersonation</li><li>`AMP`: Anti-malware</li><li>`SAP`: Safe attachments</li><li>`OSPM`: Outbound spam</li></ul> <p> An inbound message may be flagged by multiple forms of protection and multiple detection scans. Policies have different priorities, and the policy with the highest priority is applied first. For more information, see [What policy applies when multiple protection methods and detection scans run on your email](how-policies-and-protections-are-combined.md).|
|`CIP:[IP address]`|The connecting IP address. You can use this IP address in the IP Allow List or the IP Block List. For more information, see [Configure connection filtering](configure-the-connection-filter-policy.md).|
|`CTRY`|The source country as determined by the connecting IP address, which may not be the same as the originating sending IP address.|
|`H:[helostring]`|The HELO or EHLO string of the connecting email server.|
|`IPV:CAL`|The message skipped spam filtering because the source IP address was in the IP Allow List. For more information, see [Configure connection filtering](configure-the-connection-filter-policy.md).|
|`IPV:NLI`|The IP address was not found on any IP reputation list.|
|`LANG`|The language in which the message was written, as specified by the country code (for example, ru_RU for Russian).|
|`PTR:[ReverseDNS]`|The PTR record (also known as the reverse DNS lookup) of the source IP address.|
|`SCL`|The spam confidence level (SCL) of the message. A higher value indicates the message is more likely to be spam. For more information, see [Spam confidence level (SCL)](spam-confidence-levels.md).|
|`SFTY`|The message was identified as phishing and will also be marked with one of the following values: <ul><li>9.1: Default value. The message contains some or all of the following elements: a phishing URL, other phishing content, or was marked as phishing by on-premises Exchange.</li><li>9.11: [Intra-org or self-to-self spoofing](anti-spoofing-protection.md#different-types-of-spoofing). The safety tip for intra-org spoofing will be added to the message.</li><li>9.19: Domain impersonation. The sending domain is attempting to [impersonate a protected domain](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365). The safety tip for domain impersonation is added to the message (if it's enabled).</li><li>9.20: User impersonation. The sending user is attempting to impersonate a user in the recipient's organization, or a protected user that's specified in an anti-phishing policy in Microsoft Defender for office 365. The safety tip for user impersonation is added to the message (if it's enabled).</li><li>9.21: [Cross-domain spoofing](anti-spoofing-protection.md#different-types-of-spoofing). The message failed anti-spoofing checks. The sender's email domain in the From header does not authenticate and is an external domain. Used in combination with [composite authentication](#authentication-results-message-header-fields).</li><li>9.22: Same as 9.21, except that the user has a safe sender that was overridden.</li><li>9.23: Same as 9.22, except that the organization has an allowed sender or domain that was overridden.</li><li>9.24: Same as 9.23, except that the user has an Exchange mail flow rule (also known as a transport rule) that was overridden.</li></ul>|
|`SFV:BLK`|Filtering was skipped and the message was blocked because it was sent from an address in a user's Blocked Senders list. <p> For more information about how admins can manage a user's Blocked Senders list, see [Configure junk email settings on Exchange Online mailboxes](configure-junk-email-settings-on-exo-mailboxes.md).|
|`SFV:NSPM`|Spam filtering marked the message as non-spam and the message was sent to the intended recipients.|
|`SFV:SFE`|Filtering was skipped and the message was allowed because it was sent from an address in a user's Safe Senders list. <p> For more information about how admins can manage a user's Safe Senders list, see [Configure junk email settings on Exchange Online mailboxes](configure-junk-email-settings-on-exo-mailboxes.md).|
|`SFV:SKA`|The message skipped spam filtering and was delivered to the Inbox because the sender was in the allowed senders list or allowed domains list in an anti-spam policy. For more information, see [Configure anti-spam policies](configure-your-spam-filter-policies.md).|
|`SFV:SKB`|The message was marked as spam because it matched a sender in the blocked senders list or blocked domains list in an anti-spam policy. For more information, see [Configure anti-spam policies](configure-your-spam-filter-policies.md).|
|`SFV:SKI`|Similar to SFV:SKN, the message skipped spam filtering for another reason (for example, an intra-organizational email within a tenant).|
|`SFV:SKN`|The message was marked as non-spam prior to being processed by spam filtering. For example, the message was marked as SCL -1 or **Bypass spam filtering** by a mail flow rule.|
|`SFV:SKQ`|The message was released from the quarantine and was sent to the intended recipients.|
|`SFV:SKS`|The message was marked as spam prior to being processed by spam filtering. For example, the message was marked as SCL 5 to 9 by a mail flow rule.|
|`SFV:SPM`|The message was marked as spam by spam filtering.|
|`SRV:BULK`|The message was identified as bulk email by spam filtering and the bulk complaint level (BCL) threshold. When the _MarkAsSpamBulkMail_ parameter is `On` (it's on by default), a bulk email message is marked as high confidence spam (SCL 9). For more information, see [Configure anti-spam policies](configure-your-spam-filter-policies.md).|
|`X-CustomSpam: [ASFOption]`|The message matched an Advanced Spam Filter (ASF) setting. To see the X-header value for each ASF setting, see [Advanced Spam Filter (ASF) settings](advanced-spam-filtering-asf-options.md).|
|

## X-Microsoft-Antispam message header fields

The following table describes useful fields in the **X-Microsoft-Antispam** message header. Other fields in this header are used exclusively by the Microsoft anti-spam team for diagnostic purposes.

****

|Field|Description|
|---|---|
|`BCL`|The bulk complaint level (BCL) of the message. A higher BCL indicates a bulk mail message is more likely to generate complaints (and is therefore more likely to be spam). For more information, see [Bulk complaint level (BCL)](bulk-complaint-level-values.md).|
|

## Authentication-results message header

The results of email authentication checks for SPF, DKIM, and DMARC are recorded (stamped) in the **Authentication-results** message header in inbound messages.

The following list describes the text that's added to the **Authentication-Results** header for each type of email authentication check:

- SPF uses the following syntax:

  ```text
  spf=<pass (IP address)|fail (IP address)|softfail (reason)|neutral|none|temperror|permerror> smtp.mailfrom=<domain>
  ```

  For example:

  ```text
  spf=pass (sender IP is 192.168.0.1) smtp.mailfrom=contoso.com
  spf=fail (sender IP is 127.0.0.1) smtp.mailfrom=contoso.com
  ```

- DKIM uses the following syntax:

  ```text
  dkim=<pass|fail (reason)|none> header.d=<domain>
  ```

  For example:

  ```text
  dkim=pass (signature was verified) header.d=contoso.com
  dkim=fail (body hash did not verify) header.d=contoso.com
  ```

- DMARC uses the following syntax:

  ```text
  dmarc=<pass|fail|bestguesspass|none> action=<permerror|temperror|oreject|pct.quarantine|pct.reject> header.from=<domain>
  ```

  For example:

  ```text
  dmarc=pass action=none header.from=contoso.com
  dmarc=bestguesspass action=none header.from=contoso.com
  dmarc=fail action=none header.from=contoso.com
  dmarc=fail action=oreject header.from=contoso.com
  ```

### Authentication-results message header fields

The following table describes the fields and possible values for each email authentication check.

****

|Field|Description|
|---|---|
|`action`|Indicates the action taken by the spam filter based on the results of the DMARC check. For example: <ul><li>**oreject** or **o.reject**: Stands for override reject. In this case Microsoft 365 uses this action when it receives a message that fails the DMARC check from a domain whose DMARC TXT record has a policy of p=reject. Instead of deleting or rejecting the message, Microsoft 365 marks the message as spam. For more information on why Microsoft 365 is configured this way, see [How Microsoft 365 handles inbound email that fails DMARC](use-dmarc-to-validate-email.md#how-microsoft-365-handles-inbound-email-that-fails-dmarc).</li><li>**pct.quarantine**: Indicates that a percentage less than 100% of messages that do not pass DMARC will be delivered anyway. This means that the message failed DMARC and the policy was set to quarantine, but the pct field was not set to 100% and the system randomly determined not to apply the DMARC action, as per the specified domain's policy.</li><li>**pct.reject**: Indicates that a percentage less than 100% of messages that do not pass DMARC will be delivered anyway. This means that the message failed DMARC and the policy was set to reject, but the pct field was not set to 100% and the system randomly determined not to apply the DMARC action, as per the specified domain's policy.</li><li>**permerror**: A permanent error occurred during DMARC evaluation, such as encountering an incorrectly formed DMARC TXT record in DNS. Attempting to resend this message isn't likely to end with a different result. Instead, you may need to contact the domain's owner in order to resolve the issue.</li><li>**temperror**: A temporary error occurred during DMARC evaluation. You may be able to request that the sender resend the message later in order to process the email properly.</li></ul>|
|`compauth`|Composite authentication result. Used by Microsoft 365 to combine multiple types of authentication such as SPF, DKIM, DMARC, or any other part of the message to determine whether or not the message is authenticated. Uses the From: domain as the basis of evaluation.|
|`dkim`|Describes the results of the DKIM check for the message. Possible values include: <ul><li>**pass**: Indicates the DKIM check for the message passed.</li><li>**fail (reason)**: Indicates the DKIM check for the message failed and why. For example, if the message was not signed or the signature was not verified.</li><li>**none**: Indicates that the message was not signed. This may or may not indicate that the domain has a DKIM record or the DKIM record does not evaluate to a result, only that this message was not signed.</li></ul>|
|`dmarc`|Describes the results of the DMARC check for the message. Possible values include: <ul><li>**pass**: Indicates the DMARC check for the message passed.</li><li>**fail**: Indicates the DMARC check for the message failed.</li><li>**bestguesspass**: Indicates that no DMARC TXT record for the domain exists, but if one had existed, the DMARC check for the message would have passed. This is because the domain in the `5321.MailFrom` address (also known as the MAIL FROM address, P1 sender, or envelope sender) matches the domain in the `5322.From` address (also known as the From address or P2 sender).</li><li>**none**: Indicates that no DMARC TXT record exists for the sending domain in DNS.|
|`header.d`|Domain identified in the DKIM signature if any. This is the domain that's queried for the public key.|
|`header.from`|The domain of the `5322.From` address in the email message header (also known as the From address or P2 sender). Recipient see the From address in email clients.|
|`reason`|The reason the composite authentication passed or failed. The value is a 3-digit code. For example: <ul><li>**000**: The message failed explicit authentication (`compauth=fail`). For example, the message received a DMARC fail with an action of quarantine or reject.</li><li>**001**: The message failed implicit authentication (`compauth=fail`). This means that the sending domain did not have email authentication records published, or if they did, they had a weaker failure policy (SPF soft fail or neutral, DMARC policy of `p=none`).</li><li>**002**: The organization has a policy for the sender/domain pair that is explicitly prohibited from sending spoofed email. This setting is manually set by an admin.</li><li>**010**: The message failed DMARC with an action of reject or quarantine, and the sending domain is one of your organization's accepted-domains (this is part of self-to-self, or intra-org, spoofing).</li><li>**1xx** or **7xx**: The message passed authentication (`compauth=pass`). The last two digits are internal codes used by Microsoft 365.</li><li>**2xx**: The message soft-passed implicit authentication (`compauth=softpass`). The last two digits are internal codes used by Microsoft 365.</li><li>**3xx**: The message was not checked for composite authentication (`compauth=none`).</li><li>**4xx** or **9xx**: The message bypassed composite authentication (`compauth=none`). The last two digits are internal codes used by Microsoft 365.</li><li>**6xx**: The message failed implicit email authentication, and the sending domain is one of your organization's accepted domains (this is part of self-to-self or intra-org spoofing).</li></ul>|
|`smtp.mailfrom`|The domain of the `5321.MailFrom` address (also known as the MAIL FROM address, P1 sender, or envelope sender). This is the email address that's used for non-delivery reports (also known as NDRs or bounce messages).|
|`spf`|Describes the results of the SPF check for the message. Possible values include: <ul><li>`pass (IP address)`: The SPF check for the message passed and includes the sender's IP address. The client is authorized to send or relay email on behalf of the sender's domain.</li><li>`fail (IP address)`: The SPF check for the message failed and includes the sender's IP address. This is sometimes called _hard fail_.</li><li>`softfail (reason)`: The SPF record designated the host as not being allowed to send, but is in transition.</li><li>`neutral`: The SPF record explicitly states that it does not assert whether the IP address is authorized to send.</li><li>`none`: The domain doesn't have an SPF record or the SPF record doesn't evaluate to a result.</li><li>`temperror`: A temporary error has occurred. For example, a DNS error. The same check later might succeed.</li><li>`permerror`: A permanent error has occurred. For example, the domain has a badly formatted SPF record.</li></ul>|
|
