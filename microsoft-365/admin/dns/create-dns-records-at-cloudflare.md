---
title: "Create DNS records at Cloudflare for Office 365"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: mnirkhe
audience: Admin
ms.topic: get-started-article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
- Adm_O365_Setup
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 84acd4fc-6eec-4d00-8bed-568f036ae2af
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at Cloudflare for Office 365."
---

# Create DNS records at Cloudflare for Office 365

 **[Check the Domains FAQ](../setup/domains-faq.md)** if you don't find what you're looking for. 
  
If Cloudflare is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.
  
After you add these records at Cloudflare, your domain will be set up to work with Office 365 services.
  
To learn about webhosting and DNS for websites with Office 365, see [Use a public website with Office 365](https://support.office.com/article/a8178510-501d-4bd8-9921-b04f2e9517a5.aspx).
  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Change your domain's nameserver (NS) records
<a name="BKMK_Nameservers"> </a>

> [!IMPORTANT]
> You must perform this procedure at the domain registrar where you purchased and registered your domain. 
  
When you signed up for Cloudflare, you added a domain by using the Cloudflare **Setup** process. 
  
The domain that you added was purchased from a separate domain registrar; Cloudflare does not offer domain registration services. To verify and create DNS records for your domain in Office 365, you first need to change the nameservers at your domain registrar so that they use Cloudflare's nameservers.
  
To change your domain's name servers at your domain registrar's website yourself, follow these steps.
  
1. Find the area on the domain registrar's website where you can edit the nameservers for your domain.
    
2. Either create two nameserver records by using the values in the following table, or edit the existing nameserver records so that they match these values.
    
    |||
    |:-----|:-----|
    |First nameserver  <br/> |Use the nameserver value provided by Cloudflare.  <br/> |
    |Second nameserver  <br/> |Use the nameserver value provided by Cloudflare.  <br/> |
   
    > [!TIP]
    > You should use at least two name server records. If there are any other name servers listed, you should delete them. 
  
3. Save your changes.
    
> [!NOTE]
> Your nameserver record updates may take up to several hours to update across the Internet's DNS system. Then your Office 365 email and other services will be all set to work with your domain. 
  
## Add a TXT record for verification
<a name="BKMK_verify"> </a>

Before you use your domain with Office 365, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Office 365 that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 
  
1. To get started, go to your domains page at Cloudflare by using [this link](https://www.cloudflare.com/a/login). You'll be prompted to log in first.
  
2. On the **Home** page, select the domain that you want to update. 
  
3. On the **Overview** page for your domain, select **DNS**.

  
4. On the **DNS management** page, click **Add record**, and then select the values from the following table. 
    
    |**Type**|**Name**|**Automatic TTL**|**Content**|
    |:-----|:-----|:-----|:----|
    |TXT  <br/> |@  <br/> |30 minutes  <br/> |MS=ms *XXXXXXXX*  <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table in Office 365.           [How do I find this?](../get-help-with-domains/information-for-dns-records.md)    |
  
    
5. Select **Save**.
  
  
9. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
Now that you've added the record at your domain registrar's site, you'll go back to Office 365 and request Office 365 to look for the record.
  
When Office 365 finds the correct TXT record, your domain is verified.
  
1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

    
2. On the **Domains** page, select the domain that you are verifying. 
    
    
  
3. On the **Setup** page, select **Start setup**.
    
    
  
4. On the **Verify domain** page, select **Verify**.
    
    
  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add an MX record so email for your domain will come to Office 365
<a name="BKMK_add_MX"> </a>

1. To get started, go to your domains page at Cloudflare by using [this link](https://www.cloudflare.com/a/login). You'll be prompted to log in first.
  
2. On the **Home** page, select the domain that you want to update. 
  
3. On the **Overview** page for your domain, select **DNS**.

  
4. On the **DNS management** page, click **Add record**, and then select the values from the following table. 
    
    |**Type**|**Name**|**Mail server**|**Priority**|**TTL**|
    |:-----|:-----|:-----|:-----|:-----|
    |MX  <br/> |@  <br/> |*\<domain-key\>*  .mail.protection.outlook.com  <br/> **Note:** Get your  *\<domain-key\>*  from your Office 365 account.   [How do I find this?](../get-help-with-domains/information-for-dns-records.md) |1  <br/> For more information about priority, see [What is MX priority?](https://support.office.com/article/2784cc4d-95be-443d-b5f7-bb5dd867ba83.aspx) <br/>|30 minutes  <br/> |
   

  
5. Select **Save**.
  
9. If there are any other MX records listed in the **MX Records** section, delete them by selecting the **Delete (X)** icon. 
  
10. In the confirmation dialog box, select **Delete** to confirm your changes. 

  
## Add the Six CNAME records that are required for Office 365
<a name="BKMK_add_CNAME"> </a>

1. To get started, go to your domains page at Cloudflare by using [this link](https://www.cloudflare.com/a/login). You'll be prompted to log in first.
    
  
2. On the **Home** page, select the domain that you want to update. 
  
3. On the **Overview** page for your domain, select **DNS**.

  
4. Add the first of the five CNAME records.
    
    On the **DNS management** page, click **Add record**, and then select the values from the following table.
    
    
    |**Type**|**Name**|**Target**|**TTL**|
    |:-----|:-----|:-----|:-----|
    |CNAME  <br/> |autodiscover  <br/> |autodiscover.outlook.com  <br/> |30 minutes  <br/> |
    |CNAME  <br/> |sip  <br/> |sipdir.online.lync.com  <br/> |30 minutes  <br/> |
    |CNAME  <br/> |lyncdiscover  <br/> |webdir.online.lync.com  <br/> |30 minutes  <br/> |
    |CNAME  <br/> |enterpriseregistration  <br/> |enterpriseregistration.windows.net  <br/> |30 minutes  <br/> |
    |CNAME  <br/> |enterpriseenrollment  <br/> |enterpriseenrollment-s.manage.microsoft.com  <br/> |30 minutes  <br/> |
    |CNAME  <br/> |msoid<sup>**1**</sup>  <br/> |clientconfig.microsoftonline-p.net  <br/> |30 minutes  <br/> |

    <sup>**1**</sup> Applies to Office 365 operated by 21Vianet.
  
5. Select the **DNS Traffic** icon (orange cloud) to bypass the Cloudflare servers.
  
6. Select **Save**.
  
7. Add each of the other five CNAME records.

    
## Add a TXT record for SPF to help prevent email spam
<a name="BKMK_add_TXT"> </a>

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Office 365. Instead, add the required Office 365 values to the current record so that you have a  *single*  SPF record that includes both sets of values. 
  
1. To get started, go to your domains page at Cloudflare by using [this link](https://www.cloudflare.com/a/login). You'll be prompted to log in first.
    
  
2. On the **Home** page, select the domain that you want to update. 
  
3. On the **Overview** page for your domain, select **DNS**.

  
4. On the **DNS management** page, click **Add record**, and then select the values from the following table.  
    
    |**Type**|**Name**|**TTL**|**Content**|
    |:-----|:-----|:-----|:-----|
    |TXT  <br/> |@  <br/> |30 minutes  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.   |

 
5. Select **Save**.
    

  
## Add the two SRV records that are required for Office 365
<a name="BKMK_add_SRV"> </a>

> [!IMPORTANT]
> Please keep in mind that Cloudflare is responsible for making this functionality available. In case you see discrepancies between the steps below and the current Cloudflare GUI(Graphical User Interface), please leverage the [Cloudflare Community](https://community.cloudflare.com/). 

1. To get started, go to your domains page at Cloudflare by using [this link](https://www.cloudflare.com/a/login). You'll be prompted to log in first.
      
2. On the **Home** page, select the domain that you want to update. 
  
3. On the **Overview** page for your domain, select **DNS**.
  
4. Add the first of the two SRV records.

    On the **DNS management** page, click **Add record**, and then select the values from the first row of the following table.
        
    |**Type**|**Service**|**Protocol**|**Name**|**TTL**|**Priority**|**Weight**|**Port**|**Target**|
    |:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
    |SRV|_sip |TLS |Use your *domain_name*; for example, contoso.com  |30 minutes | 100|1 |443 |sipfed.online.lync.com  |
    |SRV|_sipfederationtls | TCP|Use your *domain_name*; for example, contoso.com   |30 minutes |100 |1 |5061 | sipfed.online.lync.com |

  
5. Select **Save**.

  
6. Add the other SRV record by choosing the values from the second row of the table. 

    
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
