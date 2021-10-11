---
title: "Create DNS records at Network Solutions for Microsoft"
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
ms.assetid: 1dc55f9f-5309-450f-acc3-b2b4119c8be3
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at Network Solutions for Microsoft."
---

# Create DNS records at Network Solutions for Microsoft

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 
  
If Network Solutions is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.
  
These are the main records to add. Follow the steps below or [watch the video](https://support.microsoft.com/office/c49698c2-6991-47fb-b5ac-18e49a505099). 
  
- [Add a TXT record for verification](#add-a-txt-record-for-verification)
    
- [Add an MX record so email for your domain will come to Microsoft](#add-an-mx-record-so-email-for-your-domain-will-come-to-microsoft)
    
- [Add the CNAME record required for Microsoft](#add-the-cname-record-required-for-microsoft)
    
- [Add a TXT record for SPF to help prevent email spam](#add-a-txt-record-for-spf-to-help-prevent-email-spam)
    
- [Add the two SRV records that are required for Microsoft](#add-the-two-srv-records-that-are-required-for-microsoft)
    
After you add these records at Network Solutions, your domain will be set up to work with Microsoft services.
  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add a TXT record for verification

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 
  
Follow the steps below or [watch the video (start at 0:47)](https://support.microsoft.com/office/c49698c2-6991-47fb-b5ac-18e49a505099).
  
1. To get started, go to your domains page at Network Solutions by using [this link](https://www.networksolutions.com/manage-it). You'll be prompted to log in.
  
1. On the landing page, select **Domain Names**.

1. Select the the check box next to the domain that you want to modify.
    
    ![Select the check box for your domain](../../media/2c13d2ba-4a31-44da-812c-2cc90900a183.png)
  
1. Under **Actions**, select the three dots, and then select **Manage** from the drop-down list.
    
    ![Select Edit DNS](../../media/9d7c269f-48d1-442c-9d7b-63bd384a36a9.png)
  
1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE** > **Continue**.
    
    (You may have to scroll down.)
    
    ![Select Manage Advanced DNS Records](../../media/fd2956d6-eec3-47ea-b60a-266bab14f51f.png)
  
1. On the Manage Advanced DNS Records page, select **+ ADD RECORD**.
    
    ![Select Edit TXT Records](../../media/240a01d6-750a-4da6-8554-641b571e4b71.png)

1. Under **Type**, select **TXT** from the drop-down list.
  
1. In the boxes for the new record, type or copy and paste the values in the following table.
    
    |**Host**|**TXT Value**|**TTL**|
    |:-----|:-----|:-----|
    |@  <br/> (The system will change this value to **@ (None)** when you save the record.)  <br/> |MS=ms *XXXXXXXX*  <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table.  [How do I find this?](../get-help-with-domains/information-for-dns-records.md) |3600  <br/>    |
       
    ![Type or paste values in the boxes for the new record](../../media/8a76daab-b6ff-4c82-ba68-192b24fbb934.png)
  
1. Select **ADD**.
    
    ![Select Continue](../../media/89e7fb38-b4d9-4949-a1bb-d0dd10b361e0.png)
  
> [!NOTE]
> Select **Classic View** in the upper right to view the TXT record you created.   
  
9. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request the record. When Microsoft finds the correct TXT record, your domain is verified.

To verify the record in Microsoft 365:

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>.
    
2. On the Domains page, select the domain that you're verifying. 
    
3. On the **Setup** page, select **Start setup**.
  
4. On the **Verify domain** page, select **Verify**.

> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add an MX record so email for your domain will come to Microsoft

Follow the steps below or [watch the video (start at 3:51)](https://support.microsoft.com/office/c49698c2-6991-47fb-b5ac-18e49a505099).
  
1. To get started, go to your domains page at Network Solutions by using [this link](https://www.networksolutions.com/manage-it). You'll be prompted to log in.
  
1. On the landing page, select **Domain Names**.

1. Select the the check box next to the domain that you want to modify.
    
    ![Select the check box for your domain](../../media/2c13d2ba-4a31-44da-812c-2cc90900a183.png)
  
1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.
    
    ![Select Edit DNS](../../media/9d7c269f-48d1-442c-9d7b-63bd384a36a9.png)
  
1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE** > **Continue**.
    
    (You might have to scroll down.)
    
    ![Select Manage Advanced DNS Records](../../media/fd2956d6-eec3-47ea-b60a-266bab14f51f.png)
  
1. On the Manage Advanced DNS Records page, select **+ ADD RECORD**.
    
    ![Select Edit TXT Records](../../media/240a01d6-750a-4da6-8554-641b571e4b71.png)

1. Under **Type**, select **MX** from the drop-down list.
  
1. In the boxes for the new record, type or copy and paste the values from the following table.
    
    **Refers to** |**Mail server**|**Priority**|**TTL**|
    |:-----|:-----|:-----|:-----|
    | @ | *\<domain-key\>*  .mail.protection.outlook.com  <br/> **This value canNOT end with a period (.)** <br/> **Note:** Get your  *\<domain-key\>*  from your Microsoft account. [How do I find this?](../get-help-with-domains/information-for-dns-records.md) | 0  <br/> For more information about priority, see [What is MX priority?](https://docs.microsoft.com/microsoft-365/admin/setup/domains-faq) <br/> | 1 Hour  <br/> |  
  
1. Select **Continue**.
    
    ![Select Continue](../../media/963f758b-e79d-4452-8340-7eba8a3972c9.png)
  
1. Select **Save Changes**.
    
    ![Select Save Changes](../../media/7c2f784a-6dee-4364-866c-ad7202ef1fc2.png)
  
1. If there are any other MX records, delete all of them by selecting **Delete** for each record. 
    
    ![Select the Delete check box for other MX records](../../media/709d6133-9f5d-490a-a91e-95e21ca94695.png)
  
1. When they are all selected, select **Continue**.
    
    ![Select Continue](../../media/4710f988-0bbc-4ba7-bf31-ca2392b2900e.png)
  
1. Select **Save Changes**.
    
    ![Select Save Changes](../../media/24432ec6-666b-4612-9488-37c06437959b.png)
  
## Add the CNAME record required for Microsoft

Follow the steps below or [watch the video (start at 4:43)](https://support.microsoft.com/office/c49698c2-6991-47fb-b5ac-18e49a505099).
  
1. To get started, go to your domains page at Network Solutions by using [this link](https://www.networksolutions.com/manage-it). You'll be prompted to log in.
  
1. On the landing page, select **Domain Names**.

1. Select the the check box next to the domain that you want to modify.
    
    ![Select the check box for your domain](../../media/2c13d2ba-4a31-44da-812c-2cc90900a183.png)
  
1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.
    
    ![Select Edit DNS](../../media/9d7c269f-48d1-442c-9d7b-63bd384a36a9.png)
  
1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE** > **Continue**.
    
    (You might have to scroll down.)
    
    ![Select Manage Advanced DNS Records](../../media/fd2956d6-eec3-47ea-b60a-266bab14f51f.png)
  
1. On the Manage Advanced DNS Records page, select **+ ADD RECORD**.
    
    ![Select Edit TXT Records](../../media/240a01d6-750a-4da6-8554-641b571e4b71.png)

1. Under **Type**, select **CNAME** from the drop-down list.
  
6. In the boxes for the four new records, type or copy and paste the values from the following table.
    
    | **Type**|**Refers to | Host Name**|**Alias to**| **TTL** |
    |:-----|:-----|:-----|:-----|
    | CNAME |Other Host| autodiscover.outlook.com **This value canNOT end with a period (.)** <br/>| autodiscover  <br/> |3600  <br/> |(No setting)  <br/> |autodiscover.outlook.com.  <br/>  |
    |sip  <br/> |3600  <br/> |(No setting)  <br/> |sipdir.online.lync.com.  <br/> **This value MUST end with a period (.)** <br/> |
    |lyncdiscover  <br/> |3600  <br/> |(No setting)  <br/> |webdir.online.lync.com.  <br/> **This value MUST end with a period (.)** <br/> |
    |enterpriseregistration  <br/> |3600  <br/> |(No setting)  <br/> |enterpriseregistration.windows.net  <br/> **This value MUST end with a period (.)** <br/> |
    |enterpriseenrollment  <br/> |3600  <br/> |(No setting)  <br/> |enterpriseenrollment-s.manage.microsoft.com  <br/> **This value MUST end with a period (.)** <br/> |
    
    ![Type or paste values for the new records](../../media/5ce0b30c-b46c-4778-aa5a-fb5e2f0961c1.png)
  
7. When you have added all of the CNAME records that you need, select **Continue**.
    
    ![Select Continue](../../media/4978bd8b-f6a6-458d-9522-ad612b301c4a.png)
  
8. Select **Save Changes**.
    
    ![Select Save Changes](../../media/f005c38a-0d8d-4c61-bec6-15e60c89aa5a.png)
  
## Add a TXT record for SPF to help prevent email spam

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values. 
  
Follow the steps below or [watch the video (start at 5:35)](https://support.microsoft.com/office/c49698c2-6991-47fb-b5ac-18e49a505099).
  
 To get started, go to your domains page at Network Solutions by using [this link](https://www.networksolutions.com/manage-it). You'll be prompted to log in.
  
1. On the landing page, select **Domain Names**.

1. Select the the check box next to the domain that you want to modify.
    
    ![Select the check box for your domain](../../media/2c13d2ba-4a31-44da-812c-2cc90900a183.png)
  
1. Under **Actions**, select the three dots, and then select **Manage** in the drop-down list.
    
    ![Select Edit DNS](../../media/9d7c269f-48d1-442c-9d7b-63bd384a36a9.png)
  
1. Select **Advanced Tools**, and next to **Advanced DNS Records**, select **MANAGE** > **Continue**.
    
    (You might have to scroll down.)
    
    ![Select Manage Advanced DNS Records](../../media/fd2956d6-eec3-47ea-b60a-266bab14f51f.png)
  
1. On the Manage Advanced DNS Records page, select **+ ADD RECORD**.
    
    ![Select Edit TXT Records](../../media/240a01d6-750a-4da6-8554-641b571e4b71.png)

1. Under **Type**, select **TXT** from the drop-down list.

  
6. In the boxes for the new record, type or copy and paste the following values.
    
    |**Refers to**|**TXT Value**| **TTL**
    |:-----|:-----|:-----|
    |@  <br/> (The system will change this value to **@ (None)** when you save the record.)  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/> **Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct. | 1 Hour  <br/> |
       
    ![Type or paste values for the new record](../../media/11564eca-e2ee-4f17-af2b-a00eb7c157db.png)
  
7. Select **ADD**.
    
    ![Select Continue](../../media/482a8dae-0c79-47c4-8bd8-87965683de24.png)
  
    **Note**: To view the record you just added, you might have to select **Classic View** in the upper right. 
  
## Advanced option: Skype for Business

Only select this option if your organization uses ‎Skype for Business‎ for online communication services like chat, conference calls, and video calls, in addition to ‎Microsoft Teams‎. ‎Skype‎ needs 4 records: 2 SRV records for user-to-user communication, and 2 CNAME records to sign-in and connect users to the service.

### Add the two required SRV records

1. To get started, go to your domains page at 123-reg.co.uk by using [this link](https://www.123-reg.co.uk/secure/cpanel/domain/overview). You'll be prompted to log in first.
    
2. On the **Domain name overview** page, select the name of the domain that you want to edit. 
    
3. Choose **DNS** from the **Select action** drop-down list. 
    
4. On the **Manage your DNS** page, select the **Advanced DNS** tab. 
    
5. In the boxes for the two new records, type or copy and paste the values from the following table.
    
    (Choose the **Service** and **Protocol** values from the drop-down lists.) 
    
    |**Service**|**Protocol**|**TTL**|**Priority**|**Weight**|**Port**|**Target**|
    |:-----|:-----|:-----|:-----|:-----|:-----|:-----|
    |_sip  <br/> |_tls  <br/> |3600  <br/> |100  <br/> |1  <br/> |443  <br/> |sipdir.online.lync.com.  <br/> **This value MUST end with a period (.)** <br/> |
    |_sipfederationtls  <br/> |_tcp  <br/> |3600  <br/> |100  <br/> |1  <br/> |5061  <br/> |sipfed.online.lync.com.  <br/> **This value MUST end with a period (.)** <br/> |
       
    ![Type or paste values for the new records](../../media/86968d1c-8e43-4e61-aeaa-37fc7d7ef7a7.png)
  
6. Select **Add**.
    
    ![Select Add](../../media/5fd9d3a2-a8bb-466b-829f-b3a6e54b5104.png)
  
7. To add the other SRV record:
    
    In the **Advanced DNS** section, create a record by using the values from the second row in the table, and then again select **Add** to complete that record. 
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Find and fix issues after adding your domain or DNS records](../get-help-with-domains/find-and-fix-issues.md). 

### Add the two required CNAME records 
    
1. On the **Manage your DNS** page, select the **Advanced DNS** tab. 
    
1. Add the first CNAME record.
    
    In the **Advanced DNS** section, in the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** value from the drop-down list.) 
    
    |**Type**|**Host**|**Value**|**TTL**|
    |:-----|:-----|:-----|:-----|
    |CNAME  <br/> |sip  <br/> |sipdir.online.lync.com.  <br/> **This value MUST end with a period (.)** <br/> |3600  <br/> |
    |CNAME  <br/> |lyncdiscover  <br/> |webdir.online.lync.com.  <br/> **This value MUST end with a period (.)** <br/> |3600  <br/> |
   
    ![Copy and paste the values from the table](../../media/24bf388c-5f7f-4fc0-b4ec-4b17226b6246.png)
  
1. Select **Add**.
    
    ![Select Add](../../media/825a9854-559d-4a22-90ac-5e7a0a54269a.png)
  
1. Using the preceding three steps and the values from the second row in the table, add the other CNAME record.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Advanced option: Intune and Mobile Device Management for Microsoft 365

This service helps you secure and remotely manage mobile devices that connect to your domain. ‎Mobile Device Management‎ needs 2 CNAME records so that users can enroll devices to the service.

### Add the two required CNAME records

1. To get started, go to your domains page at 123-reg.co.uk by using [this link](https://www.123-reg.co.uk/secure/cpanel/domain/overview). You'll be prompted to log in first.
    
2. On the **Domain name overview** page, select the name of the domain that you want to edit. 
    
3. Choose **DNS** from the **Select action** drop-down list. 
    
4. On the **Manage your DNS** page, select the **Advanced DNS** tab. 
  
7. Add the first CNAME record.
    
    In the **Advanced DNS** section, in the boxes for the new record, type or copy and paste the values from the following table. 
    
    (Choose the **Type** value from the drop-down list.) 
    
    |**Type**|**Host**|**Value**|**TTL**|
    |:-----|:-----|:-----|:-----|
    |CNAME  <br/> |sip  <br/> |sipdir.online.lync.com.  <br/> **This value canNOT end with a period (.)** <br/> |3600  <br/> |
    |CNAME  <br/> |lyncdiscover  <br/> |webdir.online.lync.com.  <br/> **This value canNOT end with a period (.)** <br/> |3600  <br/> |
   
    ![Copy and paste the values from the table](../../media/24bf388c-5f7f-4fc0-b4ec-4b17226b6246.png)
  
1. Select **Add**.
    
    ![Select Add](../../media/825a9854-559d-4a22-90ac-5e7a0a54269a.png)
  
1. Using the preceding three steps and the values from the second row in the table, add the other CNAME record.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md).
  

  
