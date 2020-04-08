---
title: "Email authentication in Office 365"
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
description: "Learn about how Exchange Online and Exchange Online Protection (EOP) in Office 365 use email authentication (SPF, DKIM, and DMARC) to help prevent spoofing, phishing, and spam."
---

# Email authentication in Office 365

Email authentication (also known as email validation) is a group of standards that tries to stop spoofing (email messages from forged senders). In Office 365 organizations with Exchange Online mailboxes and standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, EOP useses the standards to verify inbound email:

- [SPF](how-office-365-uses-spf-to-prevent-spoofing.md)

- [DKIM](support-for-validation-of-dkim-signed-messages.md)

- [DMARC](use-dmarc-to-validate-email.md)
Email authentication verify email messages are sent by that sender email addresses in messages (for example, laura@contoso.com) are legitimate and come from expected sources for that email domain (for example, contoso.com.)

The rest of this topic explains how these technologies work, and how EOP uses them to check inbound email.

## Use email authentication to help prevent spoofing

DMARC prevents spoofing by examining the **From** address in messages (the sender email address that users see in their email client). Destination email organizations can also verify that the email domain has passed SPF or DKIM, which means that the domain has been authenticated and is therefore not spoofed. 

However, the problem is that SPF, DKIM, and DMARC records in DNS for email authentication (collectively known as email authentication polices) are completely optional. Therefore, while domains with strong email authentication policies like microsoft.com and skype.com are protected from spoofing, domains that publish weaker email authentication policies, or no policy at all, are prime targets for being spoofed.

As of March 2018, only 9% of domains of companies in the Fortune 500 publish strong email authentication policies. The remaining 91% of companies might be spoofed by a attacker. Unless some other email filtering mechanism is in-place, email from spoofed senders in these domains might be delivered to users.

![DMARC policies of Fortune 500 companies](../../media/84e77d34-2073-4a8e-9f39-f109b32d06df.jpg)

The proportion of small-to-medium sized companies that are not in the Fortune 500 that publish strong email authentication policies is smaller, and smaller still for email domains that are outside of North America and western Europe.

This is a big problem because while enterprises may not be aware of how email authentication works, attackers fully understand and take advantage it. Because phishing is such a problem, and because of the limited adoption of strong email authentication policies, Microsoft uses *implicit email authentication* to check inbound email.

Implicit email authentication is built on numerous extensions to regular email authentication policies. These extensions include sender reputation, sender history, recipient history, behavioral analysis, and other advanced techniques. A message sent from a domain that doesn't use email authentication policies will be marked as spoof unless it contains other signals to indicate that it's legitimate.

To see Microsoft's general announcement, see [A Sea of Phish Part 2 - Enhanced Anti-spoofing in Office 365](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Schooling-A-Sea-of-Phish-Part-2-Enhanced-Anti-spoofing/ba-p/176209).

## Composite authentication

While SPF, DKIM, and DMARC are all useful by themselves, they don't communicate enough authentication status in the event a message has no explicit authentication records. Therefore, Microsoft has developed an algorithm for implicit email authentication that combines multiple signals into a single value called _composite authentication_, or compauth for short. The compauth value is stamped into the **Authentication-Results** header in the message headers.

> Authentication-Results:<br/>&nbsp;&nbsp;&nbsp;compauth=\<fail | pass | softpass | none\> reason=\<yyy\>

The values are explained at [Authentication-results message header fields used by Office 365 email authentication](anti-spam-message-headers.md#authentication-results-message-header-fields-used-by-office-365-email-authentication).

By looking at the headers of a message, admins or even end users can determine how Office 365 arrived at the conclusion that the sender is spoofed.

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

### Understanding changes in how spoofed email is treated



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

To set up your default protection by using PowerShell:

```powershell
$defaultAntiphishPolicy = Get-AntiphishPolicy | ? {$_.IsDefault -eq $true}
Set-AntiphishPolicy -Identity $defaultAntiphishPolicy.Name -EnableAntispoofEnforcement <$true|$false>
```

You should only disable anti-spoofing protection if you have another mail server or servers in front of Office 365 (see Legitimate scenarios to disable anti-spoofing for more details).

```powershell
$defaultAntiphishPolicy = Get-AntiphishiPolicy | ? {$_.IsDefault $true}
Set-AntiphishPolicy -Identity $defaultAntiphishPolicy.Name -EnableAntispoofEnforcement $false
```

> [!IMPORTANT]
> If the first hop in your email path is Office 365, and you are getting too many legitimate emails marked as spoof, you should first set up your senders that are allowed to send spoofed email to your domain (see the  [Managing legitimate senders who are sending unauthenticated email](#managing-legitimate-senders-who-are-sending-unauthenticated-email) section in this topic. If you are still getting too many false positives (that is, legitimate messages marked as spoof), we do NOT recommend disabling anti-spoofing protection altogether. Instead, we recommend choosing Basic instead of High protection. It is better to work through false positives than to expose your organization to spoofed email which could end up imposing significantly higher costs in the long term.

### Managing legitimate senders who are sending unauthenticated email

Office 365 keeps track of who is sending unauthenticated email to your organization. If the service thinks the sender is not legitimate, it will mark it as a *compauth* failure. This will be classified as SPOOF although it depends on your anti-spoofing policy that was applied to the message.

However, as an administrator, you can specify which senders are permitted to send spoofed email, overriding Office 365's decision.

#### Method 1 - If your organization owns the domain, set up email authentication

This method can be used to resolve intra-org spoofing, and cross-domain spoofing in cases where you own or interact with multiple tenants. It also helps resolve cross-domain spoofing where you send to other customers within Office 365, and also third parties that are hosted in other providers.

For more details, see [Customers of Office 365](#customers-of-office-365).

#### Method 2 - Use Spoof intelligence to configure permitted senders of unauthenticated email

You can also use [spoof intelligence](learn-about-spoof-intelligence.md) to permit senders to transmit unauthenticated messages to your organization.

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

Because of the problem of spam and phishing, Microsoft recommends all senders set up email authentication. If you know an administrator of the sending domain, contact them and request that they set up email authentication records so you do not have to add any overrides. For more information, see [Administrators of domains that are not Office 365 customers](#administrators-of-domains-that-are-not-office-365-customers)" later in this article.

While it may be difficult at first to get sending domains to authenticate, over time, as more and more email filters start junking or even rejecting their email, it will cause them to set up the proper records to ensure better delivery.