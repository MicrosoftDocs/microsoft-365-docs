---
title: "Create DNS records at Hostgator for Microsoft"
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
ms.assetid: 5f0c840e-4140-4571-88ed-cf235ff142d6
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at Hostgator for Microsoft."
---

# Create DNS records at Hostgator for Microsoft

 **[Check the Domains FAQ](../setup/domains-faq.md)** if you don't find what you're looking for. 
  
If Hostgator is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.
  
> [!IMPORTANT]
> You must perform the first procedurebelow, [Point your domain to your hosting account](#point-your-domain-to-your-hosting-account), before you add DNS records by using any of the other procedures in this article. 

After you make all of these changes at Hostgator, your domain will be set up to work with Microsoft services.
  

  
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Point your domain to your hosting account
<a name="BKMK_PointDomain"> </a>

> [!IMPORTANT]
> You must perform this procedure before you perform any of the other procedures in this article. 
  
Follow these steps to associate your domain and hosting accounts.
  
1. To get started, go to your domain management page at Hostgator by using [this link](https://portal.hostgator.com/). You'll be prompted to log in.
    
2. Select **Domains** on the left.
  
3. On the **Manage Domains** page, select the domain you want to update. 
  
4. On the pop-out menu on the left, select **Name Servers**.
  
5. On the **Name Servers** page for your domain, in the **Automatically point this domain to my hosting account** drop-down list, choose the hosting account that is associated with your domain. 
  
6. Select **Save Name Servers**.
    
  
## Add a TXT record for verification
<a name="BKMK_verify"> </a>

> [!IMPORTANT]
> Before you perform this procedure, you must first perform the procedure in the first section of this article, [Point your domain to your hosting account](#point-your-domain-to-your-hosting-account). 
  
Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 
  
1. To get started, go to your cPanel page at Hostgator. You'll be prompted to log in first.
    
    (Each hosted account at Hostgator is assigned a unique cPanel address. Your cPanel address should look like this: https://YourSiteAddress:secure-port-number. The sign-up email you received from Hostgator will specify that address, and a cPanel link is also available on the **Hosting** page.)
    
    > [!IMPORTANT]
    > To have a cPanel associated with your domain, you need a hosting account with Hostgator. To get started with Microsoft, you can either purchase a hosting account from Hostgator or [redelegate your nameservers to point to Microsoft](change-nameservers-at-hostgator.md). 
  
2. On the **Control Panel** page, in the **Domains** area, select **Advanced Zone Editor**.
    
3. On the **Advanced Zone Editor** page, in the **Add a Record** area, in the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** value from the drop-down list.) 
    
    |||||
    |:-----|:-----|:-----|:-----|
    |**Name** <br/> |**TTL** <br/> |**Type** <br/> |**TXT Data** <br/> |
    |Use your  *domain_name*. (for example, fourthcoffee.com.)  <br/> **This value MUST end with a period (.)** <br/> |1  <br/> |TXT  <br/> |MS=ms *XXXXXXXX*  <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)          |
   
4. Select **Add Record**.
    
5. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request the record.
  
When Microsoft finds the correct TXT record, your domain is verified.
  
1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.
    
2. On the **Domains** page, select the domain that you are verifying. 
    
3. On the **Setup** page, select **Start setup**.
    
4. On the **Verify domain** page, select **Verify**.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add an MX record so email for your domain will come to Microsoft
<a name="BKMK_add_MX"> </a>

> [!IMPORTANT]
> Before you perform this procedure, you must first perform the procedure in the first section of this article, [Point your domain to your hosting account](#point-your-domain-to-your-hosting-account). 
  
1. To get started, go to your cPanel page at Hostgator. You'll be prompted to log in first.
    
    (Each hosted account at Hostgator is assigned a unique cPanel address. Your cPanel address should look like this: https://YourSiteAddress:secure-port-number. The sign-up email you received from Hostgator will specify that address, and a cPanel link is also available on the **Hosting** page.)
    
    > [!IMPORTANT]
    > To have a cPanel associated with your domain, you need a hosting account with Hostgator. To get started with Microsoft, you can either purchase a hosting account from Hostgator or [redelegate your nameservers to point to Microsoft](change-nameservers-at-hostgator.md). 
  
2. On the **Control Panel** page, in the **Email** area, select **MX Entry**.
    
 
3. In the **Email Routing** area, select **Remote Mail Exchanger**.

4. Select **Change**.
  
5. In the **Add a New Record** area, in the boxes for the new record, type or copy and paste the values from the following table. 
    
    |**Priority**|**Destination**|
    |:-----|:-----|
    |0  <br/> For more information about priority, see [What is MX priority?](https://docs.microsoft.com/microsoft-365/admin/setup/domains-faq) <br/> | *\<domain-key\>*  .mail.protection.outlook.com  <br/> **Note:** Get your \< *domain-key*  \> from your Microsoft account.  [How do I find this?](../get-help-with-domains/information-for-dns-records.md)          |
  
6. Select **Add New Record**.
   
 
7. If there are any other MX records in the **MX Records** section, remove each of them. 

    
## Add the six CNAME records that are required for Microsoft
<a name="BKMK_add_CNAME"> </a>

> [!IMPORTANT]
> Before you perform this procedure, you must first perform the procedure in the first section of this article, [Point your domain to your hosting account](#point-your-domain-to-your-hosting-account). 
  
1. To get started, go to your cPanel page at Hostgator. You'll be prompted to log in first.
    
    (Each hosted account at Hostgator is assigned a unique cPanel address. Your cPanel address should look like this: https://YourSiteAddress:secure-port-number. The sign-up email you received from Hostgator will specify that address, and a cPanel link is also available on the **Hosting** page.)
    
    > [!IMPORTANT]
    > To have a cPanel associated with your domain, you need a hosting account with Hostgator. To get started with Microsoft, you can either purchase a hosting account from Hostgator or [redelegate your nameservers to point to Microsoft](change-nameservers-at-hostgator.md). 
  
2. On the **Control Panel** page, in the **Domains** area, select **Advanced Zone Editor**.
    
3. Add the first of the six CNAME records.
    
    On the **Advanced Zone Editor** page, in the **Add a Record** area, in the boxes for the new record, type or copy and paste the values from the first row in the following table. 
    
    (Choose the **Type** value from the drop-down list.) 
    
    |**Name**|**TTL**|**Type**|**CNAME**|
    |:-----|:-----|:-----|:-----|
    |autodiscover. *domain_name*. (for example, autodiscover.fourthcoffee.com.)  <br/> **This value MUST end with a period (.)** <br/> |3600  <br/> |CNAME  <br/> |autodiscover.outlook.com  <br/> |
    |sip. *domain_name*. (for example, sip.fourthcoffee.com.)  <br/> **This value MUST end with a period (.)** <br/> |3600  <br/> |CNAME  <br/> |sipdir.online.lync.com  <br/> |
    |lyncdiscover. *domain_name*. (for example, lyncdiscover.fourthcoffee.com.)  <br/> **This value MUST end with a period (.)** <br/> |3600  <br/> |CNAME  <br/> |webdir.online.lync.com  <br/> |
    |enterpriseregistration. *domain_name*. (for example, enterpriseregistration.fourthcoffee.com.)  <br/> **This value MUST end with a period (.)** <br/> |3600  <br/> |CNAME  <br/> |enterpriseregistration.windows.net  <br/> |
    |enterpriseenrollment. *domain_name*. (for example, enterpriseregistration.fourthcoffee.com.)  <br/> **This value MUST end with a period (.)** <br/> |3600  <br/> |CNAME  <br/> |enterpriseenrollment-s.manage.microsoft.com  <br/> |

  
4. Select **Add Record**.

5. Add each of the other five CNAME records.
    
    In the **Add a Record** section, create a record by using the values from the next row in the table, and then again select **Add Record** to complete that record. 
    
    Repeat this process until you have created all six CNAME records.
    
## Add a TXT record for SPF to help prevent email spam
<a name="BKMK_add_TXT"> </a>

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a single SPF record that includes both sets of values. Need examples? Check out these [External Domain Name System records for Microsoft](https://docs.microsoft.com/microsoft-365/enterprise/external-domain-name-system-records#bkmk_spfrecords). To validate your SPF record, you can use one of these [SPF validation tools](../setup/domains-faq.md). 
  
> [!IMPORTANT]
> Before you perform this procedure, you must first perform the procedure in the first section of this article, [Point your domain to your hosting account](#point-your-domain-to-your-hosting-account). 
  
1. To get started, go to your cPanel page at Hostgator. You'll be prompted to log in first.
    
    (Each hosted account at Hostgator is assigned a unique cPanel address. Your cPanel address should look like this: https://YourSiteAddress:secure-port-number. The sign-up email you received from Hostgator will specify that address, and a cPanel link is also available on the **Hosting** page.)
    
    > [!IMPORTANT]
    > To have a cPanel associated with your domain, you need a hosting account with Hostgator. To get started with Microsoft, you can either purchase a hosting account from Hostgator or [redelegate your nameservers to point to Microsoft](change-nameservers-at-hostgator.md). 
  
2. On the **Control Panel** page, in the **Domains** area, select **Advanced Zone Editor**.
    
3. On the **Advanced DNS Zone Editor** page, in the **Add a Record** area, in the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** value from the drop-down list.) 
    
    |**Name**|**TTL**|**Type**|**TXT Data**|
    |:-----|:-----|:-----|:-----|
    |Use your  *domain_name*. (for example, fourthcoffee.com.)  <br/> **This value MUST end with a period (.)** <br/> |3600  <br/> |TXT  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.           |
  
4. Select **Add Record**.
    
## Add the two SRV records that are required for Microsoft
<a name="BKMK_add_SRV"> </a>

> [!IMPORTANT]
> Before you perform this procedure, you must first perform the procedure in the first section of this article, [Point your domain to your hosting account](#point-your-domain-to-your-hosting-account). 
  
1. To get started, go to your cPanel page at Hostgator. You'll be prompted to log in first.
    
    (Each hosted account at Hostgator is assigned a unique cPanel address. Your cPanel address should look like this: https://YourSiteAddress:secure-port-number. The sign-up email you received from Hostgator will specify that address, and a cPanel link is also available on the **Hosting** page.)
    
    > [!IMPORTANT]
    > To have a cPanel associated with your domain, you need a hosting account with Hostgator. To get started with Microsoft, you can either purchase a hosting account from Hostgator or [redelegate your nameservers to point to Microsoft](change-nameservers-at-hostgator.md). 
  
2. On the **Control Panel** page, in the **Domains** area, select **Advanced Zone Editor**.

    
3. Add the first of the two SRV records.
    
    On the **Advanced DNS Zone Editor** page, in the **Add a Record** area, in the boxes for the new record, type or copy and paste the values from the first row in the following table. 
    
    (Choose the **Type** value from the drop-down list.) 
    
    |**Name**|**TTL**|**Type**|**Priority**|**Weight**|**Port**|**Target**|
    |:-----|:-----|:-----|:-----|:-----|:-----|:-----|
    |_sip._tls. *domain_name*. (for example, _sip._tls.fourthcoffee.com.)  <br/> **This value MUST end with a period (.)** <br/> |3600  <br/> |SRV  <br/> |100  <br/> |1  <br/> |443  <br/> |sipdir.online.lync.com  <br/> |
    |_sipfederationtls._tcp. *domain_name*. (for example, _sipfederationtls._tcp.fourthcoffee.com.)  <br/> **This value MUST end with a period (.)** <br/> |3600  <br/> |SRV  <br/> |100  <br/> |1  <br/> |5061  <br/> |sipfed.online.lync.com  <br/> |
   

4. Select **Add Record**.

  
5. Add the other SRV record.
    
    In the **Add a Record** section, create a record by using the values from the next row in the table, and then again select **Add Record** to complete that record. 
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
