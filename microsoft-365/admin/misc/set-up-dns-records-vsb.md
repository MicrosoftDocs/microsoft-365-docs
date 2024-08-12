---
title: "Connect your domain to Microsoft 365"
f1.keywords:
- CSH
ms.author: nkagole
author: nataliekagole
manager: scotv
ms.date: 08/01/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- highpri
- M365-subscription-management
- Adm_O365
- Adm_O365_Setup
search.appverid:
- MET150
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn to verify your domain and create DNS records with Microsoft 365."
ms.custom:
- VSBFY23
- AdminSurgePortfolio
---

# Connect your domain to Microsoft 365

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

> [!NOTE]
> If you don't add a domain, people in your organization will use the onmicrosoft.com domain for their email addresses until you do. It's important to add your domain before you add users, so you don't have to set them up twice.

[Check the Domains FAQ](../setup/domains-faq.yml) if you don't find what you're looking for below.

## Add an MX record so email for your domain will come to Microsoft

You'll get the information for the MX record from the admin center domain setup wizard.

On your hosting provider's website, add a new MX record.
Make sure that the fields are set to the following values:

- Record Type: `MX`
- Priority: Set to the highest value available, typically `0`.
- Host Name: `@`
- Points to address: Copy the value from the admin center and paste it here.
- TTL: `3600` (or your provider default)

Save the record, and then remove any other MX records.

## Add a CNAME record to connect users to their mailboxes

You'll get the information for the CNAME records from the admin center domain setup wizard.

On your hosting provider's website, add the following CNAME record. Make sure that the fields are set to the following values for each:

- Record Type: `CNAME (Alias)`
- Host: Paste the values you copy from the admin center here.
- Points to address: Copy the value from the admin center and paste it here.
- TTL: `3600` (or your provider default)

Save the record.
## Add a TXT record to help prevent spam

**Before you begin:** If you already have an SPF record for your domain, don't create a new one for Microsoft 365. Instead, add the required Microsoft 365 values to the current record on your hosting providers website so that you have a *single* SPF record that includes both sets of values.

On your hosting provider's website, edit the existing SPF record or create an SPF record.
Make sure that the fields are set to the following values:

- Record Type: `TXT (Text)`
- Host: `@`
- TXT Value: `v=spf1 include:spf.protection.outlook.com -all`
- TTL: `3600` (or your provider default)

Save the record.

Validate your SPF record by using one of these [SPF validation tools](/office365/admin/setup/domains-faq#how-can-i-validate-spf-records-for-my-domain)

SPF is designed to help prevent spoofing, but there are spoofing techniques that SPF cannot protect against. To protect against these, once you've set up SPF, you should also set up DKIM and DMARC for Microsoft 365.

To get started, see [Use DKIM to validate outbound email sent from your domain in Microsoft 365](../../security/office-365-security/email-authentication-dkim-configure.md) and [Use DMARC to validate email in Microsoft 365](../../security/office-365-security/email-authentication-dmarc-configure.md).

Finally, head back to the admin center domain setup wizard to complete your setup.
