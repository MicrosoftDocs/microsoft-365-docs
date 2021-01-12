---
title: "Create DNS records at Wix for Microsoft"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
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
ms.assetid: 7173c635-58b3-400f-95e0-97abe915565e
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at Wix for Microsoft."
---

# Create DNS records at Wix for Microsoft

**[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 
  
If Wix is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.

These are the main records to add. 
  
- [Add a TXT record for verification](#add-a-txt-record-for-verification).
    
- [Add an MX record so email for your domain will come to Microsoft](#add-an-mx-record-so-email-for-your-domain-will-come-to-microsoft).
    
- [Add the five CNAME records that are required for Microsoft](#add-the-five-cname-records-that-are-required-for-microsoft).
    
- [Add a TXT record for SPF to help prevent email spam](#add-a-txt-record-for-spf-to-help-prevent-email-spam).
    
- [Add the two SRV records that are required for Microsoft](#add-the-two-srv-records-that-are-required-for-microsoft).
    
After you add these records at Wix, your domain will be set up to work with Microsoft services.
  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 

  
## Add a TXT record for verification
<a name="BKMK_txt"> </a>

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 

> [!NOTE]
> WIX does not support DNS entries for subdomains.
  
1. To get started, go to your domains page at Wix by using [this link](https://premium.wix.com/wix/api/mpContainerStaticController#/domains?referralAdditionalInfo=account). You'll be prompted to log in first.
    
2. On the **My Domains** page, in the **Advanced** area, select the **Edit DNS** button. 
    
3. Select **+ Add another** in the **TXT (Text)** row of the DNS editor. 
    
4. In the boxes for the new record, type or copy and paste the values from the following table. 
    
   ||||
   |:-----|:-----|:-----|
   | Host Name <br/> | TXT Value <br/> | TTL <br/> |
   |Automatically populated  <br/> |MS=ms *XXXXXXXX*  <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table.  [How do I find this?](../get-help-with-domains/information-for-dns-records.md)|1 Hour <br/> |          |
   
5. Select the **Save DNS** button at the top of the DNS editor. 
    
6. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request the record.
  
When Microsoft finds the correct TXT record, your domain is verified.
  
1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.
    
2. On the **Domains** page, select the domain that you are verifying. 
  
3. On the **Setup** page, select **Start setup**.
   
4. On the **Verify domain** page, select **Verify**.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 

  
## Add an MX record so email for your domain will come to Microsoft
<a name="BKMK_mx"> </a>

1. To get started, go to your domains page at Wix by using [this link](https://premium.wix.com/wix/api/mpContainerStaticController#/domains?referralAdditionalInfo=account). You'll be prompted to log in first.
    
2. On the **My Domains** page, in the **Mailboxes** area, select the **Configure your MX records** link. 
    
3. Choose **Other** from the **Your Email Provider** drop-down list. 
    
4. Select **+ Add another**.
    
5. In the boxes for the new record, type or copy and paste the values from the following table:
    
   | Host Name | Points to | Priority | TTL |
   |:-----|:-----|:-----|:-----|
   |Automatically populated <br/> | *\<domain-key\>*  .mail.protection.outlook.com  <br/> **Note:** Get your  *\<domain-key\>*  from your Microsoft account.   [How do I find this?](../get-help-with-domains/information-for-dns-records.md) |0  <br/> For more information about priority, see [What is MX priority?](https://docs.microsoft.com/microsoft-365/admin/setup/domains-faq) | 1 Hour|
   
6. If there are any other MX records listed, delete each of them. 
    
7. Select **OK**.
    
8. In the confirmation dialog box, select **OK**.
    
	
## Add the five CNAME records that are required for Microsoft
<a name="BKMK_cname"> </a>

1. To get started, go to your domains page at Wix by using [this link](https://premium.wix.com/wix/api/mpContainerStaticController#/domains?referralAdditionalInfo=account). You'll be prompted to login first.
    
2. On the **My Domains** page, in the **Advanced** area, select the **Edit DNS** button. 
    
3. Select **+ Add another** in the **CNAME (Aliases)** row of the DNS editor for each CNAME record. 
    
4. In the boxes for the new record, type or copy and paste the values from the following table:
    
   | Host Name | Points to | TTL |
   |:-----|:-----|:-----|
   |autodiscover  <br/> |autodiscover.outlook.com  <br/> |1 Hour  <br/> |
   |sip  <br/> |sipdir.online.lync.com  <br/> |1 Hour <br/> |
   |lyncdiscover  <br/> |webdir.online.lync.com   <br/> |1 Hour  <br/> |
   |enterpriseregistration  <br/> |enterpriseregistration.windows.net  <br/> |1 Hour <br/> |
   |enterpriseenrollment  <br/> |enterpriseenrollment-s.manage.microsoft.com  <br/> |1 Hour  <br/> |
   
5. Select the **Save DNS** button at the top of the DNS editor. 
    
6. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
	
## Add a TXT record for SPF to help prevent email spam
<a name="BKMK_spf"> </a>

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values.  
  
1. To get started, go to your domains page at Wix by using [this link](https://premium.wix.com/wix/api/mpContainerStaticController#/domains?referralAdditionalInfo=account). You'll be prompted to log in first.
    
2. On the **My Domains** page, in the **Advanced** area, select the **Edit DNS** button. 
    
3. Select **+ Add another** in the **TXT (Text)** row of the DNS editor. 
    
4. In the boxes for the new record, type or copy and paste the values from the following table:
    
   | Host Name | TXT Value | TTL |
   |:-----|:-----|:-----|
   |[leave this blank]  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.<br/> |TXT  <br/> | 1 Hour |
   
5. Select the **Save DNS** button at the top of the DNS editor. 
    
6. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
	
## Add the two SRV records that are required for Microsoft
<a name="BKMK_srv"> </a>

1. To get started, go to your domains page at Wix by using [this link](https://premium.wix.com/wix/api/mpContainerStaticController#/domains?referralAdditionalInfo=account). You'll be prompted to log in first.
    
2. On the **My Domains** page, in the **Advanced** area, select the **Edit DNS** button. 
    
3. Select **+ Add another** in the **SRV** row of the DNS editor. 
    
4. In the boxes for the new record, type or copy and paste the values from the following table:
    
   | Service | Protocol | Name | Weight | Port | Target | Priority | TTL |
   |:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
   |sip  |tls  |Automatically populated |1  |443   |sipdir.online.lync.com |100 |1 Hour |
   |sipfed|tcp |Automatically populated|1 |5061 |sipfed.online.lync.com|100 | 1 Hour |
   
5. Select the **Save DNS** button at the top of the DNS editor. 
    
6. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
