---
title: "Create DNS records at any DNS hosting provider"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: mnirkhe
audience: Admin
ms.topic: get-started-article
ms.service: o365-administration
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
- Adm_O365_Setup
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: 7b7b075d-79f9-4e37-8a9e-fb60c1d95166
description: "Learn to verify your domain and create DNS records at any DNS hosting provider for Microsoft 365."
ms.custom: okr_smb
---

# Create DNS records at any DNS hosting provider

 **[Check the Domains FAQ](../setup/domains-faq.md)** if you don't find what you're looking for. 
  
Check our list of [host-specific instructions](https://support.office.com/article/ae950c9e-e8d9-4108-b0cb-449156998580) to find your host and follow the steps to add all the records you need. 
  
If you don't know the DNS hosting provider or domain registrar for your domain, see [Find your domain registrar or DNS hosting provider](../get-help-with-domains/find-your-domain-registrar.md).
  
To set up the records yourself, these are the records to add. Note that your verification record and MX record are unique to your domain. To set them up, you'll need to get and use a specific "token" value for your domain. The steps below explain how to do that.
  
> [!IMPORTANT]
> The exact name of the boxes or  *fields*  you type or paste the information into, to create each type of DNS record, are different for each DNS host. Your DNS host may have Help on their website to assist you in mapping the instructions we show here to the exact fields on their website. Remember to check to see if we have step-by-step instructions for your DNS host in [Create DNS records for Microsoft 365](https://support.office.com/article/b0f3fdca-8a80-4e8e-9ef3-61e8a2a9ab23.aspx). > Some DNS hosts don't let you create all of the required record types, which [causes service limitations](https://support.office.com/article/7ae9a655-041d-4724-aa92-60392ee390c2.aspx) in Microsoft 365. If your domain's host doesn't support SRV, TXT, or CNAME records, for example, we recommend that you [transfer your domain](../get-help-with-domains/buy-a-domain-name.md) to a DNS host that does support all required records. For a fast, automated process setting up with Microsoft 365, we recommend that you transfer your domain to GoDaddy. 
  
> [!NOTE]
> Typically it takes just a few minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add a TXT or MX record for verification
<a name="BKMK_verify"> </a>

> [!NOTE]
> You will create only one or the other of these records. TXT is the preferred record type, but some DNS hosting providers don't support it, in which case you can create an MX record instead. 
  
Before you use your domain with Microsoft 365, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft 365 that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 
  
 **Find the area on your DNS hosting provider's website where you can create a new record.**
  
1. Sign in to your DNS hosting provider's website.
    
2. Choose your domain.
    
3. Find the page where you can edit DNS records for your domain.
    
 **Create the record.**
  
1. Depending on whether you are creating a TXT record or an MX record, do one of the following:
    
  - **If you create a TXT record, use these values:**
    
|||||
|:-----|:-----|:-----|:-----|
|**Record Type**|**Alias** or **Host Name**|**Value**|**TTL**|
|TXT|Do one of the following: Type **@** or leave the field empty or type your domain name.  <br/> **Note:** Different DNS hosts have different requirements for this field. |MS=ms *XXXXXXXX*  <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table in Microsoft 365.  <br/>        [How do I find this?](../get-help-with-domains/information-for-dns-records.md)     <br/>     |Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc.  |
   
  - **If you create an MX record, use these values:**
    
||||||
|:-----|:-----|:-----|:-----|:-----|
|**Record Type**|**Alias** or **Host Name**|**Value**|**Priority**|**TTL**|
|MX|Type either **@** or your domain name. |MS=ms *XXXXXXXX* <br/> **Note:**This is an example. Use your specific **Destination or Points to Address** value here, from the table in Microsoft 365.    <br/>       [How do I find this?](../get-help-with-domains/information-for-dns-records.md)     <br/>     |For **Priority**, to avoid conflicts with the MX record used for mail flow, use a lower priority than the priority for any existing MX records. <br/> For more information about priority, see [What is MX priority?](https://support.office.com/article/2784cc4d-95be-443d-b5f7-bb5dd867ba83.aspx) <br/> |Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc. |
   
2. Save the record.
    
Now that you've added the record at your domain registrar's site, you'll go back to Microsoft 365 and request Microsoft 365 to look for the record.
  
When Microsoft 365 finds the correct TXT record, your domain is verified.
  
1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.
    
2. On the **Domains** page, select the domain that you are verifying. 
  
3. On the **Setup** page, select **Start setup**.
       
4. On the **Verify domain** page, select **Verify**.   
  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add MX record to route email
<a name="BKMK_add_MX"> </a>

Add an MX record so email for your domain will come to Microsoft 365.  *When you update your domain's MX record, all new email for anyone who uses your domain will now come to Microsoft 365*. Any email you already have will stay at your current email host, unless you decide to [migrate email and contacts to Microsoft 365](../setup/migrate-email-and-contacts-admin.md) to Microsoft 365. 
  
  
 **Task**
  
Find the page where you can create records for your domain.
  
1. Sign in to your DNS host's website.
    
2. Choose your domain.
    
3. Find the page where you can edit DNS records for your domain.
    
::: moniker range="o365-worldwide"

The MX record you'll add includes a value (the **Points to address** value) that looks something like this: \<MX token\>.mail.protection.outlook.com, where \<MX token\> is a value like MSxxxxxxx. 

::: moniker-end

::: moniker range="o365-germany"

The MX record you'll add includes a value (the **Points to address** value) that looks something like this: \<MX token\>.mail.protection.outlook.de, where \<MX token\> is a value like MSxxxxxxx. 

::: moniker-end

1. On your DNS host's website, add a new MX record.
    
    Now you'll [get the information for the MX record](../get-help-with-domains/information-for-dns-records.md) from Microsoft 365. 
    
2. For the MX record (in the step above), copy the **Points to address** value. 
    
    You'll use this value in the record you're creating on your DNS host's site, as described in the next step.
    
3. In the new MX record on your DNS host's site, make sure that the fields are set to precisely the following values:
    
  - **Record Type**: **MX**
    
  - **Priority**: Set the priority of the MX record to the highest value available, which is typically **0**.
    
    For more information about priority, see [What is MX priority?](https://support.office.com/article/2784cc4d-95be-443d-b5f7-bb5dd867ba83.aspx)
    
  - **Host Name**: **@**
    
  - **Points to address**: Paste the **Points to address** value that you just copied from Microsoft 365 here. 
    
  - **TTL**: Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc. 
    
4. Save the record.
    
Remove any other MX records.
  
If you have any MX records for this domain that send email to someplace other than Microsoft 365, delete them all.
  
## Add three CNAME records
<a name="BKMK_add_MX"> </a>

::: moniker range="o365-worldwide"

Follow the steps below to add the three CNAME records that are required for Microsoft 365. If additional CNAME records are listed in Microsoft 365, add those following the same general steps shown here.
  
On your DNS host's website, you'll create three new CNAME records, typically one at a time.
  
1. In the boxes for each new record, type or copy and paste the following values. After you add each of the first three new records, choose to create another CNAME record.
    
|||||
|:-----|:-----|:-----|:-----|
|**Record Type** <br/> |**Host** <br/> |**Points to** <br/> |**TTL** <br/> |
|CNAME (Alias)  <br/> |autodiscover  <br/> |autodiscover.outlook.com  <br/> |1 hour  <br/> |
|CNAME (Alias)  <br/> |lyncdiscover  <br/> |webdir.online.lync.com  <br/> |1 hour  <br/> |
|CNAME (Alias)  <br/> |sip  <br/> |sipdir.online.lync.com  <br/> |1 hour  <br/> |
   
   > [!NOTE]
   > For **TTL**: Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc. > These records do not apply to Exchange, Lync, or Skype for Business hybrid deployments. 
  
2. When you've finished, save the records.
    
::: moniker-end
::: moniker range="o365-germany"

Follow the steps below to add the three CNAME records that are required for Microsoft 365. If additional CNAME records are listed in Microsoft 365, add those following the same general steps shown here.
  
On your DNS host's website, you'll create three new CNAME records, typically one at a time.
  
1. In the boxes for each new record, type or copy and paste the following values. After you add each of the first three new records, choose to create another CNAME record.
    
|||||
|:-----|:-----|:-----|:-----|
|**Record Type** <br/> |**Host** <br/> |**Points to** <br/> |**TTL** <br/> |
|CNAME (Alias)  <br/> |autodiscover  <br/> |autodiscover-outlook.office.de  <br/> |1 hour  <br/> |
|CNAME (Alias)  <br/> |lyncdiscover  <br/> |webdir.online.skype.de  <br/> |1 hour  <br/> |
|CNAME (Alias)  <br/> |sip  <br/> |sipdir.online.lync.de  <br/> |1 hour  <br/> |
   
   > [!NOTE]
   > For **TTL**: Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc. > These records do not apply to Exchange, Lync, or Skype for Business hybrid deployments. 
  
2. When you've finished, save the records.
    
::: moniker-end

::: moniker range="o365-21vianet"

Follow the steps below to add the three CNAME records that are required for Microsoft 365. If additional CNAME records are listed in Microsoft 365, add those following the same general steps shown here.
  
On your DNS host's website, you'll create three new CNAME records, typically one at a time.
  
1. In the boxes for each new record, type or copy and paste the following values. After you add each of the first three new records, choose to create another CNAME record.
    
|||||
|:-----|:-----|:-----|:-----|
|**Record Type** <br/> |**Host** <br/> |**Points to** <br/> |**TTL** <br/> |
|CNAME (Alias)  <br/> |autodiscover  <br/> |autodiscover.partner.outlook.cn  <br/> |1 hour  <br/> |
|CNAME (Alias)  <br/> |lyncdiscover  <br/> |webdir.online.partner.lync.cn  <br/> |1 hour  <br/> |
|CNAME (Alias)  <br/> |sip  <br/> |sipdir.online.partner.lync.cn  <br/> |1 hour  <br/> |
   
   > [!NOTE]
   > For **TTL**: Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc. > These records do not apply to Exchange, Lync, or Skype for Business hybrid deployments. 
  
2. When you've finished, save the records.
    
::: moniker-end

## Add two CNAME records for Mobile Device Management (MDM) for Microsoft 365
<a name="BKMK_add_MX"> </a>

::: moniker range="o365-worldwide"

> [!IMPORTANT]
> If you have Mobile Device Management (MDM) for Microsoft 365, then you must create two additional CNAME records. Follow the procedure that you used for the other four CNAME records, but supply the values from the following table. > (If you do not have MDM, you can skip this step.) 
  
|||||
|:-----|:-----|:-----|:-----|
|**Record Type** <br/> |**Host** <br/> |**Points to** <br/> |**TTL** <br/> |
|CNAME (Alias)  <br/> |enterpriseregistration  <br/> |enterpriseregistration.windows.net  <br/> |1 hour  <br/> |
|CNAME (Alias)  <br/> |enterpriseenrollment  <br/> |enterpriseenrollment.manage.microsoft.com  <br/> |1 hour  <br/> |
   
::: moniker-end

::: moniker range="o365-germany"

> [!IMPORTANT]
> If you have Mobile Device Management (MDM) for Microsoft 365, then you must create two additional CNAME records. Follow the procedure that you used for the other four CNAME records, but supply the values from the following table. > (If you do not have MDM, you can skip this step.) 
  
|||||
|:-----|:-----|:-----|:-----|
|**Record Type** <br/> |**Host** <br/> |**Points to** <br/> |**TTL** <br/> |
|CNAME (Alias)  <br/> |enterpriseregistration  <br/> |enterpriseregistration.microsoftonline.de  <br/> |1 hour  <br/> |
|CNAME (Alias)  <br/> |enterpriseenrollment  <br/> |enterpriseenrollment-s.manage.microsoft.com  <br/> |1 hour  <br/> |
   
::: moniker-end

## Add a TXT record for SPF to help prevent email spam
<a name="BKMK_add_MX"> </a>

::: moniker range="o365-worldwide"

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft 365. Instead, add the required Microsoft 365 values to the current record so that you have a  *single*  SPF record that includes both sets of values.
  
On your DNS host's website, edit the existing SPF record or create a new TXT record for SPF.
  
> [!IMPORTANT]
> SPF is designed to help prevent spoofing, but there are spoofing techniques that SPF cannot protect against. To protect against these, once you have set up SPF, you should also configure DKIM and DMARC for Microsoft 365. To get started, see [Use DKIM to validate outbound email sent from your domain in Microsoft 365](https://technet.microsoft.com/library/mt695945%28v=exchg.150%29.aspx). Next, see [Use DMARC to validate email in Microsoft 365](https://technet.microsoft.com/library/mt734386%28v=exchg.150%29.aspx). 
  
1. In the boxes for the new record, type or copy and paste the set of values below that apply to your situation.
    
|||||
|:-----|:-----|:-----|:-----|
|**Record Type** <br/> |**Host** <br/> |**TXT Value** <br/> |**TTL** <br/> |
|TXT (Text)  <br/> |@  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.           |1 hour  <br/> |
   
   For **TTL**: Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc. 
    
2. When you've finished, save the record.
    
3. To validate your SPF record, use one of these [SPF validation tools](https://docs.microsoft.com/office365/admin/setup/domains-faq#how-can-i-validate-spf-records-for-my-domain)

::: moniker-end

::: moniker range="o365-germany"

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft 365. Instead, add the required Microsoft 365 values to the current record so that you have a  *single*  SPF record that includes both sets of values. 
  
On your DNS host's website, edit the existing SPF record or create a new TXT record for SPF.
  
> [!IMPORTANT]
> SPF is designed to help prevent spoofing, but there are spoofing techniques that SPF cannot protect against. To protect against these, once you have set up SPF, you should also configure DKIM and DMARC for Microsoft 365. To get started, see [Use DKIM to validate outbound email sent from your domain in Microsoft 365](https://technet.microsoft.com/library/mt695945%28v=exchg.150%29.aspx). Next, see [Use DMARC to validate email in Microsoft 365](https://technet.microsoft.com/library/mt734386%28v=exchg.150%29.aspx). 
  
1. In the boxes for the new record, type or copy and paste the set of values below that apply to your situation.
    
|||||
|:-----|:-----|:-----|:-----|
|**Record Type**|**Host**|**TXT Value**|**TTL**|
|TXT (Text)|@|v=spf1 include:spf.protection.outlook.de -all <br/>  We recommend copying and pasting this entry, so that all of the spacing stays correct.           |1 hour|
   
   For **TTL**: Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc. 
    
2. When you've finished, save the record.
    
3. To validate your SPF record, use one of these [SPF validation tools](https://docs.microsoft.com/office365/admin/setup/domains-faq#how-can-i-validate-spf-records-for-my-domain)
    
::: moniker-end

::: moniker range="o365-21vianet"

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft 365. Instead, add the required Microsoft 365 values to the current record so that you have a  *single*  SPF record that includes both sets of values. 
  
On your DNS host's website, edit the existing SPF record or create a new TXT record for SPF.
  
> [!IMPORTANT]
> SPF is designed to help prevent spoofing, but there are spoofing techniques that SPF cannot protect against. To protect against these, once you have set up SPF, you should also configure DKIM and DMARC for Microsoft 365. To get started, see [Use DKIM to validate outbound email sent from your domain in Microsoft 365](https://technet.microsoft.com/library/mt695945%28v=exchg.150%29.aspx). Next, see [Use DMARC to validate email in Microsoft 365](https://technet.microsoft.com/library/mt734386%28v=exchg.150%29.aspx). 
  
1. In the boxes for the new record, type or copy and paste the set of values below that apply to your situation.
    
|||||
|:-----|:-----|:-----|:-----|
|**Record Type**|**Host**|**TXT Value**|**TTL**|
|TXT (Text)|@|v=spf1 include:spf.protection.partner.outlook.cn -all> [!NOTE]> We recommend copying and pasting this entry, so that all of the spacing stays correct.           |1 hour|
   
   For **TTL**: Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc. 
    
2. When you've finished, save the record.
    
3. To validate your SPF record, use one of these [SPF validation tools](https://docs.microsoft.com/office365/admin/setup/domains-faq#how-can-i-validate-spf-records-for-my-domain)
    
::: moniker-end

## Add two SRV records
<a name="BKMK_add_MX"> </a>

::: moniker range="o365-worldwide"

On your DNS host's website, you'll create two new SRV records, typically one at a time. That is, after you add the first SRV record at the website, choose to create another SRV record.
  
1. In the boxes for each new record, type or copy and paste the following values. **(See the notes below for creating SRV records when your DNS host doesn't have all of these as separate fields.)**
    
||||||||||
|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
|**Record Type** <br/> |**Name** <br/> |**Target** <br/> |**Protocol** <br/> |**Service** <br/> |**Priority** <br/> |**Weight** <br/> |**Port** <br/> |**TTL** <br/> |
|SRV (Service)  <br/> |@  <br/> (Or leave blank, if @ is not allowed)  <br/> |sipdir.online.lync.com  <br/> |_tls  <br/> |_sip  <br/> |100  <br/> |1  <br/> |443  <br/> |1 hour  <br/> |
|SRV (Service)  <br/> |@  <br/> (Or leave blank, if @ is not allowed)  <br/> |sipfed.online.lync.com  <br/> |_tcp  <br/> |_sipfederationtls  <br/> |100  <br/> |1  <br/> |5061  <br/> |1 hour  <br/> |
   
  > [!NOTE]
  >  For **Name**: If your DNS host doesn't allow setting this to **@**, leave it blank. Use this approach  *only*  when your DNS host has separate fields for the Service and Protocol values. Otherwise, see the Service and Protocol notes below. 

>  For **Service** and **Protocol**: If your DNS host doesn't provide these fields for SRV records, you must specify the **Service** and **Protocol** values as the record's **Name** value. (Note: Depending on your DNS host, the **Name** field might be called something else, like: **Host**, **Hostname**, or **Subdomain**.) To set up the combined value, you create a single string, separating the values with a dot.  For example: **Name**: _sip._tls 

>  For **Priority**, **Weight**, and **Port**: If your DNS host doesn't provide these fields for SRV records, you must specify them as the record's **Target** value. (Note: Depending on your DNS host, the **Target** field might be called something else, like: **Content**, **IP Address**, or **Target Host**.) To set up the combined value, you create a single string, separating the values with spaces and ending with a dot. The values must be included in this order: Priority, Weight, Port, Target. For example: **Target**: 100 1 443 sipdir.online.lync.com. 

>  Variation for **Priority**, **Weight**, and **Port**: Some DNS hosts provide some, but not all, of the required fields separately. For these DNS host sites, specify the values that aren't shown separately as a combined string, in order, for the record's **Target** value. (Note: Depending on your DNS host, the **Target** field might be called something else, like: **Content**, **IP Address**, or **Target Host**.) To set up the combined value, you create a single string for the fields that aren't shown individually, separating the values with spaces. The values must be included  *in order*  , leaving out the values that have separate fields available: Priority, Weight, Port, Target. For example, when Priority has a separate field, concatenate only the Weight, Port, and Target values: **Target**: 1 443 sipdir.online.lync.com 

> For **TTL**: Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc. 
  
2. When you've finished, save the records.
    
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
::: moniker-end


::: moniker range="o365-germany"

On your DNS host's website, you'll create two new SRV records, typically one at a time. That is, after you add the first SRV record at the website, choose to create another SRV record.
  
1. In the boxes for each new record, type or copy and paste the following values. **(See the notes below for creating SRV records when your DNS host doesn't have all of these as separate fields.)**
    
||||||||||
|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
|**Record Type** <br/> |**Name** <br/> |**Target** <br/> |**Protocol** <br/> |**Service** <br/> |**Priority** <br/> |**Weight** <br/> |**Port** <br/> |**TTL** <br/> |
|SRV (Service)  <br/> |@  <br/> (Or leave blank, if @ is not allowed)  <br/> |sipdir.online.lync.de  <br/> |_tls  <br/> |_sip  <br/> |100  <br/> |1  <br/> |443  <br/> |1 hour  <br/> |
|SRV (Service)  <br/> |@  <br/> (Or leave blank, if @ is not allowed)  <br/> |sipfed.online.lync.de  <br/> |_tcp  <br/> |_sipfederationtls  <br/> |100  <br/> |1  <br/> |5061  <br/> |1 hour  <br/> |
   
 > [!NOTE]
 >  For **Name**: If your DNS host doesn't allow setting this to **@**, leave it blank. Use this approach  *only*  when your DNS host has separate fields for the Service and Protocol values. Otherwise, see the Service and Protocol notes below. 

>  For **Service** and **Protocol**: If your DNS host doesn't provide these fields for SRV records, you must specify the **Service** and **Protocol** values as the record's **Name** value. (Note: Depending on your DNS host, the **Name** field might be called something else, like: **Host**, **Hostname**, or **Subdomain**.) To set up the combined value, you create a single string, separating the values with a dot. >  For example: **Name**: _sip._tls 

>  For **Priority**, **Weight**, and **Port**: If your DNS host doesn't provide these fields for SRV records, you must specify them as the record's **Target** value. (Note: Depending on your DNS host, the **Target** field might be called something else, like: **Content**, **IP Address**, or **Target Host**.) To set up the combined value, you create a single string, separating the values with spaces and ending with a dot. The values must be included in this order: Priority, Weight, Port, Target. >  For example: **Target**: 100 1 443 sipdir.online.lync.de. 

>  Variation for **Priority**, **Weight**, and **Port**: Some DNS hosts provide some, but not all, of the required fields separately. For these DNS host sites, specify the values that aren't shown separately as a combined string, in order, for the record's **Target** value. (Note: Depending on your DNS host, the **Target** field might be called something else, like: **Content**, **IP Address**, or **Target Host**.) To set up the combined value, you create a single string for the fields that aren't shown individually, separating the values with spaces. The values must be included  *in order*  , leaving out the values that have separate fields available: Priority, Weight, Port, Target. >  For example, when Priority has a separate field, concatenate only the Weight, Port, and Target values: **Target**: 1 443 sipdir.online.lync.de 

>  For **TTL**: Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc. 
  
2. When you've finished, save the records.
    
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
::: moniker-end


::: moniker range="o365-21vianet"

On your DNS host's website, you'll create two new SRV records, typically one at a time. That is, after you add the first SRV record at the website, choose to create another SRV record.
  
1. In the boxes for each new record, type or copy and paste the following values. **(See the notes below for creating SRV records when your DNS host doesn't have all of these as separate fields.)**
    
||||||||||
|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
|**Record Type** <br/> |**Name** <br/> |**Target** <br/> |**Protocol** <br/> |**Service** <br/> |**Priority** <br/> |**Weight** <br/> |**Port** <br/> |**TTL** <br/> |
|SRV (Service)  <br/> |@  <br/> (Or leave blank, if @ is not allowed)  <br/> |sipdir.online.partner.lync.cn  <br/> |_tls  <br/> |_sip  <br/> |100  <br/> |1  <br/> |443  <br/> |1 hour  <br/> |
|SRV (Service)  <br/> |@  <br/> (Or leave blank, if @ is not allowed)  <br/> |sipfed.online.partner.lync.cn  <br/> |_tcp  <br/> |_sipfederationtls  <br/> |100  <br/> |1  <br/> |5061  <br/> |1 hour  <br/> |
   
 > [!NOTE]
 >  For **Name**: If your DNS host doesn't allow setting this to **@**, leave it blank. Use this approach  *only*  when your DNS host has separate fields for the Service and Protocol values. Otherwise, see the Service and Protocol notes below. 

>  For **Service** and **Protocol**: If your DNS host doesn't provide these fields for SRV records, you must specify the **Service** and **Protocol** values as the record's **Name** value. (Note: Depending on your DNS host, the **Name** field might be called something else, like: **Host**, **Hostname**, or **Subdomain**.) To set up the combined value, you create a single string, separating the values with a dot. >  For example: **Name**: _sip._tls 

>  For **Priority**, **Weight**, and **Port**: If your DNS host doesn't provide these fields for SRV records, you must specify them as the record's **Target** value. (Note: Depending on your DNS host, the **Target** field might be called something else, like: **Content**, **IP Address**, or **Target Host**.) To set up the combined value, you create a single string, separating the values with spaces and ending with a dot. The values must be included in this order: Priority, Weight, Port, Target. >  For example: **Target**: 100 1 443 sipdir.online.partner.lync.cn. 

>  Variation for **Priority**, **Weight**, and **Port**: Some DNS hosts provide some, but not all, of the required fields separately. For these DNS host sites, specify the values that aren't shown separately as a combined string, in order, for the record's **Target** value. (Note: Depending on your DNS host, the **Target** field might be called something else, like: **Content**, **IP Address**, or **Target Host**.) To set up the combined value, you create a single string for the fields that aren't shown individually, separating the values with spaces. The values must be included  *in order*  , leaving out the values that have separate fields available: Priority, Weight, Port, Target. >  For example, when Priority has a separate field, concatenate only the Weight, Port, and Target values: **Target**: 1 443 sipdir.online.partner.lync.cn 

>  For **TTL**: Set this value to **1 hour** or to the equivalent in minutes ( **60** ), seconds ( **3600** ), etc. 
  
2. When you've finished, save the records.
    
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
::: moniker-end

## More about updating DNS records
<a name="BKMK_MoreAbout"> </a>

 **If you know how to update DNS records at your domain's DNS host**, use the Microsoft 365 DNS values to edit records at your domain's DNS host, for example, to set up an MX record or SPF record. Find the specific values to use by [following these steps](../get-help-with-domains/information-for-dns-records.md), or view them in the domains setup wizard as you step through it.
  
 **If you need some help figuring out how to add the required DNS records** see [Set up your domain (host-specific instructions](https://docs.microsoft.com/office365/admin/get-help-with-domains/set-up-your-domain-host-specific-instructions?view=o365-worldwide), first [gather the information you need to create Microsoft 365 DNS records](../get-help-with-domains/information-for-dns-records.md). Then use the general steps in this topic to set up your domain's DNS records so you can use your domain with Microsoft 365 services, like email.
  
 **If you don't have a website that you use with your custom domain**, you can have Microsoft 365 set up and manage DNS records for your domain instead of doing all the setup yourself. Learn about the [two options for setting up and managing DNS records for a custom domain](https://support.office.com/article/5980474a-097f-4f21-a864-21245314957f.aspx) in Microsoft 365. 
  

