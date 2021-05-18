---
title: "Add DNS records to connect your domain"
f1.keywords:
- CSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
- Adm_O365_Setup
search.appverid:
- MET150
description: "Connect a domain at any DNS hosting provider to Microsoft 365 by verifying your domain and updating the DNS records in your registrar’s account."
ms.custom: 
- okr_smb
- AdminSurgePortfolio
---

# Add DNS records to connect your domain

If you purchased a domain from a third-party hosting provider, you can connect it to Microsoft 365 by updating the DNS records in your registrar’s account.

At the end of these steps, your domain will stay registered with the host that you purchased the domain from, but Microsoft 365 can use it for your email addresses (like user@yourdomain.com) and other services.

If you don't add a domain, people in your organization will use the onmicrosoft.com domain for their email addresses until you do. It's important to add your domain before you add users, so you don't have to set them up twice.

[Check the Domains FAQ](../setup/domains-faq.yml) if you don't find what you're looking for below.

## Step 1: Add a TXT or MX record to verify you own the domain

### Recommended: Verify with a TXT record

First, you need to prove you own the domain you want to add to Microsoft 365.

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/) and select **Show all** > **Settings** > **Domains**.
2. In a new browser tab or window, sign in to your DNS hosting provider, and then find where you manage your DNS settings (e.g., Zone File Settings, Manage Domains, Domain Manager, DNS Manager).
3. Go to your provider's DNS Manager page, and add the TXT record indicated in the admin center to your domain.

Adding this record won't affect your existing email or other services and you can safely remove it once your domain is connected to Microsoft 365.

Example:
- TXT Name: `@`
- TXT Value: MS=ms######## (unique ID from the admin center)
- TTL: `3600‎` (or your provider default)

4. Save the record, go back to the admin center, and then select **Verify**. It typically takes around 15 minutes for record changes to register, but sometimes it can take longer. Give it some time and a few tries to pick up the change.

When Microsoft finds the correct TXT record, your domain is verified.

### Verify with an MX record

If your registrar doesn't support adding TXT records, you can verify by adding an MX record.

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/) and select **Show all** > **Settings** > **Domains**.
2. In a new browser tab or window, sign in to your DNS hosting provider, and then find where you manage your DNS settings (e.g., Zone File Settings, Manage Domains, Domain Manager, DNS Manager).
3. Go to your provider's DNS Manager page, and add the MX record indicated in the admin center to your domain.

This MX record's **Priority** must be the highest of all existing MX records for the domain. Otherwise, it can interfere with sending and receiving email. You should delete this records as soon as domain verification is complete.

Make sure that the fields are set to the following values:

- Record Type: `MX`
- Priority: Set to the highest value available, typically `0`.
- Host Name: `@`
- Points to address: Copy the value from the admin center and paste it here.
- TTL: `3600‎` (or your provider default)

When Microsoft finds the correct MX record, your domain is verified.

## Step 2: Add DNS records to connect Microsoft services

In a new browser tab or window, sign in to your DNS hosting provider, and find where you manage your DNS settings (e.g., Zone File Settings, Manage Domains, Domain Manager, DNS Manager).

You'll be adding several different types of DNS records depending on the services you want to enable. 

### Add an MX record for email (Outlook, Exchange Online)
**Before you begin:** If users already have email with your domain (such as user@yourdomain.com), create their accounts in the admin center before you set up your MX records. That way, they’ll continue to receive email. When you update your domain's MX record, all new email for anyone who uses your domain will now come to Microsoft 365. Any email you already have will stay at your current email host, unless you decide to [migrate email and contacts to Microsoft 365.](../setup/migrate-email-and-contacts-admin.md)

You'll get the information for the MX record from the admin center domain setup wizard.

On your hosting provider's website, add a new MX record.
Make sure that the fields are set to the following values:

- Record Type: `MX`
- Priority: Set to the highest value available, typically `0`.
- Host Name: `@`
- Points to address: Copy the value from the admin center and paste it here.
- TTL: `3600‎` (or your provider default)

Save the record, and then remove any other MX records.

### Add CNAME records to connect other services (Teams, Exchange Online, AAD, MDM)
You'll get the information for the CNAME records from the admin center domain setup wizard.

On your hosting provider's website, add CNAME records for each service that you want to connect.
Make sure that the fields are set to the following values for each:

- Record Type: `CNAME (Alias)`
- Host: Paste the values you copy from the admin center here.
- Points to address: Copy the value from the admin center and paste it here.
- TTL: `3600‎` (or your provider default)


### Add or edit an SPF TXT record to help prevent email spam (Outlook, Exchange Online)
**Before you begin:** If you already have an SPF record for your domain, don't create a new one for Microsoft 365. Instead, add the required Microsoft 365 values to the current record on your hosting providers website so that you have a *single* SPF record that includes both sets of values.

On your hosting provider's website, edit the existing SPF record or create an SPF record.
Make sure that the fields are set to the following values:

- Record Type: `TXT (Text)`
- Host: `@`
- TXT Value: `v=spf1 include:spf.protection.outlook.com -all`
- TTL: `3600‎` (or your provider default)

Save the record.

Validate your SPF record by using one of these [SPF validation tools](/office365/admin/setup/domains-faq#how-can-i-validate-spf-records-for-my-domain)

SPF is designed to help prevent spoofing, but there are spoofing techniques that SPF cannot protect against. To protect against these, once you've set up SPF, you should also set up DKIM and DMARC for Microsoft 365. 

To get started, see [Use DKIM to validate outbound email sent from your domain in Microsoft 365](../../security/office-365-security/use-dkim-to-validate-outbound-email.md) and [Use DMARC to validate email in Microsoft 365](../../security/office-365-security/use-dmarc-to-validate-email.md).

### Add SRV records for communications services (Teams, Skype for Business)

On your hosting provider's website, add SRV records for each service you want to connect.
Make sure that the fields are set to the following values for each:

- Record Type: `SRV (Service)`
- Name: `@`
- Target: Copy the value from the admin center and paste it here.
- Protocol: Copy the value from the admin center and paste it here.
- Service: Copy the value from the admin center and paste it here.
- Priority: `100`
- Weight: `1`
- Port: Copy the value from the admin center and paste it here.
- TTL: `3600‎` (or your provider default)

Save the record.

#### SRV record field restrictions and workarounds
Some hosting providers impose restrictions on field values within SRV records. Here are some common workarounds for these restrictions.

##### Name
If your hosting provider doesn't allow setting this field to **@**, leave it blank. Use this approach *only* when your hosting provider has separate fields for the Service and Protocol values. Otherwise, see the Service and Protocol notes below.

##### Service and Protocol
If your hosting provider doesn't provide these fields for SRV records, you must specify the **Service** and **Protocol** values in the record's **Name** field. (Note: Depending on your hosting provider, the **Name** field might be called something else, like: **Host**, **Hostname**, or **Subdomain**.) To add these values, you create a single string, separating the values with a dot. 

Example: `_sip._tls`

##### Priority, Weight, and Port <br>
If your hosting provider doesn't provide these fields for SRV records, you must specify them in the record's **Target** field. (Note: Depending on your hosting provider, the **Target** field might be called something else, like: **Content**, **IP Address**, or **Target Host**.) 

To add these values, create a single string, separating the values with spaces and *sometimes ending with a dot* (check with your provider if you are unsure). The values must be included in this order: Priority, Weight, Port, Target. 

- Example 1: `100 1 443 sipdir.online.lync.com.`
- Example 2: `100 1 443 sipdir.online.lync.com`

## Related content

[Change nameservers to set up Microsoft 365 with any domain registrar](change-nameservers-at-any-domain-registrar.md) (article)

[Find and fix issues after adding your domain or DNS records](find-and-fix-issues.md) (article)

[Manage domains](index.yml) (link page)