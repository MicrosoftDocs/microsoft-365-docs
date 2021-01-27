---
title: "Create DNS records at OVH for Microsoft"
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
ms.assetid: 5176feef-36dc-4d84-842f-1f2b5a21ba96
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at OVH for Microsoft."
---

# Create DNS records at OVH for Microsoft

[Check the Domains FAQ](../setup/domains-faq.yml) if you don't find what you're looking for. 
  
If OVH is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.
  
These are the main records to add. 
  
- [Create DNS records at OVH for Microsoft](#create-dns-records-at-ovh-for-microsoft)
    
- [Add an MX record so email for your domain will come to Microsoft](#add-an-mx-record-so-email-for-your-domain-will-come-to-microsoft)
    
- [Add the CNAME records that are required for Microsoft](#add-the-cname-records-that-are-required-for-microsoft)
    
- [Add a TXT record for SPF to help prevent email spam](#add-a-txt-record-for-spf-to-help-prevent-email-spam)
    
- [Add the two SRV records that are required for Microsoft](#add-the-two-srv-records-that-are-required-for-microsoft)
    
After you add these records at OVH, your domain will be set up to work with Microsoft services.

  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add a TXT record for verification
<a name="bkmk_txt"> </a>

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 
  
1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.
    
    ![OVH login](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)
  
2. Under **Domains**, select the name of the domain that you want edit.
    
    ![OVH Select the domain](../../media/fe407909-4ea6-4b92-a3bd-dec4022b1d8d.png)
  
3. Select **DNS zone**.
    
    ![OVH select DNS zone](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)
  
4. Select **Add an entry**.
    
    ![OVH Add an entry](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)
  
5. Select **TXT**
    
    ![OVH select TXT entry](../../media/3aaa9dae-0b1d-436b-a980-b67a970f31a9.png)
  
6. In the boxes for the new record, type or copy and paste the values from the following table. To assign a TTL value, choose **Personalized** from the drop-down list, and then type the value in the text box. 
    
    |**Record type**|**Sub-domain**|**TTL**|**Value**|
    |:-----|:-----|:-----|:-----|
    |TXT  <br/> |(leave blank)  <br/> |3600 (seconds)  <br/> |MS=msxxxxxxxx  <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table.           [How do I find this?](../get-help-with-domains/information-for-dns-records.md)          |
   
7. Select **Confirm**. 
    
    ![OVH confirm TXT for verification](../../media/bde45596-9a55-4634-b5e7-16d7cde6e1b8.png)
  
8. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request the record.
  
When Microsoft finds the correct TXT record, your domain is verified.
  
1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.
    
2. On the **Domains** page, select the domain that you are verifying. 
    
    
  
3. On the **Setup** page, select **Start setup**.
    
    
  
4. On the **Verify domain** page, select **Verify**.
    
    
  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add an MX record so email for your domain will come to Microsoft
<a name="bkmk_mx"> </a>

1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.
    
    ![OVH login](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)
  
2. Under **Domains**, select the name of the domain that you want edit.
    
    ![OVH Select the domain](../../media/fe407909-4ea6-4b92-a3bd-dec4022b1d8d.png)
  
3. Select **DNS zone**.
    
    ![OVH select DNS zone](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)
  
4. Select **Add an entry**.
    
    ![OVH Add an entry](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)
  
5. Select **MX**.
    
    ![OVH MX record type](../../media/29b5e54e-440a-41f2-9eb9-3de573922ddf.png)
  
6. In the boxes for the new record, type or copy and paste the values from the following table. To assign a TTL value, choose **Personalized** from the drop-down list, and then type the value in the text box. 
    
    > [!NOTE]
    > By default OVH uses relative notation for the target, which adds the domain name to the end of the target record. To use absolute notation instead, add a dot to the target record as shown in the table below. 
  
    |**Record type**|**Sub-domain**|**TTL**|**Priority**|**Target**|
    |:-----|:-----|:-----|:-----|:-----|
    |MX  <br/> |(leave blank)  <br/> |3600 (seconds﻿)  <br/> |10  <br/> For more information about priority, see [What is MX priority?](https://docs.microsoft.com/microsoft-365/admin/setup/domains-faq) <br/> |\<domain-key\>.mail.protection.outlook.com.  <br/> **Note:** Get your  *\<domain-key\>*  from your Microsoft account.  [How do I find this?](../get-help-with-domains/information-for-dns-records.md)  |
   
    ![OVH MX record for mail](../../media/6e2f5655-93e2-4620-8f19-c452e7edf8f0.png)
  
7. Select **Next**.
    
    ![OVH MX record select Next](../../media/4db62d07-0dc4-49f6-bd19-2b4a07fd764a.png)
  
8. Select **Confirm**.
    
    ![OVH MX record select Confirm](../../media/090bfb11-a753-4af0-8982-582a4069a169.png)
  
9. If there are any other MX records, delete them all in the list on the **DNS zone** page. Select each record and then, in the **Actions** column, select the trash-can **Delete** icon. 
    
    ![OVH delete MX record](../../media/892b328b-7057-4828-b8c5-fe26284dc8c2.png)
  
10. Select **Confirm**.
    
## Add the CNAME records that are required for Microsoft
<a name="bkmk_cname"> </a>

1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.
    
    ![OVH login](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)
  
2. Under **Domains**, select the name of the domain that you want edit.
    
    ![OVH Select the domain](../../media/fe407909-4ea6-4b92-a3bd-dec4022b1d8d.png)
  
3. Select **DNS zone**.
    
    ![OVH select DNS zone](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)
  
4. Select **Add an entry**.
    
    ![OVH Add an entry](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)
  
5. Select **CNAME**.
    
    ![OVH add CNAME record type](../../media/33c7ac74-18d7-4ae1-9e27-1c0f9773a3c3.png)
  
6. Create the first CNAME record.
    
    In the boxes for the new record, type or copy and paste the values from the first row of the following table. To assign a TTL value, choose **Personalized** from the drop-down list, and then type the value in the text box. 
    
    |**Record type**|**Sub-domain**|**Target**|**TTL**|
    |:-----|:-----|:-----|:-----|
    |CNAME  <br/> |autodiscover  <br/> |autodiscover.outlook.com.  <br/> |3600 seconds  <br/> |
    |CNAME  <br/> |sip  <br/> |sipdir.online.lync.com.  <br/> |3600 seconds  <br/> |
    |CNAME  <br/> |lyncdiscover  <br/> |webdir.online.lync.com.  <br/> |3600 seconds  <br/> |
    |CNAME  <br/> |enterpriseregistration  <br/> |enterpriseregistration.windows.net.  <br/> |3600 seconds  <br/> |
    |CNAME  <br/> |enterpriseenrollment  <br/> |enterpriseenrollment-s.manage.microsoft.com.  <br/> |3600 seconds  <br/> |
   
    ![OVH CNAME record](../../media/516938b3-0b12-4736-a631-099e12e189f5.png)
  
7. Select **Next**.
    
    ![OVH Add CNAME values and select Next](../../media/f9481cb1-559d-4da1-9643-9cacb0d80d29.png)
  
8. Select **Confirm**.
    
9. Repeat the previous steps to create the other five CNAME records.
    
    For each record, type or copy and paste the values from the next row of the table above into the boxes for that record.
    
## Add a TXT record for SPF to help prevent email spam
<a name="bkmk_spf"> </a>

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values. 
  
1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.
    
    ![OVH login](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)
  
2. Under **Domains**, select the name of the domain that you want edit.
    
    ![OVH Select the domain](../../media/fe407909-4ea6-4b92-a3bd-dec4022b1d8d.png)
  
3. Select **DNS zone**.
    
    ![OVH select DNS zone](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)
  
4. Select **Add an entry**.
    
    ![OVH Add an entry](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)
  
5. Select **TXT**.
    
6. In the boxes for the new record, type or copy and paste the following values.
    
    |**Record type**|**Sub-domain**|**TTL**|**TXT Value**|
    |:-----|:-----|:-----|:-----|
    |TXT  <br/> |(leave blank)  <br/> |3600 (seconds)  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.           |
   
    ![OVH Add TXT record for SPF](../../media/f50466e9-1557-4548-8a39-e98978a5ee2e.png)
  
7. Select **Next**.
    
    ![OVH Add TXT record for SPF and select Next](../../media/7937eb7c-114f-479f-a916-bcbe476d6108.png)
  
8. Select **Confirm**.
    
    ![OVH Add TXT record for SPF and Confirm](../../media/649eefeb-3227-49e3-98a0-1ce19c42fa54.png)
  
## Add the two SRV records that are required for Microsoft
<a name="bkmk_srv"> </a>

1. To get started, go to your domains page in OVH by using [this link](https://www.ovh.com/manager/). You'll be prompted to log in.
    
    ![OVH login](../../media/1424cc15-720d-49d1-b99b-8ba63b216238.png)
  
2. Under **Domains**, select the name of the domain that you want edit.
    
    ![OVH Select the domain](../../media/fe407909-4ea6-4b92-a3bd-dec4022b1d8d.png)
  
3. Select **DNS zone**.
    
    ![OVH select DNS zone](../../media/45218cbe-f3f8-4804-87f9-cfcef89ea113.png)
  
4. Select **Add an entry**.
    
    ![OVH Add an entry](../../media/13ded54b-9e48-4c98-8e1b-8c4a99633bc0.png)
  
5. Select **SRV**.
    
    ![OVH select SRV record type](../../media/66bad536-a531-4a4e-b08d-c0d99f6ea1b2.png)
  
6. Create the first SRV record.
    
    In the boxes for the new record, type or copy and paste the values from the first row of the following table. To assign a TTL value, choose **Personalized** from the drop-down list, and then type the value in the text box. 
    
    |**Record type**|**Sub-domain**|**Priority**|**Weight**|**Port**|**TTL**|**Target**|
    |:-----|:-----|:-----|:-----|:-----|:-----|:-----|
    |SRV (Service)  <br/> |_sip._tls  <br/> |100  <br/> |1  <br/> |443  <br/> |3600 (seconds)  <br/> |sipdir.online.lync.com.  <br/> |
    |SRV (Service)  <br/> |_sipfederationtls._tcp  <br/> |100  <br/> |1  <br/> |5061  <br/> |3600 (seconds)  <br/> |sipfed.online.lync.com.  <br/> |
       
    ![OVH SRV record](../../media/73956b9e-9e4f-40a5-803e-c4ead2f77fa6.png)
  
7. Select **Next**.
    
    ![OVH SRV record select Next](../../media/cb4ad7e2-a8f0-4ab1-9797-d1b51c1d2da9.png)
  
8. Select **Confirm**.
    
9. Repeat the previous steps to create the other SRV record. Type or copy and paste the values from the second row of the table above into the boxes for the second record.
    
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
