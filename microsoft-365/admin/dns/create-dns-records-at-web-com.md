---
title: "Create DNS records at web.com for Microsoft"
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
ms.assetid: 84acd4fc-6eec-4d00-8bed-568f036ae2af
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at web.com for Microsoft."
---

# Create DNS records at web.com for Microsoft

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 
  
If web.com is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.
  
After you add these records at web.com, your domain will be set up to work with Microsoft services.

> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Change your domain's nameserver (NS) records

> [!IMPORTANT]
> You must perform this procedure at the domain registrar where you purchased and registered your domain. 
  
When you signed up for web.com, you added a domain by using the web.com **Setup** process. 
  
To verify and create DNS records for your domain in Microsoft, you first need to change the nameservers at your domain registrar so that they use web.com's nameservers.
  
To change your domain's name servers at your domain registrar's website yourself, follow these steps.
  
1. Find the area on the domain registrar's website where you can edit the nameservers for your domain.
    
2. Either create two nameserver records by using the values in the following table, or edit the existing nameserver records so that they match these values.
    
    |||
    |:-----|:-----|
    |First nameserver  <br/> |Use the nameserver value provided by web.com.  <br/> |
    |Second nameserver  <br/> |Use the nameserver value provided by web.com.  <br/> |
   
    > [!TIP]
    > You should use at least two name server records. If there are any other name servers listed, you should delete them. 
  
3. Save your changes.
    
> [!NOTE]
> Your nameserver record updates may take up to several hours to update across the Internet's DNS system. Then your Microsoft email and other services will be all set to work with your domain. 
  
## Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 
  
1. To get started, go to your domains page at web.com by using [this link](https://checkout.web.com/manage-it/index.jsp). Log in first.
  
2. On the home page, select **Domain Names**. 
  
3. Under **All My Domain Names**, select the domain you want to verify.
 
1. Select the three dots under **Actions**, and select **Manage** from the drop-down list.
 
1. Select Advanced Tools, and next to Advanced DNS Records, select MANAGE.

4. On the **Domain Names** page, under **Text (TXT Records)**, click **Edit TXT Records**, and then select the values from the following table. 
    
    |**Host**|**TTL**|**Text**|
    |:-----|:-----|:----|
    |@  <br/> |3600  <br/> |MS=ms *XXXXXXXX*  <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table.  [How do I find this?](../get-help-with-domains/information-for-dns-records.md)    |
  
5. Select **Continue**.
  
6. Wait a few minutes before you verify your new TXT record, so that the record you just created can update across the Internet.
    
Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request the record. When Microsoft finds the correct TXT record, your domain is verified.
  
To verify the record in Microsoft 365:
  
1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>.
    
2. On the Domains page, select the domain that you're verifying, and select **Start setup**.   
  
3. On the **Verify domain** page, select **Verify**.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).
  
## Add an MX record so email for your domain will come to Microsoft

1. To get started, go to your domains page at web.com by using [this link](https://checkout.web.com/manage-it/index.jsp). Log in first.
  
1. On the landing page, select **Domain Names**. 
  
1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.
  
1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE** > **Continue**.
    
    (You might have to scroll down.)
  
1. On the Manage Advanced DNS Records page, select **+ ADD RECORD**.

1. Under **Type**, select **MX** from the drop-down list.

1. Select, or copy and paste, the values from the following table. 
    
    | **Refers to** | **Mail server**|**Priority**|**TTL**|
    |:-----|:-----|:-----|:-----| 
    | @ |*\<domain-key\>*  .mail.protection.outlook.com  <br/> **Note:** Get your  *\<domain-key\>*  from the Microsoft admin center.   [How do I find this?](../get-help-with-domains/information-for-dns-records.md) | For more information about priority, see [What is MX priority?](https://docs.microsoft.com/microsoft-365/admin/setup/domains-faq) <br/> 1| 1 Hour  <br/> |
   
1. Select **ADD**.
  
1. If there are any other MX records listed in the **MX Records** section, select the check box next to the record under **Delete**, and select **Save**. 
  
1. On the confirmation screen, select **Save changes**. 

## Add the CNAME record required for Microsoft

1. To get started, go to your domains page at web.com by using [this link](https://checkout.web.com/manage-it/index.jsp). Log in first.
  
1. On the landing page, select **Domain Names**. 
  
1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.
  
1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE** > **Continue**.
    
    (You might have to scroll down.)
  
1. On the Manage Advanced DNS Records page, select **+ ADD RECORD**.

1. Under **Type**, select **CNAME** from the drop-down list.

1. Select, or copy and paste, the values from the following table. 
    
    |**Refers to** | **Host name** | **Alias to**|**TTL**|
    |:-----|:-----|:-----|
    | Other Host  <br/>| autodiscover  <br/>| autodiscover.outlook.com  <br/> | 1 Hour  <br/>  |
  
1. Select **ADD**.
  
## Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values. 
  
1. To get started, go to your domains page at web.com by using [this link](https://checkout.web.com/manage-it/index.jsp). Log in first.
  
1. On the landing page, select **Domain Names**. 
  
1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.
  
1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE** > **Continue**.
    
    (You might have to scroll down.)
  
1. On the Manage Advanced DNS Records page, select **+ ADD RECORD**.

1. Under **Type**, select **TXT** from the drop-down list.

1. Select, or copy and paste, the values from the following table. 
    
    |**Refers to**|**TXT value**|**TTL**|
    |:-----|:-----|:-----|
    |@  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.  | 1 Hour  <br/> 
 
5. Select **ADD**.
  
## Advanced option: Skype for Business

Only select this option if your organization uses ‎Skype for Business‎ for online communication services like chat, conference calls, and video calls, in addition to ‎Microsoft Teams‎. ‎Skype‎ needs 4 records: 2 SRV records for user-to-user communication, and 2 CNAME records to sign-in and connect users to the service.

### Add the two required SRV records

1. To get started, go to your domains page at web.com by using [this link](https://checkout.web.com/manage-it/index.jsp). Log in first.
  
1. On the landing page, select **Domain Names**. 
  
1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.
  
1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE** > **Continue**.
    
    (You might have to scroll down.)
  
1. On the Manage Advanced DNS Records page, select **+ ADD RECORD**.

1. Under **Type**, select **SRV** from the drop-down list.

1. Select, or copy and paste, the values from the following table. 
    
    (Choose the **Service** and **Protocol** values from the drop-down lists.) 
    
    | **Type** |**Service**|**Protocol**|**Weight**|**Port**|**Target**|**Priority**|**TTL**|
    |:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
    | SRV |_sip  <br/> |_tls  <br/> |100  <br/> |443  <br/> |sipdir.online.lync.com  <br/> **This value CANNOT end with a period (.)** <br/> | 1  <br/> | 1 Hour  <br/> |
    | SRV |_sipfederationtls  <br/> |_tcp  <br/> |100  <br/> |5061  <br/> |sipfed.online.lync.com  <br/> **This value CANNOT end with a period (.)** <br/> |1  <br/> | 1 Hour  <br/> |
  
6. Select **Add**.
  
7. To add the other SRV record:
    
    In the **Advanced DNS** section, create a record by using the values from the second row in the table, and then again select **Add** to complete that record. 
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 

### Add the two required CNAME records 
    
1. To get started, go to your domains page at web.com by using [this link](https://checkout.web.com/manage-it/index.jsp). Log in first.
  
1. On the landing page, select **Domain Names**. 
  
1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.
  
1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE** > **Continue**.
    
    (You might have to scroll down.)
  
1. On the Manage Advanced DNS Records page, select **+ ADD RECORD**.

1. Under **Type**, select **CNAME** from the drop-down list.

1. Select, or copy and paste, the values from the following table. 
    
    | **Type**|**Refers to | Host Name**|**Alias to**| **TTL** |
    |:-----|:-----|:-----|:-----|:-----|
    | CNAME | Other Host | sip  <br/> |sipdir.online.lync.com  <br/> **This value CANNOT end with a period (.)** <br/> |1 Hour  <br/> |
    | CNAME| Other Host | lyncdiscover  <br/> |webdir.online.lync.com  <br/> **This value CANNOT end with a period (.)** <br/> | 1 Hour  <br/> |
  
1. Select **Add**.
  
1. Using the preceding three steps and the values from the second row in the table, add the other CNAME record.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Advanced option: Intune and Mobile Device Management for Microsoft 365

This service helps you secure and remotely manage mobile devices that connect to your domain. ‎Mobile Device Management‎ needs 2 CNAME records so that users can enroll devices to the service.

### Add the two required CNAME records

1. To get started, go to your domains page at web.com by using [this link](https://checkout.web.com/manage-it/index.jsp). Log in first.
  
1. On the landing page, select **Domain Names**. 
  
1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.
  
1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE** > **Continue**.
    
    (You might have to scroll down.)
  
1. On the Manage Advanced DNS Records page, select **+ ADD RECORD**.

1. Under **Type**, select **CNAME** from the drop-down list.

1. Select, or copy and paste, the values from the following table. 
    
    | **Type**|**Refers to | Host Name**|**Alias to**| **TTL** |
    |:-----|:-----|:-----|:-----|:-----|
    | CNAME | Other Host | enterpriseregistration  <br/> |enterpriseregistration.windows.net  <br/> **This value CANNOT end with a period (.)** <br/> | 1 Hour  <br/> |
    | CNAME | Other Host |enterpriseenrollment  <br/> |enterpriseenrollment-s.manage.microsoft.com  <br/> **This value CANNOT end with a period (.)** <br/> | 1 Hour  <br/> |
  
1. Select **Add**.
  
1. Using the preceding steps and the values from the second row in the table, add the other CNAME record.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).