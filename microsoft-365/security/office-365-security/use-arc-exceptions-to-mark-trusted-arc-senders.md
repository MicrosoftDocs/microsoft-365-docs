---
title: Use Trusted ARC senders for legitimate devices and services between the sender and receiver
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: high
search.appverid:
  - MET150
ms.collection:
  - m365-security
  - tier2
ms.custom:
  - seo-marvel-apr2020
description: Authenticated Received Chain (ARC) is email authentication that tries to preserve authentication results across devices and any indirect mailflows that come between the sender and recipient. Here's how to make exceptions for your trusted ARC Senders.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Make a list of trusted ARC Senders to trust *legitimate* indirect mailflows

Email authentication mechanisms like [SPF](email-authentication-spf-configure.md), [DKIM](email-authentication-dkim-configure.md), [DMARC](email-authentication-dmarc-configure.md) are used to verify the senders of emails for the *safety* of email recipients, but some legitimate services may make changes to the email between the sender and recipient. **In Microsoft 365 Defender, ARC will help reduce SPF, DKIM, and DMARC delivery failures that happen due to *legitimate* indirect mailflows.**

## Authenticated Received Chain (ARC) in Microsoft 365 Defender for Office

Services that modify message content in transit before delivery to your organization can invalidate DKIM email signatures and affect authentication of the message. When these intermediary services perform such actions, they can use ARC to provide details of the original authentication before the modifications occurred. Your organization can then trust these details to help with authenticating the message.

**Trusted ARC sealers lets admins add a list of *trusted* intermediaries into the Microsoft 365 Defender portal.** Trusted ARC sealers allows Microsoft to honor ARC signatures from these trusted intermediaries, preventing these legitimate messages from failing the authentication chain.

> [!NOTE]
> ***Trusted ARC sealers is an admin-created list of intermediary domains who have implemented ARC sealing.*** When an email is routed to Office 365 through an ARC trusted intermediary of the Office 365 tenant, Microsoft validates the ARC signature, and, based on the ARC results, can honor authentication details provided.

## When to use trusted ARC sealers?

A list of trusted ARC sealers is only needed where intermediaries are part of an organization's email flow and:

1. May modify the email header or email contents.
2. May cause authentication to fail for other reasons (example, by removing attachments).

By adding a trusted ARC sealer, Office 365 validates and trusts the authentication results that the sealer provides when delivering mail to your tenant in Office 365.

**Administrators should add *only legitimate services* as trusted ARC sealers.** Adding only services the organization expressly uses and knows will help messages that must first go through a service to pass email authentication checks, and prevent legitimate messages
from being sent to *Junk* due to authentication failures.

## Steps to add a trusted ARC sealer to Microsoft 365 Defender

Trusted ARC sealers in Microsoft 365 Defender portal shows all the ARC sealers acknowledged by and added to your tenant.

**To add a new Trusted ARC sealer in the Microsoft 365 Defender portal:**

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Email Authentication Settings** in the **Rules** section \> **ARC** . To go directly to the ARC page, use [email authentication settings](https://security.microsoft.com/authentication?viewid=ARC).

2. If this is the first time you've added a trusted ARC sealer, click the Add button.
3. Add trusted ARC sealers in the textbox shown.
    1. Notice that you're adding the domains (example fabrikam.com).
    1. The domain name you enter here *must* be a match to the domain shown in the domain 'd' tag in ARC-Seal and ARC-Message-Signature headers (on the email headers for the message).
    1. You can see these in the properties of the message in Outlook.

## Steps to validate your trusted ARC sealer

If there's an ARC seal from a third party before the message reaches Microsoft 365 Defender, **check the headers once the email is received and view the latest ARC headers**.

In the last ***ARC-Authentication-Results header***, check whether ARC validation is listed as **pass**.

An ARC header that lists an 'oda' of 1 indicates that previous ARC has been *verified*, the previous ARC sealer is *trusted*, and previous *pass result* can be used to override the current DMARC failure.

**An ARC pass header showing oda=1**

See the email authentication methods at the end of this header-block for the oda result.

```text
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
40.107.65.78) smtp.rcpttodomain=microsoft.com
smtp.mailfrom=sampledoamin.onmicrosoft.com; dmarc=bestguesspass action=none
header.from=sampledoamin.onmicrosoft.com; dkim=none (message not signed);
arc=pass (0 oda=1 ltdi=1
spf=[1,1,smtp.mailfrom=sampledoamin.onmicrosoft.com]
dkim=[1,1,header.d=sampledoamin.onmicrosoft.com]
dmarc=[1,1,header.from=sampledoamin.onmicrosoft.com])
```

To check whether the ARC result was used to override a DMARC failure, look for *compauth* result and a *reason of code(130)* in the header.

See the last entry in this header-block to find *compauth* and *reason*.

```text
Authentication-Results: spf=fail (sender IP is 51.163.158.241)
smtp.mailfrom=contoso.com; dkim=fail (body hash did not verify)
header.d=contoso.com;dmarc=fail action=none
header.from=contoso.com;compauth=pass reason=130
```

## PowerShell steps to add or remove a trusted ARC sealer

**Admins can also set up ARC configurations with Exchange Online PowerShell.**

1. Connect to Exchange Online PowerShell.
2. Connect-ExchangeOnline.
3. To add or update a domain into a trusted ARC sealer:

   ```powershell
   Set-ArcConfig -Identity default -ArcTrustedSealers {a list of arc signing domains split by comma}
   ```

   or

   ```powershell
   Set-ArcConfig -Identity {tenant name/tenanid}\default -ArcTrustedSealers {a list of arc signing domains split by comma}
   ```

   You need to provide identity parameter *-Identity* default when running *Set-ArcConfig*. The trusted sealers should be matched to the value of the 'd' tag in the *ARC-Seal header*.

4. View the trusted ARC sealers:

   ```powershell
   Get-ArcConfig
   ```

   or

   ```powershell
   Get-ArcConfig - Organization {tenant name}
   ```

## Trusted ARC sealer mailflow graphics

These diagrams contrast mail flow operations with and without a trusted ARC sealer, when using any of SPF, DKIM, and DMARC email authentication. In both graphics, there are legitimate services used by the company that must intervene in mail flow, sometimes violating email authentication standards by changing sending IPs, and writing to the email header. **In the first case, the indirect mail flow traffic demonstrates the result *before* admins add a trusted ARC sealer.**

:::image type="content" source="../../media/m365d-indirect-traffic-flow-without-trusted-arc-sealer.PNG" alt-text="In this graphic Contoso publishes SPF, DKIM, and DMARC as part of standard email security. A sender using SPF sends mail from inside contoso.com to fabrikam.com, and this mail passes through a third party service Contoso has hired, and that service modifies the sending IP address in the email header. The mail fails SPF due to the altered IP, and DKIM because the content was modified at a third party, during the DNS check at EOP. DMARC fails because of the SPF and DKIM failures. The message is sent to Junk, Quarantine, or Rejected.":::

Here, you see the same organization **after leveraging the ability to create a trusted ARC sealer.**

:::image type="content" source="../../media/m365d-indirect-traffic-flow-with-trusted-arc-sealer.PNG" alt-text="In the second graphic Contoso company had created a list of trusted ARC sealers. The same user sends a second mail from contoso.com to fabrikam.com. The third party service hired by Contoso modifies the IP address of the sender in the header of the mail. But this time the service has implemented ARC sealing, and because the tenant admin has already added the domain of the third party to trusted ARC sealers, the modification is accepted. SPF fails for the new IP address. DKIM fails because of the content modification. DMARC fails because of the earlier failures. But ARC recognizes the modifications, issues a Pass, and accepts the changes. Spoof also receives a pass. The message is sent to Inbox.":::

## Next steps: After you set up ARC for Microsoft 365 Defender for Office

After setup, check your ARC Headers with [Message Header Analyzer](https://mha.azurewebsites.net).

Review [SPF](email-authentication-spf-configure.md), [DKIM](email-authentication-dkim-configure.md), [DMARC](email-authentication-dmarc-configure.md), configuration steps.
