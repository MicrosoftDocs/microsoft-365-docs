---
title: "Domain registrars with setup limitations"
f1.keywords:
- CSH
ms.author: pebaum
author: pebaum
manager: scotv
ms.date: 08/10/2021
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
search.appverid:
- MET150
ROBOTS: NOINDEX
description: "Some domain registrars offer limited services, which means not all Microsoft features will work with every domain."
---

# Domain registrars with setup limitations

[Create DNS records at DNSMadeEasy for Microsoft](#create-dns-records-at-dnsmadeeasy-for-microsoft)\
[Create DNS records at easyDNS for Microsoft](#create-dns-records-at-easydns-for-microsoft)\
[Create DNS records at Freenom for Microsoft](#create-dns-records-at-freenom-for-microsoft)\
[Create DNS records at MyDomain for Microsoft](#create-dns-records-at-mydomain-for-microsoft)\
[Create DNS records for Microsoft using Windows-based DNS](#create-dns-records-for-microsoft-using-windows-based-dns)\
[Create DNS records when your domain is managed by Google (eNom)](#create-dns-records-when-your-domain-is-managed-by-google-enom)\
[Create DNS records at 1&1 IONOS for Microsoft](#create-dns-records-at-11-ionos-for-microsoft)

Some domain registrars have significant service limitations, which means not all Microsoft features will work with every domain. Specific limitations for some registrars are identified in this article. 

## Create DNS records at DNSMadeEasy for Microsoft

For DNSMadeEasy accounts, the domain you added was purchased from a separate domain registrar. DNSMadeEasy does not offer domain registration services. Your ability to log in at DNSMadeEasy and create the DNS record is sufficient proof of ownership.

## Create DNS records at easyDNS for Microsoft

SRV Records are currently not available under any easyDNS service package. You may need to upgrade to a higher service level with easyDNS to add SRV records which are required for Teams.

## Create DNS records at Freenom for Microsoft

The Freenom website doesn't support adding SRV records, which means that several Teams and Email features won't work. No matter which Microsoft plan you use, there are significant service limitations, and you may want to switch to a different DNS hosting provider.

## Create DNS records at MyDomain for Microsoft

The MyDomain website doesn't support SRV records, which means several Teams and Email features won't work. No matter which Microsoft plan you use, if you manage your DNS records at MyDomain, there are significant service limitations, and you might want to switch to a different DNS hosting provider.

## Create DNS records for Microsoft using Windows-based DNS

Go to the page that has the DNS records for your domain. If you're working in Windows Server 2008, go to **Start**, **Run**. If you're working in Windows Server 2012, press the **Windows key** and **r**. Type **dnsmgmnt.msc**, and then select **OK**. In DNS Manager, expand **DNS server name**,  **Forward Lookup Zones**. Select your domain. You're now ready to create the DNS records.

## Create DNS records when your domain is managed by Google (eNom)

If you purchased your domain through Google while signing up for your Google Apps for Work account, your DNS records are managed by Google but registered with eNom. You can access eNom, and create DNS, through the Google Domains page.

## Create DNS records at 1&1 IONOS for Microsoft

1&1 IONOS doesn't allow a domain to have both an MX record and a top-level Autodiscover CNAME record. This limits the ways in which you can configure Exchange Online for Microsoft. There is a workaround, but we recommend employing it only if you already have experience with creating subdomains at 1&1 IONOS.

If despite this service limitation you choose to manage your own Microsoft DNS records at 1&1 IONOS, follow the steps in this article to verify your domain and to set up DNS records for email, Skype for Business Online, and so on.

1&1 IONOS requires a workaround so that you can use an MX record together with the CNAME records required for Microsoft email services. This workaround requires you to create a set of subdomains at 1&1 IONOS, and to assign them to CNAME records.

> [!NOTE]
> Make sure that you have at least two available subdomains before starting this procedure. We recommend this solution only if you already have experience with creating subdomains at 1&1 IONOS.

### Basic CNAME records

1.  To get started, go to your domains page at 1&1 IONOS. You'll be prompted to log in.

1.  Select **Manage domains**.

1.  On the Domain Center page, find the domain that you want to update, and then select **Manage Subdomains**. Now you'll create two subdomains and set an **Alias** value for each (This is required because 1&1 IONOS supports only one top-level CNAME record, but Microsoft requires several CNAME records.)

1.  First, you'll create the Autodiscover subdomain. In the **Subdomain Overview** section, select **Create Subdomain**.

1.  In the **Create Subdomain** box for the new subdomain, type or copy and paste only the **Create Subdomain** value from the following table. (You'll add the **Alias** value at a later step.)

    |Create Subdomain|Alias|
    |:----|:----|
    |autodiscover|autodiscover.outlook.com|

1.  Select **Create Subdomain**.

1.  In the **Subdomain Overview** section, locate the autodiscover subdomain that you just created, and then select the Panel (v) control for that subdomain.

1.  In the **Subdomain Settings** area, select **Edit DNS Settings**.

1.  In the **A/AAAA Records (IP Addresses)** section, in the **IP address (A Record)** area, select **CNAME**.

1. In the **Alias:** box, type or copy and paste only the **Alias** value from the following table.

    |Create Subdomain|Alias|
    |:----|:----|
    |autodiscover|autodiscover.outlook.com|

1. Select the check box for the **I am aware** disclaimer.

1. Select **Save**.

### Additional CNAME records

The additional CNAME records in the following procedure enable Skype for Business Online services. Use the same steps that you used for the two CNAME records you already created.

**Create the third subdomain (Lyncdiscover)**

1.  On the **Subdomain Overview** section, select **Create Subdomain**.

1.  In the **Create Subdomain** box for the new subdomain, type or copy and paste only the **Create Subdomain** value from the following table. (You'll add the **Alias** value at a later step.)

    |Create Subdomain|Alias|
    |:----|:----|
    |lyncdiscover|webdir.online.lync.com|

1.  Select **Create Subdomain**.

1.  On the Domain Center page, select **Manage Subdomains**.

1.  In the **Subdomain Overview** section, find the lyncdiscover subdomain that you just created, and then select the Panel (v) control for that subdomain. In the **Subdomain Settings** area, select **Edit DNS Settings**.

1.  In the **A/AAAA Records (IP Addresses)** section, in the **IP address (A Record)** area, select **CNAME**.

1.  In the **Alias:** box, type or copy and paste only the **Alias** value from the following table.

    |Create Subdomain|Alias|
    |:----|:----|
    |lyncdiscover|webdir.online.lync.com|

1.  Select the check box for the **I am aware** disclaimer, and then select **Save**.

1.  In the **Edit DNS Settings** dialog box, select **Yes**.

**Create the fourth subdomain (SIP)**

1.  In the **Subdomain Overview** section, select **Create Subdomain**.

1.  In the **Create Subdomain** box for the new subdomain, type or copy and paste only the **Create Subdomain** value from the following table. (You'll add the **Alias** value a later step.)

    |Create Subdomain|Alias|
    |:----|:----|
    |sip|sipdir.online.lync.com|  

1.  Select **Create Subdomain**.

1.  On the Domain Center page, select **Manage Subdomains**.

1.  In the **Subdomain Overview** section, find the sip subdomain that you just created, and then select the Panel (v) control for that subdomain. <br/> In the **Subdomain Settings** area, select **Edit DNS Settings**.

1.  In the **A/AAAA Records (IP Addresses)** section, in the **IP address (A Record)** area, select **CNAME**.

1.  In the **Alias:** box, type or copy and paste only the **Alias** value from the following table.

    |Create Subdomain|Alias|
    |:----|:----|
    |sip|sipdir.online.lync.com|

1.  Select the check box for the **I am aware** disclaimer, and then select **Save**.

1.  In the **Edit DNS Settings** dialog box, select **Yes**.

### CNAME records needed for MDM

Follow the procedure that you used for the other four CNAME records but supply these values:

|Create Subdomain|Alias|
|:----|:----|
|enterpriseregistration|enterpriseregistration.windows.net|
|enterpriseenrollment|enterpriseenrollment-s.manage.microsoft.com|
