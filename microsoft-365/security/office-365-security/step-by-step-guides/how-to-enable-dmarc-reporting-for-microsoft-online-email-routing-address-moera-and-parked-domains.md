---
title: How to enable DMARC Reporting for Microsoft Online Email Routing Address (MOERA) and parked Domains
description: The steps to configure DMARC for MOERA and parked domains.
search.product:
search.appverid:
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-guidance-templates
ms.topic: how-to
ms.subservice: mdo
---

# How to enable DMARC Reporting for Microsoft Online Email Routing Address (MOERA) and parked Domains

Best practice for domain email security protection is to protect yourself from spoofing using Domain-based Message Authentication, Reporting, and Conformance (DMARC). If you haven't already enabled DMARC for your domains, that should be the first step, detailed here: [Domain-based Message Authentication, Reporting, and Conformance (DMARC)](/microsoft-365/security/office-365-security/use-dmarc-to-validate-email)

This guide is designed to help you configure DMARC for domains not covered by the main DMARC article. These domains include domains that you're not using for email, but could be leveraged by attackers if they remain unprotected:

- Your `onmicrosoft.com` domain, also known as the Microsoft Online Email Routing Address (MOERA) domain.
- Parked custom domains that you're currently not using for email yet.

## What you'll need

- Microsoft 365 admin center and access to your DNS provider hosting your domains.
- Sufficient permissions as Global Admin to make the appropriate changes in the Microsoft 365 admin center.
- 10 minutes to complete the steps in this article.

## Activate DMARC for MOERA Domain

1. Open the Microsoft 365 admin center at <https://admin.microsoft.com>.
1. On the left-hand navigation, select **Show All**.
1. Expand **Settings** and press **Domains**.
1. Select your tenant domain (for example, contoso.onmicrosoft.com).
1. On the page that loads, select **DNS records**.
1. Select **+ Add record**.
1. A flyout will appear on the right. Ensure that the selected Type is **TXT (Text)**.
1. Add `_dmarc` as **TXT name**.
1. Add your specific DMARC value.
1. Press **Save**.

## Active DMARC for parked domains

1. Check if SPF is already configured for your parked domain. For instructions, see [Set up SPF to help prevent spoofing - Office 365 | Microsoft Docs](/microsoft-365/security/office-365-security/set-up-spf-in-office-365-to-help-prevent-spoofing#how-to-handle-subdomains)
1. Contact your DNS Domain provider.
1. Ask to add this DMARC txt record with your appropriate email addresses: `v=DMARC1; p=reject; rua=mailto:d@rua.contoso.com;ruf=mailto:d@ruf.contoso.com`.

## Next Steps

Wait until the DNS changes are propagated and try to spoof the configured domains. Check if the attempt is blocked based in the DMARC record, and you receive a DMARC report.

## More Information

[Set up SPF to help prevent spoofing - Office 365 | Microsoft Docs](/microsoft-365/security/office-365-security/set-up-spf-in-office-365-to-help-prevent-spoofing)

[Use DMARC to validate email, setup steps - Office 365 | Microsoft Docs](/microsoft-365/security/office-365-security/use-dmarc-to-validate-email)
