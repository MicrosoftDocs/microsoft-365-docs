---
title: "Create DNS records at any DNS hosting provider"
f1.keywords:
- CSH
ms.author: pebaum
author: pebaum
manager: mnirkhe
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
description: "Learn to verify your domain and create DNS records at any DNS hosting provider for Microsoft 365."
ms.custom: okr_smb
---

# Create DNS records at any DNS hosting provider [rethink this]

//
todo list
- tighten intro
- add related articles
//

If you purchased a domain from a third-party provider, you can connect it to Microsoft 365 by changing some DNS records. You'll change a few settings in your registrar's account. At the end of these steps, your domain will stay registered with the host that you purchased the domain from, but Microsoft 365 can use it for you email addresses (like user@yourdomain.com) and other services.

If you don't add a domain, people in your organization will use the onmicrosoft.com domain for their email addresses until you do. It's important to add your domain before you add users, so you don't have to set them up twice.

When you're ready to add a domain to Microsoft 365,  **sign in to the [Admin Center](https://admin.microsoft.com/)** and select **Show all** > **Settings** > **Domains**.

**[Check the Domains FAQ](../setup/domains-faq.md)** if you don't find what you're looking for.

## Add a TXT record to verify you own the domain

In a new browser tab or window, sign in to your DNS hosting provider, and find where you manage your DNS settings (e.g., Zone File Settings, Manage Domains, Domain Manager, DNS Manager).

First, we need to prove you own the domain you want to add to Microsoft 365.

Go to their DNS Management page, and add the TXT record indicated in the Admin Center to your domain. 

Adding this record won't affect your existing email or other services and it can be safely removed at the end of setup.

Example:

    TXT Name: @
    TXT Value: MS=ms######## (you get this unique ID from the Admin Center)
    TTL: 3600‎ (or your provider default)

Save the record, go back to the Admin Center, and select **Verify**. Usually it takes around 15 minutes for record changes to register, but sometimes it can take longer. Give it some time and a few tries to pick up the change.

When Microsoft finds the correct TXT record, your domain is verified. 


## Add DNS records to connect Microsoft services

In a new browser tab or window, sign in to your DNS hosting provider, and find where you manage your DNS settings (e.g., Zone File Settings, Manage Domains, Domain Manager, DNS Manager).

You'll be adding several different types of DNS records depending on the services you want to enable. 

### Add an MX record for email
**Before you begin:** If people already have email with your domain (such as user@yourdomain.com), create their user accounts in the Admin Center before you set up your MX records. That way, they’ll continue to receive email. When you update your domain's MX record, all new email for anyone who uses your domain will now come to Microsoft 365. Any email you already have will stay at your current email host, unless you decide to [migrate email and contacts to Microsoft 365.](../setup/migrate-email-and-contacts-admin.md)

You'll get the information for the MX record from the Admin Center domain setup wizard.

On your hosting provider's website, add a new MX record.
In the new MX record on your DNS host's site, make sure that the fields are set to precisely the following values:

    Record Type: MX
    Priority: Set the priority of the MX record to the highest value available, typically 0.
    Host Name: @
    Points to address: Paste the value from the Admin Center here.
    TTL: 3600‎ (or your provider default)

Save the record, then remove any other MX records.

### Add multiple CNAME records to connect other services
You'll get the information for the CNAME records from the Admin Center domain setup wizard.

On your hosting provider's website, add new CNAME records.
In the new CNAME records on your DNS host's site, make sure that the fields are set to precisely the following values for each:

    Record Type: CNAME (Alias)
    Host: Paste the values you copy from the Admin Center here.
    Points to address: Paste the value from the Admin Center here.
    TTL: 3600‎ (or your provider default)

Save the records.

### Add a TXT record for SPF to help prevent email spam
**Before you begin:** If you already have an SPF record for your domain, don't create a new one for Microsoft 365. Instead, add the required Microsoft 365 values to the current record so that you have a *single* SPF record that includes both sets of values.

On your hosting provider's website, edit the existing SPF record or create a new TXT record for SPF.
In the new TXT record on your DNS host's site, make sure that the fields are set to precisely the following values:

    Record Type: TXT (Text)
    Host: @
    TXT Value:  "v=spf1 include:spf.protection.outlook.com -all"
    TTL: 3600‎ (or your provider default)

Save the record.

To validate your SPF record, use one of these [SPF validation tools](https://docs.microsoft.com/office365/admin/setup/domains-faq#how-can-i-validate-spf-records-for-my-domain)

SPF is designed to help prevent spoofing, but there are spoofing techniques that SPF cannot protect against. To protect against these, once you have set up SPF, you should also configure DKIM and DMARC for Microsoft 365. 

To get started, see [Use DKIM to validate outbound email sent from your domain in Microsoft 365](https://technet.microsoft.com/library/mt695945%28v=exchg.150%29.aspx). 
Next, see [Use DMARC to validate email in Microsoft 365](https://technet.microsoft.com/library/mt734386%28v=exchg.150%29.aspx).

### Add SRV records for communications services

On your hosting provider's website, add new SRV records.
In the new SRV records on your DNS host's site, make sure that the fields are set to precisely the following values for each:

    Record Type: SRV (Service)
    Name: @
    Target: Paste the value from the Admin Center here.
    Protocol: Paste the value from the Admin Center here.
    Service: Paste the value from the Admin Center here.
    Priority: 100
    Weight: 1
    Port: Paste the value from the Admin Center here.
    TTL: 3600‎ (or your provider default)

Save the records.

Some hosting providers have limitations to how they accept SRV records. See the list below if you need a substitution.

**Name**: 
If your DNS host doesn't allow setting this to **@**, leave it blank. Use this approach *only* when your DNS host has separate fields for the Service and Protocol values. Otherwise, see the Service and Protocol notes below.

**Service** and **Protocol**: 
If your DNS host doesn't provide these fields for SRV records, you must specify the **Service** and **Protocol** values as the record's **Name** value. (Note: Depending on your DNS host, the **Name** field might be called something else, like: **Host**, **Hostname**, or **Subdomain**.) To set up the combined value, you create a single string, separating the values with a dot. 

Example: `_sip._tls`

**Priority**, **Weight**, and **Port**: 
If your DNS host doesn't provide these fields for SRV records, you must specify them as the record's **Target** value. (Note: Depending on your DNS host, the **Target** field might be called something else, like: **Content**, **IP Address**, or **Target Host**.) 

To set up the combined value, you create a single string, separating the values with spaces and *sometimes ending with a dot.* The values must be included in this order: Priority, Weight, Port, Target. 

Example 1: `100 1 443 sipdir.online.lync.com.`
Example 2: `100 1 443 sipdir.online.lync.com`