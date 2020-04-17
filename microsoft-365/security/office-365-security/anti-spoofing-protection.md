---
title: "Anti-spoofing protection"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
search.appverid:
- MET150
ms.assetid: d24bb387-c65d-486e-93e7-06a4f1a436c0
ms.collection:
- M365-security-compliance
- Strat_O365_IP
ms.custom: TopSMBIssues
localization_priority: Priority
description: "This article describes how Microsoft 365 mitigates against phishing attacks that use forged sender domains, that is, domains that are spoofed. It accomplishes this by analyzing the messages and blocking the ones that can be authenticated neither by using standard email authentication methods, nor other sender reputation techniques. This change was implemented to reduce the number of phishing attacks to which organizations are exposed."
---

# Anti-spoofing protection

This article describes how Microsoft 365 mitigates against phishing attacks that use forged sender domains, that is, domains that are spoofed. It accomplishes this by analyzing the messages and blocking the ones that cannot be authenticated using standard email authentication methods, nor other sender reputation techniques. This change was implemented to reduce the number of phishing attacks to which organizations are exposed.

When it comes to protecting its users, Microsoft takes the threat of phishing seriously. Spoofing is a common technique that's used by attackers. **Spoofed messages appear to originate from someone or somewhere other than the actual source**. This technique is often used in phishing campaigns that are designed to obtain user credentials. The anti-spoofing technology in EOP specifically examines forgery of the From header in the message body (used to display the message sender in email clients). When EOP has high confidence that the From header is forged, the message is identified as spoofed.

The following anti-spoofing technologies are available in EOP:

## How spoofing is used in phishing attacks

When it comes to protecting its users, Microsoft takes the threat of phishing seriously. One of the techniques that spammers and phishers commonly use is spoofing, which is when the sender is forged, and a message appears to originate from someone or somewhere other than the actual source. This technique is often used in phishing campaigns designed to obtain user credentials. Microsoft's Anti-spoof technology specifically examines forgery of the 'From: header' which is the one that shows up in an email client like Outlook. When Microsoft has high confidence that the From: header is spoofed, it identifies the message as a spoof.

Spoofing messages have two negative implications for real life users:

### 1. Spoofed messages deceive users

First, a spoofed message may trick a user into clicking a link and giving up their credentials, downloading malware, or replying to a message with sensitive content (the latter of which is known as Business Email Compromise). For example, the following is a phishing message with a spoofed sender of msoutlook94@service.outlook.com:

![Phishing message impersonating service.outlook.com](../../media/1a441f21-8ef7-41c7-90c0-847272dc5350.jpg)

The above did not actually come from service.outlook.com, but instead was spoofed by the phisher to make it look like it did. It is attempting to trick a user into clicking the link within the message.

The next example is spoofing contoso.com:

![Phishing message - business email compromise](../../media/da15adaa-708b-4e73-8165-482fc9182090.jpg)

The message looks legitimate, but in fact is a spoof. This phishing message is a type of Business Email Compromise which is a subcategory of phishing.

### 2. Users confuse real messages for fake ones

Second, spoofed messages create uncertainty for users who know about phishing messages but cannot tell the difference between a real message and spoofed one. For example, the following is an example of an actual password reset from the Microsoft Security account email address:

![Microsoft legitimate password reset](../../media/58a3154f-e83d-4f86-bcfe-ae9e8c87bd37.jpg)

The above message did come from Microsoft, but at the same time, users are used to getting phishing messages that may trick a user into clicking a link and giving up their credentials, downloading malware, or replying to a message with sensitive content. Because it is difficult to tell the difference between a real password reset and a fake one, many users ignore these messages, report them as spam, or unnecessarily report the messages back to Microsoft as missed phishing scams.

To stop spoofing, the email filtering industry has developed email authentication protocols such as [SPF](set-up-spf-in-office-365-to-help-prevent-spoofing.md), [DKIM](use-dkim-to-validate-outbound-email.md), and [DMARC](use-dmarc-to-validate-email.md). DMARC prevents spoofing from examining a message's sender. That is, the sender that users see in their email client (in the examples above it is service.outlook.com, outlook.com, and accountprotection.microsoft.com). Furthermore, users can also see that the domain has passed SPF or DKIM, which means that the domain has been authenticated and is therefore not spoofed. For a more complete discussion, see the section "*Understanding why email authentication is not always enough to stop spoofing"*  later on in this article.

However, the problem is that email authentication records are optional, not required. Therefore, while domains with strong authentication policies like microsoft.com and skype.com are protected from spoofing, domains that publish weaker authentication policies, or no policy at all, are targets for being spoofed. As of March 2018, only 9% of domains of companies in the Fortune 500 publish strong email authentication policies. The remaining 91% may be spoofed by a phisher, and unless the email filter detects it using another policy, may be delivered to an end user and deceive them:

![DMARC policies of Fortune 500 companies](../../media/84e77d34-2073-4a8e-9f39-f109b32d06df.jpg)

The proportion of small-to-medium sized companies that are not in the Fortune 500 that publish strong email authentication policies is smaller, and smaller still for domains that are outside of North America and western Europe.

This is a big problem because while enterprises may not be aware of how email authentication works, phishers do understand and take advantage of the lack of it.

For information on setting up SPF, DKIM, and DMARC, see the section "*Customers of Microsoft 365 for business"*  later on in this document.

## Stopping spoofing with implicit email authentication

Because phishing and spear phishing is such a problem, and because of the limited adoption of strong email authentication policies, Microsoft continues to invest in capabilities to protect its customers. Therefore, Microsoft is moving ahead with  *implicit email authentication* - if a domain doesn't authenticate, Microsoft will treat it as if it had published email authentication records and treat it accordingly if it doesn't pass.

To accomplish this, Microsoft has built numerous extensions to regular email authentication including sender reputation, sender/recipient history, behavioral analysis, and other advanced techniques. A message sent from a domain that doesn't publish email authentication will be marked as spoof unless it contains other signals to indicate that it is legitimate.

By doing this, end users can have confidence that an email sent to them has not been spoofed, senders can be confident that nobody is impersonating their domain, and customers of Microsoft 365 for business can offer even better protection such as Impersonation protection.

To see Microsoft's general announcement, see [A Sea of Phish Part 2 - Enhanced Anti-spoofing in Office 365](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Schooling-A-Sea-of-Phish-Part-2-Enhanced-Anti-spoofing/ba-p/176209).

## Identifying that a message is classified as spoofed

### Composite authentication

While SPF, DKIM, and DMARC are all useful by themselves, they don't communicate enough authentication status in the event a message has no explicit authentication records. Therefore, Microsoft has developed an algorithm that combines multiple signals into a single value called Composite Authentication, or compauth for short. Customers in Microsoft 365 have compauth values stamped into the *Authentication-Results* header in the message headers.

```text
Authentication-Results:
  compauth=<fail|pass|softpass|none> reason=<yyy>
```

|**CompAuth result**|**Description**|
|:-----|:-----|
|fail|Message failed explicit authentication (sending domain published records explicitly in DNS) or implicit authentication (sending domain did not publish records in DNS, so Microsoft 365 interpolated the result as if it had published records).|
|pass|Message passed explicit authentication (message passed DMARC, or [Best Guess Passed DMARC](https://blogs.msdn.microsoft.com/tzink/2015/05/06/what-is-dmarc-bestguesspass-in-office-365)) or implicit authentication with high confidence (sending domain does not publish email authentication records, but Microsoft 365 has strong backend signals to indicate the message is likely legitimate).|
|softpass|Message passed implicit authentication with low-to-medium confidence (sending domain does not publish email authentication, but Microsoft 365 has backend signals to indicate the message is legitimate but the strength of the signal is weaker).|
|none|Message did not authenticate (or it did authenticate but did not align), but composite authentication not applied due to sender reputation or other factors.|

|||
|:-----|:-----|
|**Reason**|**Description**|
|0xx |Message failed composite authentication.<br/>**000** means the message failed DMARC with an action of reject or quarantine.  <br/>**001** means the message failed implicit email authentication. This means that the sending domain did not have email authentication records published, or if they did, they had a weaker failure policy (SPF soft fail or neutral, DMARC policy of p=none).  <br/>**002** means the organization has a policy for the sender/domain pair that is explicitly prohibited from sending spoofed email, this setting is manually set by an administrator.  <br/>**010** means the message failed DMARC with an action of reject or quarantine, and the sending domain is one of your organization's accepted-domains (this is part of self-to-self, or intra-org, spoofing).|
|1xx, 2xx, 3xx, 4xx, and 5xx|Correspond to various internal codes for why a message passed implicit authentication, or had no authentication but no action was applied.|
|6xx|Means the message failed implicit email authentication, and the sending domain is one of your organization's accepted domains (this is part of self-to-self, or intra-org, spoofing).|

By looking at the headers of a message, an administrator or even an end user can determine how Microsoft 365 arrives at the conclusion that the sender may be spoofed.

### Differentiating between different types of spoofing

Microsoft differentiates between two different types of spoofing messages:

#### Intra-org spoofing

Also known as self-to-self spoofing, this occurs when the domain in the From: address is the same as, or aligns with, the recipient domain (when recipient domain is one of your organization's [accepted domains](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)); or, when the domain in the From: address is part of the same organization.

For example, the following has sender and recipient from the same domain (contoso.com). Spaces are inserted into the email address to prevent spambot harvesting on this page):

> From: sender @ contoso.com <br/> To: recipient @ contoso.com

The following has the sender and recipient domains aligning with the organizational domain (fabrikam.com):

> From: sender @ foo.fabrikam.com <br/> To: recipient @ bar.fabrikam.com

The following sender and recipient domains are different (microsoft.com and bing.com), but they belong to the same organization (that is, both are part of the organization's Accepted Domains):

> From: sender @ microsoft.com <br/> To: recipient @ bing.com

Messages that fail intra-org spoofing contain the following values in the headers:

`X-Forefront-Antispam-Report: ...CAT:SPM/HSPM/PHSH;...SFTY:9.11`

The CAT is the category of the message, and it is normally stamped as SPM (spam), but occasionally may be HSPM (high confidence spam) or PHISH (phishing) depending upon what other types of patterns occur in the message.

The SFTY is the safety level of the message, the first digit (9) means the message is phishing, and second set of digits after the dot (11) means it is intra-org spoofing.

There is no specific reason code for Composite Authentication for intra-org spoofing, that will be stamped later in 2018 (timeline not yet defined).

#### Cross-domain spoofing

This occurs when the sending domain in the From: address is an external domain to the receiving organization. Messages that fail Composite Authentication due to cross-domain spoofing contain the following values in the headers:

`Authentication-Results: ... compauth=fail reason=000/001`

`X-Forefront-Antispam-Report: ...CAT:SPOOF;...SFTY:9.22`

In both cases, the following red safety tip is stamped in the message, or an equivalent that is customized to the recipient mailbox's language:

![Red safety tip - fraud detection](../../media/a366156a-14e8-4c14-bfe5-2031b21936f8.jpg)

It's only by looking at the From: address and knowing what your recipient email is, or by inspecting the email headers, that you can differentiate between intra-org and cross-domain spoofing.

## How customers of Microsoft 365 for business can prepare themselves for the new anti-spoofing protection

### Information for administrators

As an administrator of an organization in Office 365, there are several key pieces of information you should be aware of.

### Understanding why email authentication is not always enough to stop spoofing

The new anti-spoofing protection relies on email authentication (SPF, DKIM, and DMARC) to not mark a message as spoofing. A common example is when a sending domain has never published SPF records. If there are no SPF records or they are incorrectly set up, a sent message will be marked as spoofed unless Microsoft has back-end intelligence that says the message is legitimate.

For example, prior to anti-spoofing being deployed, a message may have looked like the following with no SPF record, no DKIM record, and no DMARC record:

```text
Authentication-Results: spf=none (sender IP is 1.2.3.4)
  smtp.mailfrom=fabrikam.com; contoso.com; dkim=none
  (message not signed) header.d=none; contoso.com; dmarc=none
  action=none header.from=fabrikam.com;
From: sender @ fabrikam.com
To: receiver @ contoso.com
```

After anti-spoofing, if you have Office 365 Enterprise E5, EOP, or ATP, the compauth value is stamped:

```text
Authentication-Results: spf=none (sender IP is 1.2.3.4)
  smtp.mailfrom=fabrikam.com; contoso.com; dkim=none
  (message not signed) header.d=none; contoso.com; dmarc=none
  action=none header.from=fabrikam.com; compauth=fail reason=001
From: sender @ fabrikam.com
To: receiver @ contoso.com
```

If fabrikam.com fixed this by setting up an SPF record but not a DKIM record, this would pass composite authentication because the domain that passed SPF aligned with the domain in the From: address:

```text
Authentication-Results: spf=pass (sender IP is 1.2.3.4)
  smtp.mailfrom=fabrikam.com; contoso.com; dkim=none
  (message not signed) header.d=none; contoso.com; dmarc=bestguesspass
  action=none header.from=fabrikam.com; compauth=pass reason=109
From: sender @ fabrikam.com
To: receiver @ contoso.com
```

Or, if they set up a DKIM record but not an SPF record, this would also pass composite authentication because the domain in the DKIM-Signature that passed aligned with the domain in the From: address:

```text
Authentication-Results: spf=none (sender IP is 1.2.3.4)
  smtp.mailfrom=fabrikam.com; contoso.com; dkim=pass
  (signature was verified) header.d=outbound.fabrikam.com;
  contoso.com; dmarc=bestguesspass action=none
  header.from=fabrikam.com; compauth=pass reason=109
From: sender @ fabrikam.com
To: receiver @ contoso.com
```

However, a phisher may also set up SPF and DKIM and sign the message with their own domain, but specify a different domain in the From: address. Neither SPF nor DKIM requires the domain to align with the domain in the From: address, so unless fabrikam.com published DMARC records, this would not be marked as a spoof using DMARC:

```text
Authentication-Results: spf=pass (sender IP is 5.6.7.8)
  smtp.mailfrom=maliciousDomain.com; contoso.com; dkim=pass
  (signature was verified) header.d=maliciousDomain.com;
  contoso.com; dmarc=none action=none header.from=fabrikam.com;
From: sender @ fabrikam.com
To: receiver @ contoso.com
```

In the email client (Outlook, Outlook on the web, or any other email client), only the From: domain is displayed, not the domain in the SPF or DKIM, and that can mislead the user into thinking the message came from fabrikam.com, but actually came from maliciousDomain.com.

![Authenticated message but From: domain does not align with what passed SPF or DKIM](../../media/a9b5ab2a-dfd3-47c6-8ee8-e3dab2fae528.jpg)

For that reason, Microsoft 365 requires that the domain in the From: address aligns with the domain in the SPF or DKIM signature, and if it doesn't, contains some other internal signals that indicates that the message is legitimate. Otherwise, the message would be a compauth fail.

```text
Authentication-Results: spf=none (sender IP is 5.6.7.8)
  smtp.mailfrom=maliciousDomain.com; contoso.com; dkim=pass
  (signature was verified) header.d=maliciousDomain.com;
  contoso.com; dmarc=none action=none header.from=contoso.com;
  compauth=fail reason=001
From: sender@contoso.com
To: someone@fabrikam.com
```

Thus, anti-spoofing protects against domains with no authentication, and against domains who set up authentication but mismatch against the domain in the From: address as that is the one that the user sees and believes is the sender of the message. This is true both of domains external to your organization, as well as domains within your organization.

Therefore, if you ever receive a message that failed composite authentication and is marked as spoofed, even though the message passed SPF and DKIM, it's because the domain that passed SPF and DKIM are not aligned with the domain in the From: address.

### Understanding changes in how spoofed emails are treated

Currently, for all organizations in Microsoft 365 - ATP and non-ATP - messages that fail DMARC with a policy of reject or quarantine are marked as spam and usually take the high confidence spam action, or sometimes the regular spam action (depending on whether other spam rules first identify it as spam). Intra-org spoof detections take the regular spam action. This behavior does not need to be enabled, nor can it be disabled.

However, for cross-domain spoofing messages, before this change they would go through regular spam, phish, and malware checks and if other parts of the filter identified them as suspicious, would mark them as spam, phish, or malware respectively. With the new cross-domain spoofing protection, any message that can't be authenticated will, by default, take the action defined in the Anti-phishing \> Anti-spoofing policy. If one is not defined, it will be moved to a users Junk Email folder. In some cases, more suspicious messages will also have the red safety tip added to the message.

This may result in some messages that were previously marked as spam still getting marked as spam but will now also have a red safety tip; in other cases, messages that were previously marked as non-spam will start getting marked as spam (CAT:SPOOF) with a red safety tip added. In still other cases, customers that were moving all spam and phish to the quarantine would now see them going to the Junk Mail Folder (this behavior can be changed, see [Changing your anti-spoofing settings](#changing-your-anti-spoofing-settings)).

There are multiple different ways a message can be spoofed (see  [Differentiating between different types of spoofing](#differentiating-between-different-types-of-spoofing) earlier in this article) but as of March 2018 the way Microsoft treats these messages is not yet unified. The following table is a quick summary, with Cross-domain spoofing protection being new behavior:

|**Type of spoof**|**Category**|**Safety tip added?**|**Applies to**|
|:-----|:-----|:-----|:-----|
|DMARC fail (quarantine or reject)|HSPM (default), may also be SPM or PHSH|No (not yet)|All customers, Outlook.com|
|Self-to-self|SPM|Yes|All Microsoft 365 organizations, Outlook.com|
|Cross-domain|SPOOF|Yes|Office 365 Advanced Threat Protection and E5 customers|

### Changing your anti-spoofing settings

To create or update your (cross-domain) anti-spoofing settings, navigate to the Anti-phishing \> Anti-spoofing settings under the Threat Management \> Policy tab in the Security & Compliance Center. If you have never created any anti-phishing settings, you will need to create one:

![Anti-phishing - create a new policy](../../media/9337ec91-270e-4fa7-9dfa-a51a2d1eb95e.jpg)

If you've already created one, you can select it to modify it:

![Anti-phishing - modify existing policy](../../media/75457a7c-882e-4984-80d1-21a12b42c53a.jpg)

Select the policy you just created and proceed through the steps as described in [Learn more about spoof intelligence](learn-about-spoof-intelligence.md).

![Enable or disable anti-spoofing](../../media/c49e2147-c954-443c-9144-1cbd139e1166.jpg)

![Enable or disable anti-spoofing safety tips](../../media/eec7c407-31fc-4f73-8325-307d82d1fb53.jpg)

To create a new policy by using PowerShell:

```powershell
$org = Get-OrganizationConfig
$name = "My first anti-phishing policy for " + $org.Name
# Note: The name should not exclude 64 characters, including spaces.
# If it does, you will need to pick a smaller name.
# Next, create a new anti-phishing policy with the default values
New-AntiphishPolicy -Name $Name
# Select the domains to scope it to
# Multiple domains are specified in a comma-separated list
$domains = "domain1.com, domain2.com, domain3.com"
# Next, create the anti-phishing rule, scope it to the anti-phishing rule
New-AntiphishRule -Name $name -AntiphishPolicy $name -RecipientDomainIs $domains
```

You may then modify the anti-phishing policy parameters using PowerShell, following the documentation at [Set-AntiphishPolicy](https://docs.microsoft.com/powershell/module/exchange/advanced-threat-protection/Set-AntiPhishPolicy). You may specify the $name as a parameter:

```powershell
Set-AntiphishPolicy -Identity $name <fill in rest of parameters>
```

Later in 2018, rather than you having to create a default policy, one will be created for you that is scoped to all the recipients in your organization so you don't have to specify it manually (the screenshots below are subject to change before the final implementation).

![Default policy for Anti-phishing](../../media/1f27a0bf-e202-4e12-bbac-24baf013c8f9.jpg)

Unlike a policy that you create, you cannot delete the default policy, modify its priority, or choose which users, domains, or groups to scope it to.

![Anti-phishing default policy details](../../media/30c21ceb-df52-4c93-aa65-f44a55dc1009.jpg)

- **Anti-phishing policies**: In EOP, the built-in anti-phishing policy allows you to turn spoof intelligence on or off, turn unauthenticated sender identification in Outlook on or off, and specify the action for blocked spoofed senders (move to the Junk Email folder or quarantine). Advanced anti-phishing policies that are available in Office 365 Advanced Threat Protection (ATP) also contain anti-impersonation settings (protected senders and domains), mailbox intelligence settings, and adjustable advanced phishing thresholds. For more information, see [Anti-phishing policies in Office 365](set-up-anti-phishing-policies.md).

- **Email authentication**: An integral part of any anti-spoofing effort is the use of email authentication (also known as email validation) by SPF, DKIM, and DMARC records in DNS. You can configure these records for your domains so destination email systems can check the validity of messages that claim to be from senders in your domains. For inbound messages, Office 365 requires email authentication for sender domains. For more information, see [Email authentication in Office 365](email-validation-and-authentication.md).

You should only disable anti-spoofing protection if you have another mail server or servers in front of Microsoft 365 (see Legitimate scenarios to disable anti-spoofing for more details).

EOP analyzes and blocks messages that can't be authenticated by the combination of standard email authentication methods and sender reputation techniques.

![EOP anti-spoofing checks](../../media/eop-anti-spoofing-protection.png)

### Managing legitimate senders who are sending unauthenticated email

Microsoft 365 keeps track of who is sending unauthenticated email to your organization. If the service thinks the sender is not legitimate, it will mark it as a *compauth* failure. This will be classified as SPOOF although it depends on your anti-spoofing policy that was applied to the message.

However, as an administrator, you can specify which senders are permitted to send spoofed email, overriding Microsoft 365's decision.

#### Method 1 - If your organization owns the domain, set up email authentication

This method can be used to resolve intra-org spoofing, and cross-domain spoofing in cases where you own or interact with multiple tenants. It also helps resolve cross-domain spoofing where you send to other customers within Microsoft 365, and also third parties that are hosted in other providers.

For more details, see [Customers of Microsoft 365 for business](#customers-of-microsoft-365-for-business).

#### Method 2 - Use Spoof intelligence to configure permitted senders of unauthenticated email

You can also use [Spoof Intelligence](learn-about-spoof-intelligence.md) to permit senders to transmit unauthenticated messages to your organization.

For external domains, the spoofed user is the domain in the From address, while the sending infrastructure is either the sending IP address (divided up into /24 CIDR ranges), or the organizational domain of the PTR record (in the screenshot below, the sending IP might be 131.107.18.4 whose PTR record is outbound.mail.protection.outlook.com, and this would show up as outlook.com for the sending infrastructure).

To permit this sender to send unauthenticated email, change the **No** to a **Yes**.

![Setting up anti-spoofing allowed senders](../../media/d4334921-d820-4334-8217-788279701e94.jpg)

You can also use PowerShell to allow specific sender to spoof your domain:

```powershell
$file = "C:\My Documents\Summary Spoofed Internal Domains and Senders.csv"
Get-PhishFilterPolicy -Detailed -SpoofAllowBlockList -SpoofType External | Export-CSV $file
```

![Getting spoofed senders from Powershell](../../media/0e27ffcf-a5db-4c43-a19b-fa62326d5118.jpg)

In the previous image, additional line breaks have been added to make this screenshot fit. Normally, all the values would appear on a single line.

Edit the file and look for the line that corresponds to outlook.com and bing.com, and change the AllowedToSpoof entry from No to Yes:

![Setting spoof allow to Yes in Powershell](../../media/62340452-62d3-4958-9ce9-afe5275a870d.jpg)

Save the file, and then run:

```powershell
$UpdateSpoofedSenders = Get-Content -Raw "C:\My Documents\Spoofed Senders.csv"
Set-PhishFilterPolicy -Identity Default -SpoofAllowBlockList $UpdateSpoofedSenders
```

This will now allow bing.com to send unauthenticated email from \*.outlook.com.

#### Method 3 - Create an allow entry for the sender/recipient pair

You can also choose to bypass all spam filtering for a particular sender. For more details, see [How to securely add a sender to an allow list in Office 365](https://blogs.msdn.microsoft.com/tzink/2017/11/29/how-to-securely-add-a-sender-to-an-allow-list-in-office-365/).

If you use this method, it will skip spam and some of the phish filtering, but not malware filtering.

#### Method 4 - Contact the sender and ask them to set up email authentication

Because of the problem of spam and phishing, Microsoft recommends all senders set up email authentication. If you know an administrator of the sending domain, contact them and request that they set up email authentication records so you do not have to add any overrides. For more information, see [Administrators of domains that are not customers](#administrators-of-domains-that-are-not-customers)" later in this article.

While it may be difficult at first to get sending domains to authenticate, over time, as more and more email filters start junking or even rejecting their email, it will cause them to set up the proper records to ensure better delivery.

### Viewing reports of how many messages were marked as spoofed

Once your anti-spoofing policy is enabled, you can use threat investigation and response capabilities to get numbers around how many messages are marked as phish. To do this, go into the Security & Compliance Center (SCC) under Threat Management \> Explorer, set the View to Phish, and group by Sender Domain or Protection Status:

![Viewing how many messages are marked as phish](../../media/de25009a-44d4-4c5f-94ba-9c75cd9c64b3.jpg)

You can interact with the various reports to see how many were marked as phishing, including messages marked as SPOOF. To learn more, see [Get started with Office 365 Threat investigation and response](office-365-ti.md).

You can't yet split out which messages were marked due to spoofing as opposed to other types of phishing (general phishing, domain or user impersonation, and so on). However, later, you will be able to do this through the Security & Compliance Center. Once you do, you can use this report as a starting place to identify sending domains that may be legitimate that are being marked as spoof due to failing authentication.

The following screenshot is a proposal for how this data will look, but may change when released:

![Viewing phishing reports by detection type](../../media/dd25d63f-152c-4c55-a07b-184ecda2de81.jpg)

For non-ATP and E5 customers, these reports will be available later under the Threat Protection Status (TPS) reports, but will be delayed by at least 24 hours. This page will be updated as they are integrated into the Security & Compliance Center.

### Predicting how many messages will be marked as spoof

Once Microsoft 365 updates its settings to let you turn the anti-spoofing enforcement Off, or on with Basic or High enforcement, you will be given the ability to see how message disposition will change at the various settings. That is, if anti-spoofing is Off, you will be able to see how many messages will be detected as Spoof if you turn to Basic; or, if it's Basic, you will be able to see how many more messages will be detected as Spoof if you turn it to High.

This feature is currently under development. As more details are defined, this page will be updated both with screenshots of the Security and Compliance Center, and with PowerShell examples.

!["What If" report for enabling anti-spoofing](../../media/fdd085ae-02c1-4327-a063-bfe9a32ff1eb.jpg)

![Possible UX for allowing a spoofed sender](../../media/53f9f73e-fb01-47f3-9a6d-850c1aef5efe.jpg)

### Legitimate scenarios to disable anti-spoofing

Anti-spoofing better protects customers from phishing attacks, and therefore disabling anti-spoofing protection is strongly discouraged. By disabling it, you may resolve some short-term false positives, but long term you will be exposed to more risk. The cost for setting up authentication on the sender side, or making adjustments in the phishing policies, are usually one-time events or require only minimal, periodic maintenance. However, the cost to recover from a phishing attack where data has been exposed, or assets have been compromised is much higher.

For this reason, it is better to work through anti-spoofing false positives than to disable anti-spoof protection.

However, there is a legitimate scenario where anti-spoofing should be disabled, and that is when there are additional mail-filtering products in the message routing, and Microsoft 365 is not the first hop in the email path:

![Customer MX record does not point to Office 365](../../media/62127c16-cfb8-4880-9cad-3c12d827c67e.jpg)

Spoofing messages have the following negative implications for users:

- **Spoofed messages deceive users**: A spoofed message might trick the recipient into clicking a link and giving up their credentials, downloading malware, or replying to a message with sensitive content (known as a business email compromise or BEC).

  The following message is an example of phishing that uses the spoofed sender msoutlook94@service.outlook.com:

  ![Phishing message impersonating service.outlook.com](../../media/1a441f21-8ef7-41c7-90c0-847272dc5350.jpg)

  This message didn't come from service.outlook.com, but the attacker spoofed the **From** header field to make it look like it did. This was an attempt to trick the recipient into clicking the **change your password** link and giving up their credentials.

  The following message is an example of BEC that uses the spoofed email domain contoso.com:

  ![Phishing message - business email compromise](../../media/da15adaa-708b-4e73-8165-482fc9182090.jpg)

  The message looks legitimate, but the sender is spoofed.

- **Users confuse real messages for fake ones**: Even users who know about phishing might have difficulty seeing the differences between real messages and spoofed messages.

  The following message is an example of a real password reset message from the Microsoft Security account:

  ![Microsoft legitimate password reset](../../media/58a3154f-e83d-4f86-bcfe-ae9e8c87bd37.jpg)

  The message really did come from Microsoft, but users have been conditioned to be suspicious. Because it's difficult to the difference between a real password reset message and a fake one, users might ignore the message, report it as spam, or unnecessarily report the message to Microsoft as phishing.

## Different types of spoofing

Microsoft differentiates between two different types of spoofed messages:

- **Intra-org spoofing**: Also known as _self-to-self_ spoofing. For example:

  - The sender and recipient are in the same domain:
    > From: chris@contoso.com <br/> To: michelle@contoso.com

  - The sender and the recipient are in subdomains of the same domain:
    > From: laura@marketing.fabrikam.com <br/> To: julia@engineering.fabrikam.com

  - The sender and recipient are in different domains that belong to the same organization (that is, both domains are configured as [accepted domains](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in the same organization):
    > From: sender @ microsoft.com <br/> To: recipient @ bing.com

    Spaces are used in the email addresses to prevent spambot harvesting.

  Messages that fail [composite authentication](email-validation-and-authentication.md#composite-authentication) due to intra-org spoofing contain the following header values:

  `Authentication-Results: ... compauth=fail reason=6xx`

  `X-Forefront-Antispam-Report: ...CAT:SPM/HSPM/PHSH;...SFTY:9.11`

  - `reason=6xx` indicates intra-org spoofing.

  - CAT is the category of the message, and it is normally SPM (spam), but occasionally might be HSPM (high confidence spam) or PHISH (phishing) depending upon what other types of patterns were detected in the message.

  - SFTY is the safety level of the message. 9 indicates phishing, .11 indicates intra-org spoofing.

- **Cross-domain spoofing**: The sender and recipient domains are different, and have no relationship to each other (also known as external domains). For example:
    > From: chris@contoso.com <br/> To: michelle@tailspintoys.com

  Messages that fail [composite authentication](email-validation-and-authentication.md#composite-authentication) due to cross-domain spoofing contain the following headers values:

  `Authentication-Results: ... compauth=fail reason=000/001`

  `X-Forefront-Antispam-Report: ...CAT:SPOOF;...SFTY:9.22`

  - `reason=000` value indicates the message failed explicit email authentication. `reason=001` indicates the message failed implicit email authentication.

  - SFTY is the safety level of the message. 9 indicates phishing, .22 indicates cross-domain spoofing.

For more information about the Category and composite authentication (compauth) values that are related to spoofing, see [Anti-spam message headers in Office 365](anti-spam-message-headers.md).

For more information about DMARC, see [Use DMARC to validate email in Office 365](use-dmarc-to-validate-email.md).

## Reports of how many messages were marked as spoofed

EOP organizations can use the **Spoof detections** report in the reports dashboard in the Security & Compliance Center. For more information, see [Spoof Detections report](view-email-security-reports.md#spoof-detections-report).

Office 365 ATP organization can use Threat Explorer in the Security & Compliance Center to view information about phishing attempts. For more information, see [Office 365 threat investigation and response](office-365-ti.md).

## Problems with anti-spoofing protection

Mailing lists (also known as discussion lists) are known to have problems with anti-spoofing due to the way they forward and modify messages.

For example, Gabriela Laureano (glaureano@contoso.com) is interested in bird watching, joins the mailing list birdwatchers@fabrikam.com, and sends the following message to the list:

> **From:** "Gabriela Laureano" \<glaureano@contoso.com\> <br/> **To:** Birdwatcher's Discussion List \<birdwatchers@fabrikam.com\> <br/> 
**Subject:** Great viewing of blue jays at the top of Mt. Rainier this week <br/><br/>Anyone want to check out the viewing this week from Mt. Rainier?

When the email list receives the message, they format the message, modify its contents, and replay it to the rest of the members on the discussion list which, is made up of participants from many different email receivers.

> **From:** Gabriela Laureano \<glaureano @ contoso.com\> <br/> **To:** Birdwatcher's Discussion List \<birdwatchers @ fabrikam.com\> <br/> **Subject:** [BIRDWATCHERS] Great viewing of blue jays at the top of Mt. Rainier this week <br/><br/> Anyone want to check out the viewing this week from Mt. Rainier? <br/><br/> 
This message was sent to the Birdwatchers Discussion List. You can unsubscribe at any time.

In this example, the replayed message has the same From: address (glaureano @ contoso.com) but the original message has been modified by adding a tag to the Subject line, and a footer to the bottom of the message. This type of message modification is common in mailing lists, and may result in false positives.

If you or someone in your organization is an administrator of the mailing list, you may be able to configure it to pass anti-spoofing checks.

- Check the FAQ at DMARC.org: [I operate a mailing list and I want to interoperate with DMARC, what should I do?](https://dmarc.org/wiki/FAQ#I_operate_a_mailing_list_and_I_want_to_interoperate_with_DMARC.2C_what_should_I_do.3F)

- Read the instructions at this blog post: [A tip for mailing list operators to interoperate with DMARC to avoid failures](https://blogs.msdn.microsoft.com/tzink/2017/03/22/a-tip-for-mailing-list-operators-to-interoperate-with-dmarc-to-avoid-failures/)

- Consider installing updates on your mailing list server to support ARC, see [https://arc-spec.org](https://arc-spec.org/)

If you don't own the mailing list:

- You can request the maintainer of the mailing list to implement one of the previous options (they should also have email authentication set up for the domain the mailing list is relaying from).

- You can create mailbox rules in your email client to move messages to the Inbox. You can also request your organization's administrators to set up allow rules, or overrides as discussed in the [Managing legitimate senders who are sending unauthenticated email](#managing-legitimate-senders-who-are-sending-unauthenticated-email)section in this topic.

- You can create a support ticket with Office 365 to create an override for the mailing list to treat it as legitimate.

### Other scenarios

1. If neither of the above common scenarios applies to your situation, report the message as a false positive back to Microsoft. For more information, see the section [How can I report spam or non-spam messages back to Microsoft?](#how-can-i-report-spam-or-non-spam-messages-back-to-microsoft) later in this article.

2. You may also contact your email administrator who can raise it as a support ticket with Microsoft. The Microsoft engineering team will investigate why the message was marked as a spoof.

3. Additionally, if you know who the sender is and are confident they are not being maliciously spoofed, you may reply back to the sender indicating that they are sending messages from a mail server that does not authenticate. This sometimes results in the original sender contacting their IT administrator who will set up the required email authentication records.

   When enough senders reply back to domain owners that they should set up email authentication records, it spurs them into taking action. While Microsoft also works with domain owners to publish the required records, it helps even more when individual users request it.

4. Optionally, add the sender to your Safe Senders list. However, be aware that if a phisher spoofs that account, it will be delivered to your mailbox. Therefore, this option should be used sparingly.

## How senders to Microsoft should prepare for anti-spoofing protection

If you are an administrator who currently sends messages to Microsoft, either Office 365 or Outlook.com, you should ensure that your email is properly authenticated otherwise it may be marked as spam or phish.

### Customers of Microsoft 365 for business

If you are a customer and you use Microsoft 365 to send outbound email:

- For your domains, [Set up SPF to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md)

- For your primary domains, [Use DKIM to validate outbound email sent from your custom domain](use-dkim-to-validate-outbound-email.md)

- [Consider setting up DMARC records](use-dmarc-to-validate-email.md) for your domain to determine who are your legitimate senders

Microsoft does not provide detailed implementation guidelines for each of SPF, DKIM, and DMARC. However, there is a lot of information published online. There are also 3rd party companies dedicated to helping your organization set up email authentication records.

### Administrators of domains that are not customers

If you are a domain administrator but are not a customer:

- You should set up SPF to publish your domain's sending IP addresses, and also set up DKIM (if available) to digitally sign messages. You may also consider setting up DMARC records.

- If you have bulk senders who are transmitting email on your behalf, you should work with them to send email in a way such that the sending domain in the From: address (if it belongs to you) aligns with the domain that passes SPF or DMARC.

- If you have on-premises mail servers, or send from a Software-as-a-service provider, or from a cloud-hosting service like Microsoft Azure, GoDaddy, Rackspace, Amazon Web Services, or similar, you should ensure that they are added to your SPF record.

- If you are a small domain that is hosted by an ISP, you should set up your SPF record according to the instructions that is provided to you by your ISP. Most ISPs provide these types of instructions and can be found on the company's support pages.

- Even if you have not had to publish email authentication records before, and it worked fine, you must still publish email authentication records to send to Microsoft. By doing so, you are helping in the fight against phishing, and reducing the possibility that either you, or organizations you send to, will get phished.

### What if you don't know who sends email as your domain?

Many domains do not publish SPF records because they do not know who all their senders are. That's okay, you do not need to know who all of them are. Instead, you should get started by publishing an SPF record for the ones you do know of, especially where your corporate traffic is located, and publish a neutral SPF policy, `?all`:

```text
fabrikam.com IN TXT "v=spf1 include:spf.fabrikam.com ?all"
```

The neutral SPF policy means that any email that comes out of your corporate infrastructure will pass email authentication at all other email receivers. Email that comes from senders you don't know about will fall back to neutral, which is almost the same as publishing no SPF record at all.

When sending to Microsoft 365, email that comes from your corporate traffic will be marked as authenticated, but the email that comes from sources you don't know about may still be marked as spoof (depending upon whether or not Microsoft 365 can implicitly authenticate it). However, this is still an improvement from all email being marked as spoof by Microsoft 365.

Once you've gotten started with an SPF record with a fallback policy of ?all, you can gradually include more and more sending infrastructure and then publish a stricter policy.

### What if you are the owner of a mailing list?

See the [Common scenario: Discussion lists](#common-scenario-discussion-lists) section earlier in this topic.

### What if you are an infrastructure provider such as an Internet Service Provider (ISP), Email Service Provider (ESP), or cloud hosting service?

If you host a domain's email, and it sends email, or provide hosting infrastructure that can send email, you should do the following:

- Ensure your customers have documentation detailing what to publish in their SPF records

- Consider signing DKIM-signatures on outbound email even if the customer doesn't explicitly set it up (sign with a default domain). You can even double-sign the email with DKIM signatures (once with the customer's domain if they have set it up, and a second time with your company's DKIM signature)

Deliverability to Microsoft is not guaranteed even if you authenticate email originating from your platform, but at least it ensures that Microsoft does not junk your email because it is not authenticated. For more details around how Outlook.com filters email, see the [Outlook.com Postmaster page](https://postmaster.live.com/pm/postmaster.aspx).

For more details on service providers best practices, see [M3AAWG Mobile Messaging Best Practices for Service Providers](https://www.m3aawg.org/sites/default/files/M3AAWG-Mobile-Messaging-Best-Practices-Service-Providers-2015-08.pdf).

## Frequently Asked Questions

### Why is Microsoft making this change?

Because of the impact of phishing attacks, and because email authentication has been around for over 15 years, Microsoft believes that the risk of continue to allow unauthenticated email is higher than the risk of losing legitimate email.

### Will this change cause legitimate email to be marked as spam?

At first, there will be some messages that are marked as spam. However, over time, senders will adjust and then the amount of messages mislabeled as spoofed will be negligible for most email paths.

Microsoft itself first adopted this feature several weeks before deploying it to the rest of its customers. While there was disruption at first, it gradually declined.

### Will Microsoft bring this feature to Outlook.com and non-Advanced Threat Protection customers of Microsoft 365 for business?

Microsoft's anti-spoofing technology was initially deployed to its organizations that had an Office 365 Enterprise E5 subscription or had purchased the Office 365 Advanced Threat Protection (ATP) add-on for their subscription. As of October, 2018 we've extended the protection to organizations that have Exchange Online Protection (EOP) as well. In the future, we may release it for Outlook.com. However, if we do, there may be some capabilities that are not applied such as reporting and custom overrides.

> **From:** "Gabriela Laureano" \<glaureano@contoso.com\> <br/> **To:** Birdwatcher's Discussion List \<birdwatchers@fabrikam.com\> <br/> **Subject:** [BIRDWATCHERS] Great viewing of blue jays at the top of Mt. Rainier this week <br/><br/> Anyone want to check out the viewing this week from Mt. Rainier? <br/><br/> This message was sent to the Birdwatchers Discussion List. You can unsubscribe at any time.

To help mailing list messages pass anti-spoofing checks, do following steps based on whether you control the mailing list:

- Your organization owns the mailing list:

  - Check the FAQ at DMARC.org: [I operate a mailing list and I want to interoperate with DMARC, what should I do?](https://dmarc.org/wiki/FAQ#I_operate_a_mailing_list_and_I_want_to_interoperate_with_DMARC.2C_what_should_I_do.3F).

  - Read the instructions at this blog post: [A tip for mailing list operators to interoperate with DMARC to avoid failures](https://blogs.msdn.microsoft.com/tzink/2017/03/22/a-tip-for-mailing-list-operators-to-interoperate-with-dmarc-to-avoid-failures/).

  - Consider installing updates on your mailing list server to support ARC, see [https://arc-spec.org](https://arc-spec.org/)

- Your organization doesn't own the mailing list:

  - Ask the maintainer of the mailing list to configure email authentication for the domain that the mailing list is relaying from.

    When enough senders reply back to domain owners that they should set up email authentication records, it spurs them into taking action. While Microsoft also works with domain owners to publish the required records, it helps even more when individual users request it.

Nearly all large email receivers implement traditional SPF, DKIM, and DMARC. Some receivers have other checks that are more strict than just those standards, but few go as far as Microsoft 365 to block unauthenticated email and treat them as a spoof. However, most of the industry is becoming more and more strict about this particular type of email, particularly because of the problem of phishing.

  - Create a support ticket with Microsoft to create an override for the mailing list to treat it as legitimate. For more information, see [Contact support for business products - Admin Help](../../admin/contact-support-for-business-products.md).

If all else fails, you can report the message as a false positive to Microsoft. For more information, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

You may also contact your admin who can raise it as a support ticket with Microsoft. The Microsoft engineering team will investigate why the message was marked as a spoof.

## Considerations for anti-spoofing protection

If you're an admin who currently sends messages to Microsoft 365, you need to ensure that your email is properly authenticated. Otherwise, it might be marked as spam or phish. For more information, see [Solutions for legitimate senders who are sending unauthenticated email](email-validation-and-authentication.md#solutions-for-legitimate-senders-who-are-sending-unauthenticated-email).
