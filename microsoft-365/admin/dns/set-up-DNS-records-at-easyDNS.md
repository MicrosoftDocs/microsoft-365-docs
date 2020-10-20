---
title: "Create DNS records at easyDNS for Microsoft"
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
- MET150
- MOE150
ms.assetid: 446babfe-2e08-4cc2-bbfb-c05b854933ac
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at easyDNS for Microsoft."
---

# Create DNS records at easyDNS for Microsoft

[Check the Domains FAQ ](../setup/domains-faq.md) if you don't find what you're looking for. 
  
You'll need to add all of the following DNS records at your registrar's website to route mail to Microsoft, use your domain for Teams and Skype for Business, and so on.
  
NOTE: SRV Records are currently NOT available under all easyDNS service packages. You may need to upgrade to a higher service level with easyDNS to add SRV records which are required for Skype for Business.
  
## Verify that you own the domain with a TXT record

1. Go to [https://cp.easydns.com/manage/domains/](https://cp.easydns.com/manage/domains/) and log in with your credentials. 
    
2. Under the **all domains** heading, select **dns.**
    
3. Under the **TXT records** heading, select the edit button (wrench icon). 
    
4. Enter the following records in the text fields:
    
    |**Host**|**Text**|
    |:-----|:-----|
    |@  <br/> |MS=msXXXXXXXX (Use the value provided to you on the admin center Domains page)  <br/> |
   
5. Select **NEXT**. 
    
6. Check to make sure the record is correct, and then select **CONFIRM**. 
    
7. Wait a few minutes before you continue, so that the record you just created can propagate across the Internet and be detected by Microsoft.
    
8. Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request the record.
    
9. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.
    
10. On the **Domains** page, select the domain that you are verifying. 
    
11. On the **Setup** page, select **Start setup.**
    
12. On the **Verify domain** page, select **Verify**. 
    
## Add an MX record to route email to Microsoft

1. Go to [https://cp.easydns.com/manage/domains/](https://cp.easydns.com/manage/domains/) and log in with your credentials. 
    
2. Under the **all domains** heading, select **dns.**
    
3. Under the **MX records** heading, select the edit button (wrench icon). 
    
4. Enter the following records in the text fields:
    
    |**MAIL FOR ZONE**|**MAIL SERVER**|**PREF**|
    |:-----|:-----|:-----|
    |@  <br/> |\<domain-key\>.mail.protection.outlook.com (Get your \<domain-key\> value from the admin center Domains page)  <br/> |0  <br/> |
   
2. If you want to save your other MX records for backup purposes, copy them down somewhere. Before moving on, remove all other MX records here.
    
5. Select **NEXT**. 
    
6. Check to make sure the record is correct, and then select **CONFIRM**. 
    
## Add the required CNAME records

1. Go to [https://cp.easydns.com/manage/domains/](https://cp.easydns.com/manage/domains/) and log in with your credentials. 
    
2. Under the **all domains** heading, select **dns.**
    
3. Under the **CNAME/Alias records** heading, select the edit button (wrench icon). 
    
4. Enter the following records in the text fields:


    |**HOST**|**Address (Must end with a ".")**|
    |:-----|:-----|
    |autodiscover  <br/> |autodiscover.outlook.com.  <br/> |
    |sip  <br/> |sipdir.online.lync.com.  <br/> |
    |lyncdiscover  <br/> |webdir.online.lync.com.  <br/> |
    |enterpriseregistration  <br/> |enterpriseregistration.windows.net.  <br/> |
    |enterpriseenrollment  <br/> |enterpriseenrollment-s.manage.microsoft.com.  <br/> |
   
5. Select **NEXT**. 
    
6. Check to make sure the record is correct, and then select **CONFIRM**. 
    
## Add a TXT record for SPF to help prevent email spam

1. Go to [https://cp.easydns.com/manage/domains/](https://cp.easydns.com/manage/domains/) and log in with your credentials. 
    
2. Under the **all domains** heading, select **dns.**
    
3. Under the **TXT records** heading, select the edit button (wrench icon). 
    
4. Enter the following records in the text fields:
    
    |**Host**|**Text**|
    |:-----|:-----|
    |@  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/> |
   
5. Select **NEXT**. 
    
6. Check to make sure the record is correct, and then select **CONFIRM**. 
    
## Add the two SRV records that are required for Microsoft

NOTE: SRV Records are currently NOT available under easyDNS' Domain Plus service level. You may need to upgrade to a higher service level with easyDNS to add SRV records 
  
1. Go to [https://cp.easydns.com/manage/domains/](https://cp.easydns.com/manage/domains/) and log in with your credentials. 
    
2. Under the **all domains** heading, select **dns.**
    
3. Under the **SRV records** heading, select the edit button (wrench icon). 
    
4. Enter the following records in the text fields:
    
    |**SERVICE**|**PROTO**|**HOST**|**PRI**|**WGT**|**PORT**|**TARGET(Must end with a ".")**|**TTL**|
    |:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
    |_sip  <br/> |TLS  <br/> |@  <br/> |100  <br/> |1  <br/> |443  <br/> |sipdir.online.lync.com.  <br/> |1800  <br/> |
    |_sipfederationtls  <br/> |TCP  <br/> |@  <br/> |100  <br/> |1  <br/> |5061  <br/> |sipfed.online.lync.com.  <br/> |1800  <br/> |
   
5. Select **NEXT**. 
    
6. Check to make sure the record is correct, and then select **CONFIRM**. 
    

