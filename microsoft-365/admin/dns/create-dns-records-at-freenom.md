---
title: "Create DNS records at Freenom for Microsoft"
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
ms.assetid: d8ff45a2-19e3-413d-aa64-a9982bd6633c
description: "Learn to verify your domain and set up DNS records for email, Skype for Business Online, and other services at Freenom for Microsoft."
---

# Create DNS records at Freenom for Microsoft

[Check the Domains FAQ ](../setup/domains-faq.md) if you don't find what you're looking for. 
  
> [!CAUTION]
> The Freenom website doesn't support SRV records, which means that several Skype for Business Online and Outlook Web App features won't work. No matter which Microsoft plan you use, there are significant service limitations, and you may want to switch to a different DNS hosting provider. 
  
If despite the service limitations, you choose to manage your own Microsoft DNS records at Freenom, follow the steps in this article to verify your domain and set up DNS records for email and other services.
  
  
> [!NOTE]
> Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add a TXT record for verification
<a name="bkmk_txt"> </a>

Before you use your domain with Microsoft, we have to make sure that you own it. Your ability to log in to your account at your domain registrar and create the DNS record proves to Microsoft that you own the domain.
  
> [!NOTE]
> This record is used only to verify that you own your domain; it doesn't affect anything else. You can delete it later, if you like. 
  
1. To get started, go to your domains page in Freenom by using [this link](https://my.freenom.com/). You'll be prompted to log in.
    
    ![Freenom login](../../media/90a32855-bfdd-4dfe-881c-b9a36b2f0582.png)
  
2. Select **Services**, and then select **My Domains**.
    
    ![Freenom select Services and My Domains](../../media/1917ced2-e254-4aec-9096-46d339b84d9a.png)
  
3. For the domain that you want to edit, select **Manage Domain**.
    
    ![Freenom select Manage Domain](../../media/67737b71-8b1b-42a6-abaf-62d776d3eb87.png)
  
4. Select **Manage Freenom DNS**.
    
    ![Freenom Manage Freenom DNS](../../media/9854a511-27e3-4658-8903-34b3d425096d.png)
  
5. Under **Add Record**, in the **Type** column, choose **TXT** from the menu. 
    
    ![Freenom Add Record type TXT](../../media/7f0e85e7-844f-4962-815e-5d80d9e6efa0.png)
  
6. In the boxes for the new record, type or copy and paste the values from the following table. 
    
    |**Name**|**Type**|**TTL**|**Target**|
    |:-----|:-----|:-----|:-----|
    |(leave blank)  <br/> |TXT  <br/> |3600 (seconds)  <br/> |MS=msXXXXXXXX  <br/> **Note:** This is an example. Use your specific **Destination or Points to Address** value here, from the table.           [How do I find this?](../get-help-with-domains/information-for-dns-records.md)          |
   
    ![Freenom TXT values for verification](../../media/650098df-b3aa-47e5-9763-7fde24e34c3f.png)
  
7. Select **Save Changes**.
    
    ![Freenom TXT record Save Changes](../../media/b1a63f9a-4578-491a-9554-c40f73b37e09.png)
  
8. Wait a few minutes before you continue, so that the record you just created can update across the Internet.
    
Now that you've added the record at your domain registrar's site, you'll go back to Microsoft and request the record.
  
When Microsoft finds the correct TXT record, your domain is verified.
  
1. In the Microsoft admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

    
2. On the **Domains** page, select the domain that you are verifying. 
    
    
  
3. On the **Setup** page, select **Start setup**.
    
    
  
4. On the **Verify domain** page, select **Verify**.
    
    
  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
## Add an MX record so email for your domain will come to Microsoft
<a name="bkmk_mx"> </a>

1. To get started, go to your domains page in Freenom by using [this link](https://my.freenom.com/). You'll be prompted to log in.
    
    ![Freenom login](../../media/90a32855-bfdd-4dfe-881c-b9a36b2f0582.png)
  
2. Select **Services**, and then select **My Domains**.
    
    ![Freenom select Services and My Domains](../../media/1917ced2-e254-4aec-9096-46d339b84d9a.png)
  
3. For the domain that you want to edit, select **Manage Domain**.
    
    ![Freenom select Manage Domain](../../media/67737b71-8b1b-42a6-abaf-62d776d3eb87.png)
  
4. Set the name serves for your domain to the default Freenom name servers. Select **Management Tools**, and then select **Nameservers**.
    
    ![Freenom Nameservers setting](../../media/a6ae877a-c248-42b9-bae9-210a80cd01e7.png)
  
5. Make sure **Use default nameservers** is selected, and then select **Change Nameservers**.
    
    ![Freenom Change Nameservers](../../media/0ef90d84-c0a0-4ef9-9e4c-43ef0aac3a2e.png)
  
6. Select **Manage Freenom DNS**.
    
    ![Freenom select Manage Freenom DNS](../../media/f55a8053-2411-45da-a357-776c6699f721.png)
  
7. Under **Add Record**, in the **Type** column, choose **MX** from the menu. 
    
    ![Freenom Add Record type MX](../../media/c728c6ee-786c-4f6a-8ad5-1d9914a5bfcf.png)
  
8. In the boxes for the new record, type or copy and paste the values from the first row of the following table. 
    
    |**Name**|**Type**|**TTL**|**Target**|**Priority**|
    |:-----|:-----|:-----|:-----|:-----|
    |(leave blank)  <br/> |MX (Mail Exchanger)  <br/> |3600 (seconds)  <br/> |\<domain-key\>.mail.protection.outlook.com  <br/> **Note:** Get your  *\<domain-key\>*  from your Microsoft account.   [How do I find this?](../get-help-with-domains/information-for-dns-records.md)          |10  <br/> For more information about priority, see [What is MX priority?](https://docs.microsoft.com/microsoft-365/admin/setup/domains-faq) <br/> |
   
   ![Freenom MX record](../../media/8896c4a9-b3dd-45ed-9916-f7da2715ba8c.png)
  
9. Select **Save Changes**.
    
    ![Freenom MX record Save Changes](../../media/7aa0a464-d136-417f-be40-48d3f728eeb7.png)
  
10. If there are any other MX records, delete them all. For each record, select **Delete**. When the message **Do you really want to remove this entry?** appears, select **OK**.
    
## Add the CNAME records that are required for Microsoft
<a name="bkmk_cname"> </a>

1. To get started, go to your domains page in Freenom by using [this link](https://my.freenom.com/). You'll be prompted to log in.
    
    ![Freenom login](../../media/90a32855-bfdd-4dfe-881c-b9a36b2f0582.png)
  
2. Select **Services**, and then select **My Domains**.
    
    ![Freenom select Services and My Domains](../../media/1917ced2-e254-4aec-9096-46d339b84d9a.png)
  
3. For the domain that you want to edit, select **Manage Domain**.
    
    ![Freenom select Manage Domain](../../media/67737b71-8b1b-42a6-abaf-62d776d3eb87.png)
  
4. Select **Manage Freenom DNS**.
    
    ![Freenom select Manage Freenom DNS](../../media/5e7bc3a7-0d5e-431b-bb27-da3b0f316d01.png)
  
5. Under **Add Record**, in the **Type** column, choose **CNAME** from the menu. 
    
    ![Freenom Add Record type CNAME](../../media/9b204755-ca2a-46d2-bce2-030d82fd1f9e.png)
  
6. Create the first CNAME record. In the boxes for the new record, type or copy and paste the values from the first row of the following table. 
    
    |**Name**|**Record type**|**TTL**|**Target**|
    |:-----|:-----|:-----|:-----|
    |autodiscover  <br/> |CNAME  <br/> |3600 (seconds)  <br/> |autodiscover.outlook.com  <br/> |
    |sip  <br/> |CNAME  <br/> |3600 (seconds)  <br/> |sipdir.online.lync.com  <br/> |
    |lyncdiscover  <br/> |CNAME  <br/> |3600 (seconds)  <br/> |webdir.online.lync.com  <br/> |
    |enterpriseregistration  <br/> |CNAME  <br/> |3600 (seconds)  <br/> |enterpriseregistration.windows.net  <br/> |
    |enterpriseenrollment  <br/> |CNAME  <br/> |3600 (seconds)  <br/> |enterpriseenrollment-s.manage.microsoft.com  <br/> |
   
    ![Freenom CNAME values](../../media/752fc682-e3f2-4b9c-9253-bf1ba2d414e9.png)
  
7. Select **Save Changes**.
    
    ![Freenom CNAME Save Changes](../../media/68103fd2-0f5f-4aac-a875-25157c6bbdd2.png)
  
8. Repeat the previous steps to create the other five CNAME records. 
    
    For each record, type or copy and paste the values from the next row of the table above into the boxes for that record.
    
## Add a TXT record for SPF to help prevent email spam
<a name="bkmk_spf"> </a>

> [!IMPORTANT]
> You cannot have more than one TXT record for SPF for a domain. If your domain has more than one SPF record, you'll get email errors, as well as delivery and spam classification issues. If you already have an SPF record for your domain, don't create a new one for Microsoft. Instead, add the required Microsoft values to the current record so that you have a  *single*  SPF record that includes both sets of values. 

1. To get started, go to your domains page in Freenom by using [this link](https://my.freenom.com/). You'll be prompted to log in.
    
    ![Freenom login](../../media/90a32855-bfdd-4dfe-881c-b9a36b2f0582.png)
  
2. Select **Services**, and then select **My Domains**.
    
    ![Freenom select Services and My Domains](../../media/1917ced2-e254-4aec-9096-46d339b84d9a.png)
  
3. For the domain that you want to edit, select **Manage Domain**.
    
    ![Freenom select Manage Domain](../../media/67737b71-8b1b-42a6-abaf-62d776d3eb87.png)
  
4. Select **Manage Freenom DNS**.
    
    ![Freenom select Manage Freenom DNS](../../media/94809955-0315-409c-a15d-703a2fe4c4ed.png)
  
5. Under **Add Record**, in the **Type** column, choose **TXT** from the menu. 
    
    ![Freenom Add Record type TXT](../../media/d8854285-c4ae-416c-a072-72a11ba1cd9a.png)
  
6. In the boxes for the new record, type or copy and paste the following values. 
    
    |**Name**|**Record type**|**TTL**|**Target**|
    |:-----|:-----|:-----|:-----|
    |(leave blank)  <br/> |TXT  <br/> |3600 (seconds)  <br/> |v=spf1 include:spf.protection.outlook.com -all  <br/>**Note:** We recommend copying and pasting this entry, so that all of the spacing stays correct.           |
   
    ![Freenom TXT values for SPF](../../media/1b3b1199-9104-4ca1-acdb-786d139c21ac.png)
  
7. Select **Save Changes**.
    
    ![Freenom TXT record for SPF Save Changes](../../media/e2fc52b1-0dcb-4595-9a4c-fca5e2ef9f97.png)
  

