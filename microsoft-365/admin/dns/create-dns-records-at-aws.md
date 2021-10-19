---
title: "Create DNS records at Amazon Web Services (AWS) for Microsoft"
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
ms.assetid: 7a2efd75-0771-4897-ba7b-082fe5bfa9da
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at Amazon Web Services (AWS) for Microsoft."
---

# Create DNS records at Amazon Web Services (AWS) for Microsoft

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 
  
If AWS is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype Online for Business, and so on.
  
After you add these records at AWS, your domain will be set up to work with Microsoft services.
  
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 
  
1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.
    
1. On the landing page, under **Domains**, select **Registered domains**.
    
1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Manage DNS**. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Under **Domain name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Create record**.
    
1. In the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** and **Routing Policy** values from the drop-down lists.) 
    
    > [!TIP]
    > The quotation marks required by the onscreen instructions are supplied automatically. You don't need to type them manually. 
  
    ||||||
    |:-----|:-----|:-----|:-----|:-----|
    |**Record name** <br/> |**Record type** <br/> |**Value** <br/> |**TTL (Seconds)** <br/> |**Routing policy** <br/> |
    |(Leave this field empty.)  <br/> |TXT - Used to verify email senders  <br/> |MS=ms *XXXXXXXX*  <br/>**Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table in Microsoft 365. [How do I find this?](../get-help-with-domains/information-for-dns-records.md) |300  <br/> |Simple  <br/> |
   
1. Select **Create records**.
    
1. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request a search for the record. When Microsoft finds the correct TXT record, your domain is verified.

To verify the record in Microsoft 365:
  
1. In the Microsoft admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

2. On the **Domains** page, select the domain that you are verifying. 
    
3. On the **Setup** page, select **Start setup**.
    
4. On the **Verify domain** page, select **Verify**.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add an MX record so email for your domain will come to Microsoft 365

1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.
    
1. On the landing page, under **Domains**, select **Registered domains**.
    
1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Manage DNS**. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Under **Domain name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Create record**.
    
1. In the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** and **Routing policy** values from the drop-down lists.) 
    
    > [!TIP]
    > The quotation marks required by the onscreen instructions are supplied automatically. You don't need to type them manually. 
    
    |**Record name**|**Record type**|**Value**|**TTL (Seconds)**|**Routing policy**|
    |:-----|:-----|:-----|:-----|:-----|
    |(Leave this field empty.)  <br/> |MX - Mail exchange  <br/> |0  *\<domain-key\>*  .mail.protection.outlook.com.  <br/> The 0 is the MX priority value. Add it to the beginning of the MX value, separated from the remainder of the value by a space.  <br/> **This value MUST end with a period (.)** <br/> **Note:** Get your \<*domain-key*\> from your Microsoft 365 account. [How do I find this?](../get-help-with-domains/information-for-dns-records.md) | 300  <br/> | Simple routing <br/> |
  
1. Select **Create records**.
  
1. If there are any other MX records, remove them by selecting the record, and then selecting **Delete**.
  
## Add the CNAME record required for Microsoft 365

1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.
    
1. On the landing page, under **Domains**, select **Registered domains**.
    
1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Manage DNS**. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Under **Domain name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Create record**.
    
1. In the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** and **Routing policy** values from the drop-down lists.) 
    
    |**Record name**|**Record type**|**Value**| **TTL** |**Routing policy**|
    |:-----|:-----|:-----|:-----|:-----|
    |autodiscover  <br/> |CNAME - Routes traffic to another domain name  <br/> | autodiscover.outlook.com.  <br/> **This value MUST end with a period (.)** <br/> | 300  <br/> |Simple  <br/> |
  
6. Select **Create records**.
    
## Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values. Need examples? Check out these [External Domain Name System records for Microsoft](https://docs.microsoft.com/microsoft-365/enterprise/external-domain-name-system-records). To validate your SPF record, you can use one of these[SPF validation tools](../setup/domains-faq.yml). 
  
1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.
    
1. On the landing page, under **Domains**, select **Registered domains**.
    
1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Manage DNS**. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Under **Domain name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Create record**.
    
1. In the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** value from the drop-down lists.) 
    
    |**Record type** | **Value**|
    |:-----|:-----|
    |TXT- Used to verify email senders and for application-specific values |v=spf1 include:spf.protection.outlook.com -all  <br/> (The quotation marks required by the onscreen instructions are supplied automatically. You don't need to type them manually.)  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.   |
  
6. Select **Create records**.

## Advanced option: Skype for Business

Only select this option if your organization uses ‎Skype for Business‎ for online communication services like chat, conference calls, and video calls, in addition to ‎Microsoft Teams‎. ‎Skype‎ needs 4 records: 2 SRV records for user-to-user communication, and 2 CNAME records to sign-in and connect users to the service.

### Add the two required SRV records

1. To get started, go to your domains page at AWS by using [this link](https://console.aws.amazon.com/route53/home). You'll be prompted to log in first.
    
1. On the landing page, under **Domains**, select **Registered domains**.
    
1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Manage DNS**. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Under **Domain name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Create record**.
    
1. In the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** and **Routing Policy** values from the drop-down lists.) 
    
    |**Record name**|**Record type**|**Value**|**TTL (Seconds)**|**Routing policy**|
    |:-----|:-----|:-----|:-----|:-----|
    |_sip._tls|SRV - Service locator|100 1 443 sipdir.online.lync.com. **This value MUST end with a period (.)**><br> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct. | 300 |Simple|
    |_sipfederationtls._tcp|SRV - Service locator|100 1 5061 sipfed.online.lync.com. **This value MUST end with a period (.)**<br> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.    | 300 |Simple|
  
7. To add the other SRV record, select **Add another record**, create a record using the values from the next row in the table, and then again select **Create records**. 
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 

### Add the two required CNAME records 
    
1. Select **Create record**. 
    
1. In the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** and **Routing policy** values from the drop-down lists.) 

    |**Record name**|**Record type**|**Value**| **TTL** |**Routing policy**|
    |:-----|:-----|:-----|:-----|:-----|
    |sip  <br/> |CNAME - Canonical name  <br/> |sipdir.online.lync.com.  <br/> **This value MUST end with a period (.)** <br/> |300  <br/> |Simple  <br/> |
    |lyncdiscover  <br/> |CNAME - Canonical name  <br/> |webdir.online.lync.com.  <br/> **This value MUST end with a period (.)** <br/>  |300  <br/> ||Simple  <br/> |
  
1. To add the other CNAME record, select **Add another record**, create a record using the values from the next row in the table. 

1. Select **Create records**.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Advanced option: Intune and Mobile Device Management for Microsoft 365

This service helps you secure and remotely manage mobile devices that connect to your domain. ‎Mobile Device Management‎ needs two CNAME records so that users can enroll devices to the service.

### Add the two required CNAME records

1. To get started, go to your domains page at 123-reg.co.uk by using [this link](https://www.123-reg.co.uk/secure/cpanel/domain/overview). You'll be prompted to log in first.
    
1. On the landing page, under **Domains**, select **Registered domains**.
    
1. Under **Domain Name**, select the domain you want to set up in Microsoft 365.

    **Note**: If you haven't created a hosted zone for your domain, select **Create hosted zone** and complete the steps before moving to the next step. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Manage DNS**. 

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Under **Domain name**, select the domain name for the hosted zone version of the domain you want to verify.

   :::image type="content" source="../../media/dns-godaddy/godaddy-domains-1.png" alt-text="Select Manage DNS from the drop-down list.":::

1. Select **Create record**.

1. In the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** and **Routing policy** values from the drop-down lists.) 
    
    |**Record name**|**Record type**|**Value**| **TTL** |**Routing policy**|
    |:-----|:-----|:-----|:-----|:-----|
    |enterpriseregistration  <br/> |CNAME - Canonical name  <br/> |enterpriseregistration.windows.net.  <br/> **This value MUST end with a period (.)** <br/> |300  <br/> |Simple  <br/> |
    |enterpriseenrollment  <br/> |CNAME - Canonical name  <br/> | enterpriseenrollment-s.manage.microsoft.com.  <br/> **This value MUST end with a period (.)** <br/>|300  <br/> | |Simple  <br/> |
  
1. To add the other CNAME record, select **Add another record**, create a record using the values from the next row in the table. 

1. Select **Create records**.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).