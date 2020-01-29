---
title: "Anti-spam message headers"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.assetid: 2e3fcfc5-5604-4b88-ac0a-c5c45c03f1db
ms.collection:
- M365-security-compliance
description: "Learn about the header fields and values that are added to messages by Exchange Online Protection."
---

# Anti-spam message headers

When Exchange Online Protection scans an inbound email message it inserts the **X-Forefront-Antispam-Report** header into each message. The fields in this header can help provide administrators with information about the message and about how it was processed. The fields in the **X-Microsoft-Antispam** header provide additional information about bulk mail and phishing. In addition to these two headers, Exchange Online Protection also inserts email authentication results for each message it processes in the **Authentication-results** header.

For information about how to view an email message header in various email clients, see [View internet message headers in Outlook](https://support.office.com/article/cd039382-dc6e-4264-ac74-c048563d212c).

> [!TIP]
> You can copy and paste the contents of a message header into the [Message Analyzer](https://testconnectivity.microsoft.com/?tabid=mha) tool. This tool helps parse headers and put them into a more readable format.

## X-Forefront-Antispam-Report message header fields

After accessing the message header information, search for **X-Forefront-Antispam-Report** and then look for these fields. Other fields in this header are used exclusively by the Microsoft anti-spam team for diagnostic purposes.

|**Header field**|**Description**|
|:-----|:-----|
|CIP: \[IP address\]|The connecting IP address. You may want to specify this IP address when creating an IP Allow list or an IP Block list in the connection filter. For more information, see [Configure the connection filter policy](configure-the-connection-filter-policy.md).|
|CTRY|The country from which the message connected to the service. This is determined by the connecting IP address, which may not be the same as the originating sending IP address.|
|LANG|The language in which the message was written, as specified by the country code (for example, ru_RU for Russian).|
|SCL|The Spam Confidence Level (SCL) value of the message. For more information about interpreting these values, see [Spam confidence levels](spam-confidence-levels.md).|
|SRV:BULK|The message was identified as a bulk email message. If the **Block all bulk email messages advanced spam filtering option** is enabled, it will be marked as spam. If it is not enabled, it will only be marked as spam if the rest of the filtering rules determine that the message is spam.|
|SFV:SFE|Filtering was skipped and the message was let through because it was sent from an address on an individual's safe sender list.|
|SFV:BLK|Filtering was skipped and the message was blocked because it was sent from an address on an individual's blocked sender list.  <br/> **Tip**: For more information about how end users can create safe and blocked sender lists, see [Filter junk email and spam in Outlook on the web](https://support.office.com/article/db786e79-54e2-40cc-904f-d89d57b7f41d) and [Overview of the Junk Email Filter](https://support.office.com/article/5ae3ea8e-cf41-4fa0-b02a-3b96e21de089) (Outlook).|
|IPV:CAL|The message was allowed through the spam filters because the IP address was specified in an IP Allow list in the connection filter.|
|IPV:NLI|The IP address was not listed on any IP reputation list.|
|SFV:SPM|The message was marked as spam by the content filter.|
|SFV:SKS|The message was marked as spam prior to being processed by the content filter. This includes messages where the message matched a mail flow rule (also known as a transport rule) to automatically mark it as spam and bypass all additional filtering.|
|SFV:SKA|The message skipped filtering and was delivered to the inbox because it matched an allow list in the spam filter policy, such as the **Sender allow** list.|
|SFV:SKB|The message was marked as spam because it matched a block list in the spam filter policy, such as the **Sender block** list.|
|SFV:SKN|The message was marked as non-spam prior to being processed by the content filter. This includes messages where the message matched a mail flow rule to automatically mark it as non-spam and bypass all additional filtering.|
|SFV:SKI|Similar to SFV:SKN, the message skipped filtering for another reason such as being intra-organizational email within a tenant.|
|SFV:SKQ|The message was released from the quarantine and was sent to the intended recipients.|
|SFV:NSPM|The message was marked as non-spam and was sent to the intended recipients.|
|H:\[helostring\]|The HELO or EHLO string of the connecting mail server.|
|PTR:\[ReverseDNS\]|The PTR record, or pointer record, of the sending IP address, also known as the reverse DNS address.|
|ARC|The ARC protocol has the following headers: <br/>• AAR: Records the content of the Authentication results header from DMARC. <br/>• AMS: This header includes cryptographic signatures of the message. <br/>• AS: Includes cryptographic signatures of the message headers. This header contains a tag of a chain validation called "cv=", which includes the outcome of the chain validation as **none**, **pass**, or **fail**.|
|CAT:|The category of protection policy, applied to the message: <br/>MALW: Malware <br/>PHSH: Phishing <br/>HSPM: High confidence spam <br/>SPOOF: Spoofing <br/>SPM: Spam <br/>BULK: Bulk <br/>DIMP: Domain Impersonation <br/>UIMP: User Impersonation <br/>GIMP: Mailbox Intelligence<br/>Potentially, an incoming message may be flagged by multiple forms of protection and multiple detection scans. Policies have different priorities, and the policy with the highest priority will apply. See [What policy applies when multiple protection methods and detection scans run on your email](how-policies-and-protections-are-combined.md).|
|SFTY|The message was identified as phishing and will also be marked with one of the following values: <br/>9.1: Default value. The message contains a phishing URL, may contain other phishing content, or may have been marked as phishing by another mail filter such as an on-premises version of Exchange Server before relaying the message to Office 365. <br/>9.11: Message failed anti-spoofing checks where the sending domain in the From: header is the same as, or aligns with, or is part of the same organization as the receiving domain. This indicates a intra-org spoofing safety tip will be added to the message. <br/>9.19: Message failed domain impersonation checks where the sending domain is attempting to impersonate a domain owned by the receiver, or a custom domain protected by the Anti-Phishing policy. This indicates an impersonation safety tip will be added to the message, if enabled via the Anti-Phishing policy. <br/>9.20: Message failed user impersonation checks where the sending user is attempting to impersonate a user within receivers organization, or a custom user protected by the Anti-Phishing policy. This indicates an impersonation safety tip will be added to the message, if enabled via the Anti-Phishing policy. <br/>9.21: Message failed anti-spoofing checks and the sending domain in the From: header does not authenticate and is from an external domain. Used in combination with CompAuth (see Authentication-Results). <br/>9.22: Same as 9.21, except that the user has a safe sender that was overridden. <br/>9.23: Same as 9.22, except that the organization has an allowed sender or domain that was overridden. <br/>9.24: Same as 9.23, except that the user has an Exchange mail flow rule that was overridden.|
|X-CustomSpam: \[ASFOption\]|The message matched an advanced spam filtering option. For example, **X-CustomSpam: Image links to remote sites** denotes that the **Image links to remote sites** ASF option was matched. To find out which X-header text is added for each specific ASF option, see [Advanced spam filtering options](advanced-spam-filtering-asf-options.md).|
|

## X-Microsoft-Antispam message header fields

The following table describes useful fields in the **X-Microsoft-Antispam** message header. Other fields in this header are used exclusively by the Microsoft anti-spam team for diagnostic purposes.

|**Header field**|**Description**|
|:-----|:-----|
|BCL|The Bulk Complaint Level (BCL) of the message helps distinguish the different types of bulk mailers. This is represented as a value between 0 to 9. For values and other information on BCL, see [Bulk Complaint Level values](bulk-complaint-level-values.md).|

## Authentication-results message header

The results of checks against SPF, DKIM, and DMARC are recorded, or stamped, by Office 365 in the **Authentication-results** message header when our mail servers receive an email message.

### Check stamp syntax and examples

The following syntax examples show a portion of the text "stamp" that Office 365 applies to the message header for each email that undergoes an email authentication check when it is received by our mail servers. The stamp is added to the **Authentication-Results** header.

#### Syntax: SPF check stamp

For SPF, the following syntax applies.

```text
spf=<pass (IP address)|fail (IP address)|softfail (reason)|neutral|none|temperror|permerror> smtp.mailfrom=<domain>
```

**Examples: SPF check stamp

```text
spf=pass (sender IP is 192.168.0.1) smtp.mailfrom=contoso.com
spf=fail (sender IP is 127.0.0.1) smtp.mailfrom=contoso.com
```

#### Syntax: DKIM check stamp

For DKIM, the following syntax applies.

```text
dkim=<pass|fail (reason)|none> header.d=<domain>
```

**Examples: DKIM check stamp

```text
dkim=pass (signature was verified) header.d=contoso.com
dkim=fail (body hash did not verify) header.d=contoso.com
```

#### Syntax: DMARC check stamp

For DMARC, the following syntax applies.

```text
dmarc=<pass|fail|bestguesspass|none> action=<permerror|temperror|oreject|pct.quarantine|pct.reject> header.from=<domain>
```

#### Examples: DMARC check stamp

```text
dmarc=pass action=none header.from=contoso.com
dmarc=bestguesspass action=none header.from=contoso.com
dmarc=fail action=none header.from=contoso.com
dmarc=fail action=oreject header.from=contoso.com
```

### Authentication-results message header fields used by Office 365 email authentication

This table describes the fields and possible values for each email authentication check.

|**Header field**|**Description**|
|:-----|:-----|
|spf|Describes the results of the SPF check for the message. Possible values include: <br/>**pass (IP address)**: Indicates the SPF check for the message passed and includes the sender's IP address. The client is authorized to send or relay email on behalf of the sender's domain. <br/>**fail (IP address)**: Indicates the SPF check for the message failed and includes the sender's IP address. This is sometimes called _hard fail_. <br/>**softfail (reason)**: Indicates that the SPF record has designated the host as not being allowed to send but is in transition. <br/>**neutral**: Indicates that the SPF record has explicitly stated that it is not asserting whether the IP address is authorized. <br/>**none**: Indicates that the domain does not have an SPF record or the SPF record does not evaluate to a result. <br/>**temperror**: Indicates that an error has occurred that may be temporary in nature, for example, a DNS error. Trying again later might succeed without any administrator action. <br/>**permerror**: Indicates that a permanent error has occurred. This happens when, for example, the domain has a badly formatted SPF record.|
|smtp.mailfrom|Contains the source domain from which the message was sent. Any errors about this email message will be sent to the postmaster or the entity responsible for the domain. This is sometimes called the 5321.MailFrom address or the reverse-path address on the message envelope.|
|dkim|Describes the results of the DKIM check for the message. Possible values include: <br/>**pass**: Indicates the DKIM check for the message passed. <br/>**fail (reason)**: Indicates the DKIM check for the message failed and why. For example, if the message was not signed or the signature was not verified. <br/>**none**: Indicates that the message was not signed. This may or may not indicate that the domain has a DKIM record or the DKIM record does not evaluate to a result, only that this message was not signed.|
|header.d|Domain identified in the DKIM signature if any. This is the domain that's queried for the public key.|
|dmarc|Describes the results of the DMARC check for the message. Possible values include: <br/>**pass**: Indicates the DMARC check for the message passed. <br/>**fail**: Indicates the DMARC check for the message failed. <br/>**bestguesspass**: Indicates that no DMARC TXT record for the domain exists, but if one had existed, the DMARC check for the message would have passed. This is because the domain in the 5321.MailFrom address matches the domain in the 5322.From address. <br/>**none**: Indicates that no DKIM TXT record exists for the sending domain in DNS.|
|action|Indicates the action taken by the spam filter based on the results of the DMARC check. For example: <br/>**permerror**: A permanent error occurred during DMARC evaluation, such as encountering an incorrectly formed DMARC TXT record in DNS. Attempting to resend this message isn't likely to end with a different result. Instead, you may need to contact the domain's owner in order to resolve the issue. <br/>**temperror**: A temporary error occurred during DMARC evaluation. You may be able to request that the sender resend the message later in order to process the email properly. <br/>**oreject** or **o.reject**: Stands for override reject. In this case Office 365 uses this action when it receives a message that fails the DMARC check from a domain whose DMARC TXT record has a policy of p=reject. Instead of deleting or rejecting the message, Office 365 marks the message as spam. For more information on why Office 365 is configured this way, see [How Office 365 handles inbound email that fails DMARC](use-dmarc-to-validate-email.md#inbounddmarcfail). <br/>**pct.quarantine**: Indicates that a percentage less than 100% of messages that do not pass DMARC will be delivered anyway. This means that the message failed DMARC and the policy was set to quarantine, but the pct field was not set to 100% and the system randomly determined not to apply the DMARC action, as per the specified domain's policy. <br/>**pct.reject**: Indicates that a percentage less than 100% of messages that do not pass DMARC will be delivered anyway. This means that the message failed DMARC and the policy was set to reject, but the pct field was not set to 100% and the system randomly determined not to apply the DMARC action, as per the specified domain's policy.|
|header.from|The domain of the From address in the email message header. This is sometimes called the _5322.From_ address.|
|compauth|Composite authentication result. Used by Office 365 to combine multiple types of authentication such as SPF, DKIM, DMARC, or any other part of the message to determine whether or not the message is authenticated. Uses the From: domain as the basis of evaluation.|
|reason|The reason the composite authentication passed or failed. The value for the reason is made up of three digits: <br/>**000**: The message explicitly failed authentication. For example, the message received a DMARC fail with an action of quarantine or reject. <br/>**001**: The message implicitly failed authentication, and the sending domain did not publish authentication policies. For example, a DMARC policy of p=none. <br/>**1xx** or **7xx**: The message passed authentication. The second two digits are internal codes used by Office 365. <br/>**2xx**: The message soft-passed authentication. The second two digits are internal codes used by Office 365. <br/>**3xx**: The message was not checked for composite authentication. <br/>**4xx** or **9xx**: The message bypassed composite authentication. The second two digits are internal codes used by Office 365.|
|
