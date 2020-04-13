---
title: "Create DNS records at Hover for Microsoft"
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
ms.assetid: 46ab4b10-6857-44b1-b08d-d1b5f45a69c6
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at Hover for Microsoft."
---

# Create DNS records at Hover for Microsoft

 **[Check the Domains FAQ](../setup/domains-faq.md)** if you don't find what you're looking for. 
  
If Hover is your DNS hosting provider, follow the steps in this article to verify your domain and set up DNS records for email, Skype for Business Online, and so on.
     
After you add these records at Hover, your domain will be set up to work with Microsoft services.
  
To learn about webhosting and DNS for websites with Microsoft, see [Use a public website with Microsoft](https://support.office.com/article/choose-a-public-website-3325d50e-d131-403c-a278-7f3296fe33a9).
  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add a TXT record for verification
<a name="BKMK_verify"> </a>

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 
  
Follow the steps below or [watch the video](https://support.office.com/article/Video-Create-DNS-records-at-Hover-for-Office-365-182bd58e-8fe4-4717-9233-3a3546b72ad2?ui=en-US&amp;rs=en-US&amp;ad=US).
  
1. To get started, go to your domains page at Hover by using [this link](https://www.hover.com/domains). You'll be prompted to sign in.
    
    ![Sign in](../../media/f608cfaa-4962-46a1-a469-89010494e4be.png)
  
2. Under **Manage Your Domains**, select the name of the domain that you want to edit.
    
    ![Select a domain](../../media/ae7c1c46-7ad5-467a-b41c-077c90018989.png)
  
3. Select the **DNS** tab. 
    
    ![Select the DNS tab](../../media/bd727fb4-0b06-426d-9387-42a160aead42.png)
  
4. Select **Add New**.
    
    ![Select Add New](../../media/66d6b2c9-741e-40e0-a096-6e7e204d655d.png)
  
5. In the boxes for the new record, select **TXT** for the **Record Type**, and then type or copy and paste the values from the following table.
    
    ||||
    |:-----|:-----|:-----|
    |Hostname  <br/> |Record Type  <br/> |Value  <br/> |
    |@  <br/> |TXT  <br/> |MS=ms *XXXXXXXX*  <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table.           [How do I find this?](../get-help-with-domains/information-for-dns-records.md)          |
   
    ![Type or copy and paste DNS values](../../media/3b0d19f9-4138-47a7-aab2-137ad120ded6.png)
  
6. Select **Save**.
    
    ![Select Save](../../media/07dcf68e-34be-47dc-999e-0216de68cc9c.png)
  
7. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
Now that you've added the record at your domain registrar's site, you'll go back to Microsoft 365 and request Microsoft 365 to look for the record.
  
When Microsoft finds the correct TXT record, your domain is verified.
  
1. In the Microsoft admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.
    
2. On the **Domains** page, select the domain that you are verifying. 
    
    
  
3. On the **Setup** page, select **Start setup**.
    
    
  
4. On the **Verify domain** page, select **Verify**.
    
    
  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add an MX record so email for your domain will come to Microsoft
<a name="BKMK_add_MX"> </a>

Follow the steps below or [watch the video](https://support.office.com/article/Video-Create-DNS-records-at-Hover-for-Office-365-182bd58e-8fe4-4717-9233-3a3546b72ad2?ui=en-US&amp;rs=en-US&amp;ad=US).
  
1. To get started, go to your domains page at Hover by using [this link](https://www.hover.com/domains). You'll be prompted to sign in.
    
    ![Sign in](../../media/f608cfaa-4962-46a1-a469-89010494e4be.png)
  
2. Under **Manage Your Domains**, select the name of the domain that you want to edit.
    
    ![Select a domain](../../media/ae7c1c46-7ad5-467a-b41c-077c90018989.png)
  
3. Select the **DNS** tab. 
    
    ![Select the DNS tab](../../media/bd727fb4-0b06-426d-9387-42a160aead42.png)
  
4. Select **Add New**.
    
    ![Select Add New](../../media/66d6b2c9-741e-40e0-a096-6e7e204d655d.png)
  
5. In the boxes for the new record, select **MX** for the **Record Type**, and then type or copy and paste the values from the following table.
    
    |**Hostname**|**Record Type**|**Priority**|**Hostname**|
    |:-----|:-----|:-----|:-----|
    |@  <br/> |MX  <br/> |0  <br/> For more information about priority, see [What is MX priority?](https://support.office.com/article/2784cc4d-95be-443d-b5f7-bb5dd867ba83.aspx) <br/> | *\<domain-key\>*  .mail.protection.outlook.com  <br/> **Note:** Get your  *\<domain-key\>*  from your Microsoft account.           [How do I find this?](../get-help-with-domains/information-for-dns-records.md)          |
   
    ![Type or copy and paste DNS values](../../media/2c8915fa-04a8-4d2a-a8ae-a79de0c8ef99.png)
  
6. Select **Save**.
    
    ![Select Save](../../media/266c30a4-6703-48fb-a919-b510ed966193.png)
  
7. If there are any other MX records, use the following two-step process to remove each of them:
    
    First, mousing over a record that you want to remove, select **Delete**.
    
    ![Mouse over and select Delete](../../media/2ddf4902-8cd2-4969-a418-2cb592741e86.png)
  
    Second, select **Yes** to confirm each deletion. 
    
    ![Select Yes to confirm deletion](../../media/48756bd5-0205-4c4d-9803-9246795dbf4a.png)
  
    Repeat this process until you have deleted all MX records except for the one that you added earlier in this procedure.
    
## Add the CNAME records that are required for Microsoft
<a name="BKMK_add_CNAME"> </a>

Follow the steps below or [watch the video](https://support.office.com/article/Video-Create-DNS-records-at-Hover-for-Office-365-182bd58e-8fe4-4717-9233-3a3546b72ad2?ui=en-US&amp;rs=en-US&amp;ad=US).
  
1. To get started, go to your domains page at Hover by using [this link](https://www.hover.com/domains). You'll be prompted to sign in.
    
    ![Sign in](../../media/f608cfaa-4962-46a1-a469-89010494e4be.png)
  
2. Under **Manage Your Domains**, select the name of the domain that you want to edit.
    
    ![Select a domain](../../media/ae7c1c46-7ad5-467a-b41c-077c90018989.png)
  
3. Select the **DNS** tab. 
    
    ![Select the DNS tab](../../media/bd727fb4-0b06-426d-9387-42a160aead42.png)
  
4. Add the first of the six CNAME records.
    
    Select **Add New**.
    
    ![Select Add New](../../media/66d6b2c9-741e-40e0-a096-6e7e204d655d.png)
  
5. In the empty boxes for the new record, select **CNAME** for the **Record Type**, and then type or copy and paste the values from the first row in the following table.
    
    |**Hostname**|**Record Type**|**Target Host**|
    |:-----|:-----|:-----|
    |autodiscover  <br/> |CNAME  <br/> |autodiscover.outlook.com  <br/> |
    |sip  <br/> |CNAME  <br/> |sipdir.online.lync.com  <br/> |
    |lyncdiscover  <br/> |CNAME  <br/> |webdir.online.lync.com  <br/> |
    |enterpriseregistration  <br/> |CNAME  <br/> |enterpriseregistration.windows.net  <br/> |
    |enterpriseenrollment  <br/> |CNAME  <br/> |enterpriseenrollment-s.manage.microsoft.com  <br/> |
   
    ![Type or copy and paste DNS values](../../media/6ae607f8-d26e-47f0-a0f2-3487d37e8c7f.png)
  
6. Select **Save**.
    
    ![Select Save](../../media/69aa3546-32de-4c17-a2e2-8c0cd133efaa.png)
  
7. Using the preceding three steps and the values from the other five rows in the table, add each of the other five CNAME records.
    
## Add a TXT record for SPF to help prevent email spam
<a name="BKMK_add_TXT"> </a>

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values. 
  
Follow the steps below or [watch the video](https://support.office.com/article/Video-Create-DNS-records-at-Hover-for-Office-365-182bd58e-8fe4-4717-9233-3a3546b72ad2?ui=en-US&amp;rs=en-US&amp;ad=US).
  
1. To get started, go to your domains page at Hover by using [this link](https://www.hover.com/domains). You'll be prompted to sign in.
    
    ![Sign in](../../media/f608cfaa-4962-46a1-a469-89010494e4be.png)
  
2. Under **Manage Your Domains**, select the name of the domain that you want to edit.
    
    ![Select a domain](../../media/ae7c1c46-7ad5-467a-b41c-077c90018989.png)
  
3. Select the **DNS** tab. 
    
    ![Select the DNS tab](../../media/bd727fb4-0b06-426d-9387-42a160aead42.png)
  
4. Select **Add New**.
    
    ![Select Add New](../../media/66d6b2c9-741e-40e0-a096-6e7e204d655d.png)
  
5. In the boxes for the new record, select **TXT** for the **Record Type**, and then type or copy and paste the values from the following table.
    
    |**Hostname**|**Record Type**|**Value**|
    |:-----|:-----|:-----|
    |@  <br/> |TXT  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/>**Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.           |
   
    ![Type or copy and paste DNS values](../../media/ed36b9e0-aaa9-45fb-804d-7d4e82ba0c7f.png)
  
6. Select **Save**.
    
    ![Select Save](../../media/13a395b9-e0e8-4393-b568-5f99b2da39da.png)
  
## Add the two SRV records that are required for Microsoft
<a name="BKMK_add_SRV"> </a>

Follow the steps below or [watch the video](https://support.office.com/article/Video-Create-DNS-records-at-Hover-for-Office-365-182bd58e-8fe4-4717-9233-3a3546b72ad2?ui=en-US&amp;rs=en-US&amp;ad=US).
  
1. To get started, go to your domains page at Hover by using [this link](https://www.hover.com/domains). You'll be prompted to sign in.
    
    ![Sign in](../../media/f608cfaa-4962-46a1-a469-89010494e4be.png)
  
2. Under **Manage Your Domains**, select the name of the domain that you want to edit.
    
    ![Select a domain](../../media/ae7c1c46-7ad5-467a-b41c-077c90018989.png)
  
3. Select the **DNS** tab. 
    
    ![Select the DNS tab](../../media/bd727fb4-0b06-426d-9387-42a160aead42.png)
  
4. Add the first of the two SRV records.
    
    Select **Add New**.
    
    ![Select Add New](../../media/66d6b2c9-741e-40e0-a096-6e7e204d655d.png)
  
5. In the empty boxes for the new record, select **SRV** for the **Record Type**, and then type or copy and paste the values from the first row in the following table.
    
    |**Hostname**|**Record Type**|**Priority**|**Weight**|**Port**|**Target**|
    |:-----|:-----|:-----|:-----|:-----|:-----|
    |_sip._tls  <br/> |SRV  <br/> |100  <br/> |1  <br/> |443  <br/> |sipdir.online.lync.com  <br/> |
    |_sipfederationtls._tcp  <br/> |SRV  <br/> |100  <br/> |1  <br/> |5061  <br/> |sipfed.online.lync.com  <br/> |
   
    ![Type or copy and paste DNS values](../../media/67562cd6-c598-4c37-af53-626f153c0197.png)
  
6. Select **Save**.
    
    ![Select Save](../../media/0d7ec216-9277-4709-b637-e94c8662730f.png)
  
7. Using the preceding three steps and the values from the second row in the table, add the other SRV record.
    
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
