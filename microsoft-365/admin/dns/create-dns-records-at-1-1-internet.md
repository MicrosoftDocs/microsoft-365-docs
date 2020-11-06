---
title: "Create DNS records at 1&1 IONOS for Microsoft"
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
ms.assetid: 5762c3ca-1de2-4999-bfe5-4c5e25a8957e
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at 1&1 IONOS for Microsoft."
---

# Create DNS records at 1&1 IONOS for Microsoft

 **[Check the Domains FAQ](../setup/domains-faq.md)** if you don't find what you're looking for. 
  
> [!CAUTION]
> Note that 1&1 IONOS doesn't allow a domain to have both an MX record and a top-level Autodiscover CNAME record. This limits the ways in which you can configure Exchange Online for Microsoft. There is a workaround, but we recommend employing it **only** if you already have experience with creating subdomains at 1&1 IONOS. > If despite this [service limitation](https://docs.microsoft.com/microsoft-365/admin/setup/domains-faq) you choose to manage your own Microsoft DNS records at 1&1 IONOS, follow the steps in this article to verify your domain and to set up DNS records for email, Skype for Business Online, and so on. 
  
After you add these records at 1&1 IONOS, your domain will be set up to work with Microsoft services.
  
  
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 
  
Follow the steps below or [watch the video (start at 0:42)](https://docs.microsoft.com/microsoft-365/admin/dns/create-dns-records-at-1-1-internet).
  
1. To get started, go to your domains page at 1&1 IONOS by using [this link](https://my.1and1.com/). You'll be prompted to log in.
    
2. Select **Manage domains**.
    
3. On the **Domain Center** page, find the domain that you want to update, and then select the **Panel** ( **v**) control for that domain.
    
4. In the **Domain Settings** area, select **Edit DNS Settings**.
    
5. In the **TXT and SRV Records** section, select **Add Record**.
    
6. In the **Add Record** area, in the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** value from the drop-down list.) 
    
    ||||
    |:-----|:-----|:-----|
    |**Type** <br/> |**Prefix** <br/> |**Name Value** <br/> |
    |TXT  <br/> |(Leave this field blank)  <br/> |MS=ms *XXXXXXXX*  <br/> NOTE: This is an example. Use your specific **Destination or Points to Address** value here, from the table. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)          |
   
7. Select **Save**.
    
8. Select **Save** again. 
    
9. In the **Edit DNS Settings** dialog box, select **Yes**.
    
10. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
Now that you've added the record at your domain registrar's site, you'll go back to Microsoft 365 and request Microsoft 365 to look for the record.
  
When Microsoft finds the correct TXT record, your domain is verified.
  
1. In the Microsoft admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

    
2. On the **Domains** page, select the domain that you are verifying. 
    
3. On the **Setup** page, select **Start setup**.
    
4. On the **Verify domain** page, select **Verify**.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add an MX record so email for your domain will come to Microsoft
<a name="BKMK_add_MX"> </a>

Follow the steps below or [watch the video (start at 3:22)](https://docs.microsoft.com/microsoft-365/admin/dns/create-dns-records-at-1-1-internet).
  
> [!NOTE]
> If you've registered with 1und1.de, [sign in here](https://go.microsoft.com/fwlink/?linkid=859152). 
  
1. To get started, go to your domains page at 1&1 IONOS by using [this link](https://my.1and1.com/). You'll be prompted to log in.
    
2. Select **Manage domains**.
    
3. On the **Domain Center** page, find the domain that you want to update, and then select the **Panel** ( **v**) control for that domain.
    
4. In the **Domain Settings** area, select **Edit DNS Settings**.
    
5. In the **MX Records** section, in the **Mail Exchanger (MX Record)** area, select **Other mail server**.<br/>(You may have to scroll down.)<br/>![1&amp;1-BP-Configure-2-1](../../media/b0db72ae-9431-460f-ba7a-3268590b892e.png) <br/>
  
6. If there are any MX records already listed, delete each of them by selecting the record and then pressing the **Delete** key on your keyboard.<br/>(If there are no MX records already listed, continue to the next step.)<br/>![1&amp;1-BP-Configure-2-2](../../media/4a39bac7-7310-481d-bda4-1dd5c220c60f.png)<br/>
  
7. In the boxes for the **MX 1** record, type or copy and paste the values from the following table. 
    
    |**MX 1**|**Priority**|
    |:-----|:-----|
    | *\<domain-key\>*  .mail.protection.outlook.com  <br/>  NOTE: Get your \<domain-key\> from your Microsoft account. [How do I find this?](../get-help-with-domains/information-for-dns-records.md)          |10  <br/> For more information about priority, see [What is MX priority?](https://docs.microsoft.com/microsoft-365/admin/setup/domains-faq) <br/> | 
    
    ![1 and 1 - configure 2 and 3](../../media/3afb04d1-7bbf-4147-89ae-561e14ded26d.png)<br/>
  
8. Select **Save**.<br/>(You may have to scroll down.)<br/>![1&amp;1-BP-Configure-2-4](../../media/355b3ba7-4d2b-45ed-aa17-ac4affb54fe3.png)
  
9. In the **Edit DNS Settings** dialog box, select **Yes**.<br/>![Selecting Yes in the Edit DNS Settings dialog box](../../media/920cc95f-fedf-4da2-94a4-9cb41ed49bcf.png)
  
## Add the six CNAME records that are required for Microsoft
<a name="BKMK_add_CNAME"> </a>

1&1 IONOS requires a workaround so that you can use an MX record together with the CNAME records that are required for Microsoft email services. This workaround requires you to create a set of subdomains at 1&1 IONOS, and to assign them to CNAME records.
  
> [!IMPORTANT]
> Make sure that you have at least two available subdomains before starting this procedure. We recommend this solution only if you already have experience with creating subdomains at 1&1 IONOS. 
  
### Basic CNAME records

Follow the steps below or [watch the video (start at 3:57)](https://docs.microsoft.com/microsoft-365/admin/dns/create-dns-records-at-1-1-internet).
  
> [!NOTE]
> If you've registered with 1und1.de, [sign in here](https://go.microsoft.com/fwlink/?linkid=859152). 
  
1. To get started, go to your domains page at 1&1 IONOS by using [this link](https://my.1and1.com/). You'll be prompted to log in.
    
2. Select **Manage domains**.
    
3. On the **Domain Center** page, find the domain that you want to update, and then select **Manage Subdomains**.<br/>![1&amp;1-BP-Configure-3-0](../../media/d570d03f-5c38-463d-809e-5bb9e4fb2777.png) <br/>Now you'll create two subdomains and set an **Alias** value for each.<br/>(This is required because 1&1 IONOS supports only one top-level CNAME record, but Microsoft requires several CNAME records.)<br/>First, you'll create the Autodiscover subdomain.
    
4. In the **Subdomain Overview** section, select **Create Subdomain**.
    
    ![1&amp;1-BP-Configure-3-1](../../media/95c63639-eb80-443d-8951-98e8b6cdcc4f.png)
  
5. In the **Create Subdomain** box for the new subdomain, type or copy and paste only the **Create Subdomain** value from the following table. (You'll add the **Alias** value in a later step.)

    |**Create Subdomain**|**Alias**|
    |:-----|:-----|
    |autodiscover  <br/> |autodiscover.outlook.com   | 

    ![1&amp;1-BP-Configure-3-2](../../media/9be45113-ebaf-48e6-983c-a7e6ff9eea45.png)
  
6. Select **Create Subdomain**.<br/>![1&amp;1-BP-Configure-3-3](../../media/1e7bc874-f174-4597-8c08-df611d16a74d.png)
  
7. In the **Subdomain Overview** section, locate the **autodiscover** subdomain that you just created, and then select the **Panel (v)** control for that subdomain. <br/>![1&amp;1-BP-Configure-3-4](../../media/10e2e446-3e54-4fb2-8a29-8c442536cc31.png)
  
8. In the **Subdomain Settings** area, select **Edit DNS Settings**. <br/>![1&amp;1-BP-Configure-3-5](../../media/5c602118-b89b-4897-9faf-0736be8a6a0d.png)
  
9. In the **A/AAAA Records (IP Addresses)** section, in the **IP address (A Record)** area, select **CNAME**.<br/>![1&amp;1-BP-Configure-3-6](../../media/7f57f468-fbee-4440-a53d-3e334d8e5b71.png)
  
10. In the **Alias:** box, type or copy and paste only the **Alias** value from the following table.<br/> 
    
    |**Create Subdomain**|**Alias**|
    |:-----|:-----|
    |autodiscover  <br/> |autodiscover.outlook.com   |

    ![1&amp;1-BP-Configure-3-7](../../media/afac3118-3337-4f99-98dd-a7ca930230ce.png)
  
11. Select the check box for the **I am aware** disclaimer.<br/>![1&amp;1-BP-Configure-3-8-1](../../media/6c4cac1a-23f2-4ff3-b2d1-3dca908638d2.png)
  
12. Select **Save**.<br/>![1&amp;1-BP-Configure-3-8-2](../../media/ea1dfc06-c175-4146-ab40-da4d162097e1.png)
  
  
### Additional CNAME records

The additional CNAME records created in the following procedure enable Skype for Business Online services. You will employ the same steps that you used to create the two CNAME records you have already created.
  
1. Create the third subdomain (Lyncdiscover).<br/>On the **Subdomain Overview** section, select **Create Subdomain**.
    
2. In the **Create Subdomain** box for the new subdomain, type or copy and paste only the **Create Subdomain** value from the following table. (You'll add the **Alias** value in a later step.)<br/> 
    
    |**Create Subdomain**|**Alias**|
    |:-----|:-----|
    |lyncdiscover   |webdir.online.lync.com  |
   
3. Select **Create Subdomain**.
    
4. On the **Domain Center** page, select **Manage Subdomains**.
    
5. In the **Subdomain Overview** section, find the **lyncdiscover** subdomain that you just created, and then select the **Panel (v)** control for that subdomain. <br/>In the **Subdomain Settings** area, select **Edit DNS Settings**.
    
6. In the **A/AAAA Records (IP Addresses)** section, in the **IP address (A Record)** area, select **CNAME**.
    
7. In the **Alias:** box, type or copy and paste only the **Alias** value from the following table. <br/>
    
    |**Create Subdomain**|**Alias**|
    |:-----|:-----|
    |lyncdiscover  <br/> |webdir.online.lync.com  <br/> |
   
8. Select the check box for the **I am aware** disclaimer, and then select **Save**.
    
9. In the **Edit DNS Settings** dialog box, select **Yes**.
    
10. Create the fourth subdomain (SIP): <br/>In the **Subdomain Overview** section, select **Create Subdomain**.
    
11. In the **Create Subdomain** box for the new subdomain, type or copy and paste only the **Create Subdomain** value from the following table. (You'll add the **Alias** value in a later step.) <br/>
    
    |**Create Subdomain**|**Alias**|
    |:-----|:-----|
    |sip  <br/> |sipdir.online.lync.com  <br/> |
   
12. Select **Create Subdomain**.
    
13. On the **Domain Center** page, select **Manage Subdomains**.
    
14. In the **Subdomain Overview** section, find the **sip** subdomain that you just created, and then select the **Panel (v)** control for that subdomain. <br/>In the **Subdomain Settings** area, select **Edit DNS Settings**.
    
15. In the **A/AAAA Records (IP Addresses)** section, in the **IP address (A Record)** area, select **CNAME**.
    
16. In the **Alias:** box, type or copy and paste only the **Alias** value from the following table. 
    
    |**Create Subdomain**|**Alias**|
    |:-----|:-----|
    |sip  <br/> |sipdir.online.lync.com  <br/> |
   
17. Select the check box for the **I am aware** disclaimer, and then select **Save**.
    
18. In the **Edit DNS Settings** dialog box, select **Yes**.
    
### CNAME records needed for MDM

> [!IMPORTANT]
> Follow the procedure that you used for the other four CNAME records, but supply the values from the following table. 
  
|**Create Subdomain**|**Alias**|
|:-----|:-----|
|enterpriseregistration  <br/> |enterpriseregistration.windows.net  <br/> |
|enterpriseenrollment  <br/> |enterpriseenrollment-s.manage.microsoft.com  <br/> |
   
## Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values. Need examples? Check out these [External Domain Name System records for Microsoft](https://docs.microsoft.com/microsoft-365/enterprise/external-domain-name-system-records). To validate your SPF record, you can use one of these[SPF validation tools](../setup/domains-faq.md). 
  
Follow the steps below or [watch the video (start at 5:09)](https://docs.microsoft.com/microsoft-365/admin/dns/create-dns-records-at-1-1-internet).
  
> [!NOTE]
> If you've registered with 1und1.de, [sign in here](https://go.microsoft.com/fwlink/?linkid=859152). 
  
1. To get started, go to your domains page at 1&1 IONOS by using [this link](https://my.1and1.com/). You'll be prompted to log in.
    
2. Select **Manage domains**.
    
3. On the **Domain Center** page, find the domain that you want to update, and then select the **Panel** (**v**) control for that domain.
    
4. In the **Domain Settings** area, select **Edit DNS Settings**.
    
5. In the **TXT and SRV Records** section, select **Add Record**. <br/>(You may have to scroll down.)
    
6. In the **Add Record** area, in the boxes for the new record, type or copy and paste the values from the following table. <br/>(Choose the **Type** value from the drop-down list.) <br/>
    
    |**Type**|**Prefix**|**Name Value**|
    |:-----|:-----|:-----|
    |TXT  <br/> |(Leave this field empty.)  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.           | 
    
    ![TXT record](../../media/0b3ba3b4-64b9-4d68-9ee1-04eb3a17d4c5.png)
  
7. Select **Save**.<br/>![Add record](../../media/0f222eb9-3bfd-4908-9a99-516cc6fb1d0e.png)
  
8. Select **Save**.<br/>![Save record](../../media/86ed1b59-31b2-4094-9cd4-32b94eb09e35.png)
  
9. In the **Edit DNS Settings** dialog box, select **Yes**.<br/>![Selecting Yes in the Edit DNS Settings dialog box](../../media/920cc95f-fedf-4da2-94a4-9cb41ed49bcf.png)
  
## Add the two SRV records that are required for Microsoft

Follow the steps below or [watch the video (start at 5:51)](https://docs.microsoft.com/microsoft-365/admin/dns/create-dns-records-at-1-1-internet).
  
> [!NOTE]
> If you've registered with 1und1.de, [sign in here](https://go.microsoft.com/fwlink/?linkid=859152). 
  
1. To get started, go to your domains page at 1&1 IONOS by using [this link](https://my.1and1.com/). You'll be prompted to log in.
    
2. Select **Manage domains**.
    
3. On the **Domain Center** page, find the domain that you want to update, and then select the **Panel** ( **v**) control for that domain.
    
4. In the **Domain Settings** area, select **Edit DNS Settings**.
    
5. In the **TXT and SRV Records** section, select **Add Record**.
    
6. Add the first of the two SRV records.<br/>In the **Add Record** area, in the boxes for the new record, type or copy and paste the values from the first row in the following table. <br/>(Choose the **Type** and **TTL** values from the drop-down list.) 
    
    |**Type**|**Service**|**Protocol**|**Name**|**Host**|**Priority**|**Weight**|**Port**|**TTL**|
    |:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
    |SRV  <br/> |sip  <br/> |tls  <br/> |(Leave this field empty.)  <br/> |sipdir.online.lync.com  <br/> |100  <br/> |1  <br/> |443  <br/> |3600 (1 h)  <br/> |
    |SRV  <br/> |sipfederationtls  <br/> |tcp  <br/> |(Leave this field empty.)  <br/> |sipfed.online.lync.com  <br/> |100  <br/> |1  <br/> |5061  <br/> |3600 (1 h)  <br/> |  
    
    ![1&amp;1-BP-Configure-5-1](../../media/087e337d-926b-42ff-b11d-b449cfaed76c.png)
  
7. Select **Save**. <br/>![1&amp;1-BP-Configure-5-2](../../media/aa5f803d-fb24-48e0-976a-6759c5fd252c.png)
  
8. Select **Save**. <br/>![1&amp;1-BP-Configure-5-3](../../media/097e7e95-4899-4878-b6e7-c3abd8193c52.png)
  
9. In the **Edit DNS Settings** dialog box, select **Yes**. <br/>![Selecting Yes in the Edit DNS Settings dialog box](../../media/920cc95f-fedf-4da2-94a4-9cb41ed49bcf.png)
  
10. Add the other SRV record. <br/>In the **TXT and SRV Records** section, select **Add Record**. <br/>In the **Add Record** area, create a record using the values from the other row in the table, and then again select **Add**, **Save**, and **Yes** to complete the record. 
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
