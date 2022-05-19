---
title: Use Trusted ARC senders for legitimate devices and services between the sender and receiver
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: article
ms.localizationpriority: high
search.appverid:
  - MET150
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom:
  - seo-marvel-apr2020
description: Authenticated Received Chain (ARC) is email authentication that tries to preserve authentication results across devices and any indirect mailflows that come between the sender and recipient. Here's how to make exceptions for your trusted ARC Senders.
ms.technology: mdo
ms.prod: m365-security
---

# Make a list of trusted ARC Senders to trust *legitimate* indirect mailflows

**Applies to**

- Exchange Online Protection
- Microsoft Defender for Office 365 plan 1 and plan 2
- Microsoft 365 Defender

Email authentication mechanisms like [SPF](set-up-spf-in-office-365-to-help-prevent-spoofing.md), [DKIM](use-dkim-to-validate-outbound-email.md), [DMARC](use-dmarc-to-validate-email.md) are used to verify the senders of emails for the *safety* of email recipients, but some legitimate services may make changes to the email between the sender and recipient. **In Microsoft 365 Defender, ARC will help reduce SPF, DKIM, and DMARC delivery failures that happen due to *legitimate* indirect mailflows.**

## Authenticated Received Chain (ARC) for *legitimate* indirect mailflows in Microsoft 365 Defender for Office

Mailing lists and services that filter or forward mails can be a well-known and normal feature of an organization's mail flow. But fowarding an email will violate SPF, and it can also violate DKIM email authentication (by altering the email through processes like adding virus scan headers or removing attachments, for example). Failing either of these email authentication methods can result in failure to pass DMARC.

Planned mailflow interventions from legitimate services is often called *indirect mailflow*, and might *accidentally* cause messages to fail email authentication as they pass through (hop to) the next device or service on the way to the receiver.

**Trusted ARC sealers lets admins add a list of *trusted* intermediaries into the Microsoft 365 Defender portal.** This allows Microsoft to honor ARC signatures from trusted intermediaries, preventing these legitimate messages from failing the authentication chain.

> [!NOTE]
> ***Trusted ARC sealers is an admin-created list of any domain whose processes result in indirect mailflow and who have implemented ARC sealing.*** When an email is routed to Office 365 through and ARC rusted intermediary of the Office 365 tenant, Microsoft validates the ARC signature, and, based on the ARC results, can honor authentication details provided.

## When to use trusted ARC sealers?

A list of trusted ARC sealers is only needed where devices and servers intervene in an organization’s email flow and:

1. May modify the email header or other email contents.
2. May cause authentication to fail for other reasons (example, by removing attachments).
 
By adding a trusted ARC sealer, Office 365 will validate and trust the authentication results that the sealer provides when delivering mail to your tenant in Office 365.

**Administrators should add *only legitimate services* as trusted ARC sealers.** This will help messages that must first go through a service to pass email authentication checks, and prevent legitimate messages from being sent to *Junk* due to authentication failures.

## Steps to add a trusted ARC sealer to Microsoft 365 Defender

Trusted ARC sealers in Microsoft 365 Defender portal shows all the ARC sealers acknowledged by and added to your tenant.

**To add a new Trusted ARC sealer in the admin portal:**

1. Navigate to the [email authentication settings](https://security.microsoft.com/authentication?viewid=ARC) page.

2. If this is the first time you've added a trusted ARC sealer, click the Add button.
3. Add trusted ARC sealers in the textbox shown.
    1. Notice that you're adding the domains (example fabrikam.com).
    1. The domain name you enter here *must* be a match to the domain shown in the domain 'd' tag in ARC-Seal and ARC-Message-Signature headers (on the email headers for the message).
    1. You can see these in the properties of the message in Outlook.

## Steps to validate your trusted ARC sealer

If there is an ARC seal from a third party before the message reaches Microsoft 365 Defender, **check the headers once the email is received and view the latest ARC headers**.

In the last ***ARC-Authentication-Results header***, check whether ARC validation is listed as **pass**.

An ARC header that lists an 'oda' of 1 indicates that previous ARC has been *verified*, the previous ARC sealer is *trusted*, and previous *pass result* can be used to override the current DMARC failure.

**An ARC pass header showing oda=1**

See the email authentication methods at the end of this header-block for the oda result.

``
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
40.107.65.78) smtp.rcpttodomain=microsoft.com
smtp.mailfrom=o365e5test083.onmicrosoft.com; dmarc=bestguesspass action=none
header.from=o365e5test083.onmicrosoft.com; dkim=none (message not signed);
arc=pass (0 oda=1 ltdi=1
spf=[1,1,smtp.mailfrom=o365e5test083.onmicrosoft.com]
dkim=[1,1,header.d=o365e5test083.onmicrosoft.com]
dmarc=[1,1,header.from=o365e5test083.onmicrosoft.com])
``

To check whether the ARC result was used to override a DMARC failure, look for *compauth* result and a *reason of code(130)* in the header.

See the last entry in this header-block to find *compauth* and *reason*.

``
Authentication-Results: spf=fail (sender IP is 51.163.158.241)
smtp.mailfrom=contoso.com; dkim=fail (body hash did not verify)
header.d=contoso.com;dmarc=fail action=none
header.from=contoso.com;compauth=pass reason=130
``

## PowerShell steps to add or remove a trusted ARC sealer

**Admins can also set up ARC configurations with Exchange Online Powershell.**

1. Connect to Exchange online powershell.
2. Connect-ExchangeOnline.
3. To add or update a domain into a trusted ARC sealer:
</br>
``
Set-ArcConfig -Identity default -ArcTrustedSealers {a list of arc signing domains split by comma}
``
</br>or</br>
``
Set-ArcConfig -Identity {tenant name/tenanid}\default -ArcTrustedSealers {a list of arc signing domains split by comma}
``
</br>You need to provide identity parameter *-Identity* default when running *Set-ArcConfig*. The trusted sealers should be matched to the value of the 'd' tag in the *ARC-Seal header*.

4. View the trusted ARC sealers:
</br>
``
Get-ArcConfig
``
or
``
Get-ArcConfig - Organization {tenant name}
``

## Trusted ARC sealer mailflow graphics

These diagrams contrast mailflow operations with and without a trusted ARC sealer, when using any of SPF, DKIM, and DMARC email authentication. In both graphics, there are legitimate services used by the company that must intervene in mailflow, sometimes violating email authentication standards by changing sending IPs, and writing to the email header. **In the first case, the indirect mailflow traffic demonstrates the result *before* admins add a trusted ARC sealer.**

:::image type="content" source="../../media/m365d-indirect-traffic-flow-without-trusted-arc-sealer.PNG" alt-text="In this graphic Contoso publishes SPF, DKIM, and DMARC as part of standard email security. A sender using SPF sends mail from inside contoso.com to fabrikam.com, and this mail passes through a third party service Contoso has hired, and that service modifies the sending IP address in the email header. The mail fails SPF due to the altered IP, and DKIM because the content was modified at a third party, during the DNS check at EOP. DMARC fails because of the SPF and DKIM failures. The message is sent to Junk, Quarantine, or Rejected.":::

Here, you see the same organization **after leveraging the ability to create a trusted ARC sealer.**

:::image type="content" source="../../media/m365d-indirect-traffic-flow-with-trusted-arc-sealer.PNG" alt-text="In the second graphic Contoso company had created a list of trusted ARC sealers. The same user sends a second mail from contoso.com to fabrikam.com. The third party service hired by Contoso modifies the IP address of the sender in the header of the mail. But this time the service has implemented ARC sealing, and because the tenant admin has already added the domain of the third party to trusted ARC sealers, the modification is accepted. SPF fails for the new IP address; DKIM fails because of the content modification; DMARC fails because of the earlier failures; but ARC recognizes the modifications, issues a Pass, and accepts changes. Spoof also receives a pass. The message is sent to Inbox.":::

## Next steps: After you set up ARC for Microsoft 365 Defender for Office

