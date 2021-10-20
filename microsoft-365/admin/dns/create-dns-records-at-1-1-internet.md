---
title: "Create DNS records at IONOS by 1&1 for Microsoft"
f1.keywords:
- CSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ROBOTS: NOINDEX, NOFOLLOW
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
- Adm_O365_Setup
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 5762c3ca-1de2-4999-bfe5-4c5e25a8957e
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at 1&1 IONOS for Microsoft."
---

# Create DNS records at IONOS by 1&1 for Microsoft

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 

If IONOS by 1&1 is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.

## Before you begin

You have two options for setting up DNS records for your domain:

- [**Use Domain Connect**](#use-domain-connect-to-verify-and-set-up-your-domain) If you haven't set up your domain with another email service provider, use the Domain Connect steps to automatically verify and set up your new domain to use with Microsoft 365. 

OR

- [**Use the manual steps**](#create-dns-records-with-manual-setup) Verify your domain using the manual steps below and choose when and which records to add to your domain registrar. This allows you to set up new MX (mail) records, for example, at your convenience. 

## Use Domain Connect to verify and set up your domain

Follow these steps to automatically verify and set up your Cloudflare domain with Microsoft 365:

1. In the Microsoft 365 admin center, select **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>, and select the domain you want to set up.

1. Select the three dots (more actions) >  choose **Start setup**.

1. On the How do you want to connect your domain? page, select **Continue**.   

1. On the Add DNS records page, select **Add DNS records**.

1. On the IONOS by 1&1 login page, sign in to your account, and select **Connect**, and **Allow**.
    
    This completes your domain setup for Microsoft 365. 

## Create DNS records with manual setup

After you add these records at IONOS by 1&1, your domain will be set up to work with Microsoft services.
  
> [!CAUTION]
> Note that IONOS by 1&1 doesn't allow a domain to have both an MX record and a top-level Autodiscover CNAME record. This limits the ways in which you can configure Exchange Online for Microsoft. There is a workaround, but we recommend employing it **only** if you already have experience with creating subdomains at IONOS by 1&1. 
> If despite this [service limitation](https://docs.microsoft.com/microsoft-365/admin/setup/domains-faq) you choose to manage your own Microsoft DNS records at IONOS by 1&1, follow the steps in this article to verify your domain and to set up DNS records for email, Skype for Business Online, and so on. 
  
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
### Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 
  
1. To get started, go to your domains page at IONOS by 1&1 by using [this link](https://my.1and1.com/). You'll be prompted to log in.

1. Select **Menu**, and then select **Domains and SSL**.
    
1. Under **Actions** for the domain that you want to update, select the gear control, and then select **DNS**.
    
1. Select **Add record**, and then select the **TXT** section.
    
1. On the Add a DNS record page, in the boxes for the new record, type or copy and paste the values from the following table. 
    
    ||||
    |:-----|:-----|:-----|
  |**Host name** <br/> |**Value** <br/> |
|(Leave this field blank)  <br/> |MS=ms *XXXXXXXX*  <br/> NOTE: This is an example. Use your specific **Destination or Points to Address** value here, from the table. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)          |
   
1. Select **Save**.
    
1. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
Now that you've added the record at your domain registrar's site, you'll go back to Microsoft 365 and request Microsoft 365 to look for the record. When Microsoft finds the correct TXT record, your domain is verified.

To verify the record in Microsoft 365:
  
1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>.
    
2. On the Domains page, select the domain that you're verifying, and select **Start setup**.   
  
3. On the **Verify domain** page, select **Verify**.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).
  
### Add an MX record so email for your domain will come to Microsoft
  
> [!NOTE]
> If you've registered with 1und1.de, [sign in here](https://go.microsoft.com/fwlink/?linkid=859152). 
  
1. To get started, go to your domains page at IONOS by 1&1 by using [this link](https://my.1and1.com/). You'll be prompted to log in.
    
1. Select **Menu**, and then select **Domains and SSL**.
    
1. Under **Actions** for the domain that you want to update, select the gear control, and then select **DNS**.
    
1. Select **Add record**, and then select the **MX** section.
    
1. On the Add a DNS record page, in the boxes for the new record, type or copy and paste the values from the following table. 
    
    | **Host name**| **Points to** |**Priority**| **TTL** |
    |:-----|:-----|:-----| :-----|
    |  @  | *\<domain-key\>*  .mail.protection.outlook.com  <br/>  NOTE: Get your \<domain-key\> from your Microsoft account. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)          |10  <br/> For more information about priority, see [What is MX priority?](https://docs.microsoft.com/ | 1 hour |
  
8. Select **Save**.<br/>(You may have to scroll down.)<br/>

6. If there are any MX records already listed, delete each of them by selecting **Delete record**.
  
### Add the CNAME record required for Microsoft

> [!NOTE]
> If you've registered with 1und1.de, [sign in here](https://go.microsoft.com/fwlink/?linkid=859152). 
  
1. To get started, go to your domains page at IONOS by 1&1 by using [this link](https://my.1and1.com/). You'll be prompted to log in.
    
1. Select **Menu**, and then select **Domains and SSL**.
    
1. Under **Actions** for the domain that you want to update, select the gear control, and then select **Manage subdomains**.
    
    Now you'll create two subdomains and set an **Alias** value for each.<br/>(This is required because 1&1 IONOS supports only one top-level CNAME record, but Microsoft requires several CNAME records.)<br/>First, you'll create the Autodiscover subdomain.
    
1. Select **Add subdomain**.
  
1. In the **Add subdomain** box for the new subdomain, type or copy and paste only the **Add subdomain** value from the following table. (You'll add the **Alias** value in a later step.)

    |**Add subdomain**|**Alias**|
    |:-----|:-----|
    |autodiscover  <br/> |autodiscover.outlook.com   | 
  
1. Under **Actions** for the **autodiscover** subdomain that you just created, select the gear control, and then select **DNS** from the drop-down list. <br/>

1. Select **Add record**, and then select the **CNAME** section.
  
1. In the **Alias:** box, type or copy and paste only the **Alias** value from the following table.<br/> 
    
    |**Add subdomain**|**Alias**|
    |:-----|:-----|
    |autodiscover  <br/> |autodiscover.outlook.com   |
  
1. Select the check box for the **I am aware** disclaimer.<br/>
  
1. Select **Save**.

## Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values. Need examples? Check out these [External Domain Name System records for Microsoft](https://docs.microsoft.com/microsoft-365/enterprise/external-domain-name-system-records). To validate your SPF record, you can use one of these[SPF validation tools](../setup/domains-faq.yml). 
  
> [!NOTE]
> If you've registered with 1und1.de, [sign in here](https://go.microsoft.com/fwlink/?linkid=859152). 
  
1. To get started, go to your domains page at IONOS by 1&1 by using [this link](https://my.1and1.com/). You'll be prompted to log in.
    
1. Select **Menu**, and then select **Domains and SSL**.
  
   :::image type="content" source="../../media/dns-IONOS/IONOS-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::
  
1. Under **Actions** for the domain that you want to update, select the gear control, and then select **DNS**.
 
   :::image type="content" source="../../media/dns-IONOS/IONOS-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::
   
1. Select **Add record**, and then select the **SPF (TXT)** section.
    
1. In the boxes for the new record, type or copy and paste the values from the following table. <br/>
    
    |**Type**|**Host name**|**Value**| **TTL** |
    |:-----|:-----|:-----|:-----|
    |SPF (TXT)  <br/> |(Leave this field empty.)  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct. | 1 hour |
  
1. Select **Save**.<br/>!
  
## Advanced option: Skype for Business

Only select this option if your organization uses ‎Skype for Business‎ for online communication services like chat, conference calls, and video calls, in addition to ‎Microsoft Teams‎. ‎Skype‎ needs 4 records: 2 SRV records for user-to-user communication, and 2 CNAME records to sign-in and connect users to the service.

### Add two additional CNAME records
  
1. Create another subdomain (Lyncdiscover) using the instructions for the first CNAME record above.
    
1. In the **Add subdomain** box for the new subdomain, type or copy and paste only the **Add subdomain** value from the following table. (You'll add the **Alias** value in a later step.)<br/> 
    
    |**Add subdomain**|**Alias**|
    |:-----|:-----|
    |lyncdiscover   |webdir.online.lync.com  |
   
1. Under **Actions** for the **autodiscover** subdomain that you just created, select the gear control, and then select **DNS** from the drop-down list. <br/>
    
1. Select **Add record**, and then select the **CNAME** section.

1. In the **Alias:** box, type or copy and paste only the **Alias** value from the following table. <br/>
    
    |**Create Subdomain**|**Alias**|
    |:-----|:-----|
    |lyncdiscover  <br/> |webdir.online.lync.com  <br/> |
   
1. Select the check box for the **I am aware** disclaimer, and then select **Save**.
    
1. Create another subdomain (SIP): <br/>Select **Add subdomain**.
    
1. In the **Add subdomain** box for the new subdomain, type or copy and paste only the **Add subdomain** value from the following table. (You'll add the **Alias** value in a later step.) <br/>
    
    |**Add subdomain**|**Alias**|
    |:-----|:-----|
    |sip  <br/> |sipdir.online.lync.com  <br/> |

1. Under **Actions** for the subdomain that you just created, select the gear control, and then select **DNS** from the drop-down list. <br/>
    
1. Select **Add record**, and then select the **CNAME** section.

1. in the **Alias:** box, type or copy and paste only the **Alias** value from the following table. 
    
    |**Create Subdomain**|**Alias**|
    |:-----|:-----|
    |sip  <br/> |sipdir.online.lync.com  <br/> |
   
1. Select the check box for the **I am aware** disclaimer, and then select **Save**.

## Add the two SRV records required for Microsoft
  
> [!NOTE]
> If you've registered with 1und1.de, [sign in here](https://go.microsoft.com/fwlink/?linkid=859152). 
  
1. To get started, go to your domains page at IONOS by 1&1 by using [this link](https://my.1and1.com/). You'll be prompted to log in.
    
1. Select **Menu**, and then select **Domains and SSL**.
  
   :::image type="content" source="../../media/dns-IONOS/IONOS-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::
  
1. Under **Actions** for the domain that you want to update, select the gear control, and then select **DNS**.
 
   :::image type="content" source="../../media/dns-IONOS/IONOS-domains-2.png" alt-text="Select Manage DNS from the drop-down list.":::
    
1. Select **Add record**, and then select the **SRV** section.
    
1. In the boxes for the new record, type or copy and paste the values from the following table. <br/>
    
    |**Type**|**Service**|**Protocol**|**Host name**|**Points to**|**Priority**|**Weight**|**Port**|**TTL**|
    |:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
    |SRV  <br/> |sip  <br/> |tls  <br/> |(Leave this field empty.)  <br/> |sipdir.online.lync.com  <br/> |100  <br/> |1  <br/> |443  <br/> |3600 (1 h)  <br/> |
    |SRV  <br/> |sipfederationtls  <br/> |tcp  <br/> |(Leave this field empty.)  <br/> |sipfed.online.lync.com  <br/> |100  <br/> |1  <br/> |5061  <br/> |3600 (1 h)  <br/> |  
  
1. Select **Save**. <br/>
  
1. Add the other SRV record. 
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
    
## Advanced option: Intune and Mobile Device Management for Microsoft 365

This service helps you secure and remotely manage mobile devices that connect to your domain. ‎Mobile Device Management‎ needs 2 CNAME records so that users can enroll devices to the service.

### Add the two required CNAME records

> [!IMPORTANT]
> Follow the procedure that you used for the other CNAME records, and supply the values from the following table. 
  
|**Add subdomain**|**Alias**|
|:-----|:-----|
|enterpriseregistration  <br/> |enterpriseregistration.windows.net  <br/> |
|enterpriseenrollment  <br/> |enterpriseenrollment-s.manage.microsoft.com  <br/> |
   

  
