---
title: "Email authentication in Microsoft 365"
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
ms.assetid:
ms.collection:
- M365-security-compliance
- Strat_O365_IP
ms.custom: TopSMBIssues
localization_priority: Priority
description: "Learn about how Exchange Online and Exchange Online Protection (EOP) in Microsoft 365 use email authentication (SPF, DKIM, and DMARC) to help prevent spoofing, phishing, and spam."
---

# Email authentication in Microsoft 365

Email authentication (also known as email validation) is a group of standards that tries to stop spoofing (email messages from forged senders). In Microsoft 365 organizations with Exchange Online mailboxes and standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, EOP uses the standards to verify inbound email:

- [SPF](how-office-365-uses-spf-to-prevent-spoofing.md)

- [DKIM](support-for-validation-of-dkim-signed-messages.md)

- [DMARC](use-dmarc-to-validate-email.md)

Email authentication verifies that email messages from a sender (for example, laura@contoso.com) are legitimate and come from expected sources for that email domain (for example, contoso.com.)

The rest of this topic explains how these technologies work, and how EOP uses them to check inbound email.

## Use email authentication to help prevent spoofing

DMARC prevents spoofing by examining the **From** address in messages (the sender email address that users see in their email client). Destination email organizations can also verify that the email domain has passed SPF or DKIM, which means that the domain has been authenticated and is therefore not spoofed. 

However, the problem is that SPF, DKIM, and DMARC records in DNS for email authentication (collectively known as email authentication policies) are completely optional. Therefore, while domains with strong email authentication policies like microsoft.com and skype.com are protected from spoofing, domains that publish weaker email authentication policies, or no policy at all, are prime targets for being spoofed.

As of March 2018, only 9% of domains of companies in the Fortune 500 publish strong email authentication policies. The remaining 91% of companies might be spoofed by a attacker. Unless some other email filtering mechanism is in-place, email from spoofed senders in these domains might be delivered to users.

![DMARC policies of Fortune 500 companies](../../media/84e77d34-2073-4a8e-9f39-f109b32d06df.jpg)

The proportion of small-to-medium sized companies that are not in the Fortune 500 that publish strong email authentication policies is smaller, and smaller still for email domains that are outside of North America and western Europe.

This is a big problem because while enterprises may not be aware of how email authentication works, attackers fully understand and take advantage it. Because phishing is such a problem, and because of the limited adoption of strong email authentication policies, Microsoft uses *implicit email authentication* to check inbound email.

Implicit email authentication is built on numerous extensions to regular email authentication policies. These extensions include sender reputation, sender history, recipient history, behavioral analysis, and other advanced techniques. A message sent from a domain that doesn't use email authentication policies will be marked as spoof unless it contains other signals to indicate that it's legitimate.

To see Microsoft's general announcement, see [A Sea of Phish Part 2 - Enhanced Anti-spoofing in Microsoft 365](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Schooling-A-Sea-of-Phish-Part-2-Enhanced-Anti-spoofing/ba-p/176209).

## Composite authentication

While SPF, DKIM, and DMARC are all useful by themselves, they don't communicate enough authentication status in the event a message has no explicit authentication records. Therefore, Microsoft has developed an algorithm for implicit email authentication that combines multiple signals into a single value called _composite authentication_, or compauth for short. The compauth value is stamped into the **Authentication-Results** header in the message headers.

> Authentication-Results:<br/>&nbsp;&nbsp;&nbsp;compauth=\<fail | pass | softpass | none\> reason=\<yyy\>

These values are explained at [Authentication-results message header](anti-spam-message-headers.md#authentication-results-message-header).

By examining the message headers, admins or even end users can determine how Microsoft 365 determined that the sender is spoofed.

## Why email authentication is not always enough to stop spoofing

Relying only on email authentication records to determine if an incoming message is spoofed has the following limitations:

- The sending domain might lack the required DNS records, or the records are incorrectly configured.

- The source domain has correctly configured DNS records, but that domain doesn't match the domain in the From address. SPF and DKIM don't require the domain to be used in the From address. Attackers or legitimate services can register a domain, configure SPF and DKIM for the domain, use a completely different domain in the From address, and that message will pass SPF and DKIM.

Composite authentication can address these limitations by passing messages that would otherwise fail email authentication checks.

> [!NOTE]
> As described earlier, implicit email authentication uses multiple signals to determine if a message is legitimate. For simplicity, the following examples concentrate on email authentication results. Other back-end intelligence factors could identify messages that pass email authentication as spoofed, or messages that fail email email authentication as legitimate.

For example, the fabrikam.com domain has no SPF, DKIM, or DMARC records. Messages from senders in the fabrikam.com domain can fail composite authentication (note the `compauth` value and reason):

```text
Authentication-Results: spf=none (sender IP is 10.2.3.4)
  smtp.mailfrom=fabrikam.com; contoso.com; dkim=none
  (message not signed) header.d=none; contoso.com; dmarc=none
  action=none header.from=fabrikam.com; compauth=fail reason=001
From: chris@fabrikam.com
To: michelle@contoso.com
```

If fabrikam.com configures an SPF without a DKIM record, the message can pass composite authentication, because the domain that passed SPF is aligned with the domain in the From address:

```text
Authentication-Results: spf=pass (sender IP is 10.2.3.4)
  smtp.mailfrom=fabrikam.com; contoso.com; dkim=none
  (message not signed) header.d=none; contoso.com; dmarc=bestguesspass
  action=none header.from=fabrikam.com; compauth=pass reason=109
From: chris@fabrikam.com
To: michelle@contoso.com
```

If fabrikam.com configures a DKIM record without an SPF record, the message can pass composite authentication, because the domain in the passed DKIM signature is aligned with the domain in the From address:

```text
Authentication-Results: spf=none (sender IP is 10.2.3.4)
  smtp.mailfrom=fabrikam.com; contoso.com; dkim=pass
  (signature was verified) header.d=outbound.fabrikam.com;
  contoso.com; dmarc=bestguesspass action=none
  header.from=fabrikam.com; compauth=pass reason=109
From: chris@fabrikam.com
To: michelle@contoso.com
```

If the domain in SPF or the DKIM signature don't align with the domain in the From address, the message can fail composite authentication:

```text
Authentication-Results: spf=none (sender IP is 192.168.1.8)
  smtp.mailfrom=maliciousdomain.com; contoso.com; dkim=pass
  (signature was verified) header.d=maliciousdomain.com;
  contoso.com; dmarc=none action=none header.from=contoso.com;
  compauth=fail reason=001
From: chris@contoso.com
To: michelle@fabrikam.com
```

## Solutions for legitimate senders who are sending unauthenticated email

Microsoft 365 keeps track of who is sending unauthenticated email to your organization. If the service thinks the sender is not legitimate, it will mark it as a composite authentication failure. To avoid this, you can use the recommendations in this section.

### Configure email authentication for domains you own

You can use this method to resolve intra-org spoofing and cross-domain spoofing in cases where you own or interact with multiple tenants. It also helps resolve cross-domain spoofing where you send to other customers within Microsoft 365 or third parties that are hosted by other providers.

- [Configure SPF records](set-up-spf-in-office-365-to-help-prevent-spoofing.md) for your domains.

- [Configure DKIM records](use-dkim-to-validate-outbound-email.md) for your primary domains.

- [Consider setting up DMARC records](use-dmarc-to-validate-email.md) for your domain to determine your legitimate senders.

Microsoft doesn't provide detailed implementation guidelines for SPF, DKIM, and DMARC records. However, there's a lot of information available online. There are also 3rd party companies dedicated to helping your organization set up email authentication records.

#### You don't know all sources for your email

Many domains don't publish SPF records because they don't know all of the email sources for messages in their domain. Start by publishing an SPF record that contains all of the email sources you know about (especially where your corporate traffic is located), and publish the neutral SPF policy `?all`. For example:

```text
fabrikam.com IN TXT "v=spf1 include:spf.fabrikam.com ?all"
```

This example means that email from your corporate infrastructure will pass email authentication, but email from unknown sources will fall back to neutral.

Microsoft 365 will treat inbound email from your corporate infrastructure as authenticated, but email from unidentified sources might still be marked as spoof (depending upon whether Microsoft 365 can implicitly authenticate it). However, this is still an improvement from all email being marked as spoof by Microsoft 365.

Once you've gotten started with an SPF fallback policy of `?all`, you can gradually discover and include more email sources for your messages, and then update your SPF record with a stricter policy.

### Use spoof intelligence to configure permitted senders of unauthenticated email

You can also use [spoof intelligence](learn-about-spoof-intelligence.md) to permit senders to transmit unauthenticated messages to your organization.

For external domains, the spoofed user is the domain in the From address, while the sending infrastructure is either the source IP address (divided up into /24 CIDR ranges), or the organizational domain of the reverse DNS (PTR) record.

In the screenshot below, the source IP might be 131.107.18.4 with the PTR record outbound.mail.protection.outlook.com. This would show up as outlook.com for the sending infrastructure.

To permit this sender to send unauthenticated email, change the **No** to a **Yes**.

![Setting up anti-spoofing allowed senders](../../media/d4334921-d820-4334-8217-788279701e94.jpg)

### Create an allow entry for the sender/recipient pair

To bypass spam filtering, some parts of phish filtering, but not malware filtering for specific senders, see [Create safe sender lists in Microsoft 365](create-safe-sender-lists-in-office-365.md).

### Ask the sender to configure email authentication for domains you don't own

Because of the problem of spam and phishing, Microsoft recommends email authentication for all email organizations. Instead of configuring manual overrides in your organization, you can ask an admin in the sending domain to configure their email authentication records.

- Even if they didn't need to publish email authentication records in the past, they should do so if they send email to Microsoft.

- Set up SPF to publish the domain's sending IP addresses, and set up DKIM (if available) to digitally sign messages. They should also consider setting up DMARC records.

- If they use bulk senders to send email on their behalf, verify that the domain in the From address (if it belongs to them) aligns with the domain that passes SPF or DMARC.

- Verify the following locations (if they use them) are included in the SPF record:
  
  - On-premises email servers.
  - Email sent from a software-as-a-service (SaaS) provider.
  - Email sent from a cloud-hosting service (Microsoft Azure, GoDaddy, Rackspace, Amazon Web Services, etc.).

- For small domains that are hosted by an ISP, configure the SPF record according to the instructions from the ISP.

While it may be difficult at first to get sending domains to authenticate, over time, as more and more email filters start junking or even rejecting their email, it will cause them to set up the proper records to ensure better delivery. Also, their participation can help in the fight against phishing, and can reduce the possibility of phishing in their organization or organizations that they send email to.

#### Information for infrastructure providers (ISPs, ESPs, or cloud hosting services)

If you host a domain's email or provide hosting infrastructure that can send email, you should do the following steps:

- Ensure your customers have documentation that explains how your customers should configure their SPF records

- Consider signing DKIM-signatures on outbound email, even if the customer doesn't explicitly set it up (sign with a default domain). You can even double-sign the email with DKIM signatures (once with the customer's domain if they have set it up, and a second time with your company's DKIM signature)

Deliverability to Microsoft is not guaranteed even if you authenticate email originating from your platform, but at least it ensures that Microsoft does not junk your email because it isn't authenticated.

For more details on service providers best practices, see [M3AAWG Mobile Messaging Best Practices for Service Providers](https://www.m3aawg.org/sites/default/files/M3AAWG-Mobile-Messaging-Best-Practices-Service-Providers-2015-08.pdf).
