---
title: "Create DNS records when your domain is managed by Google (eNom)"
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
ms.assetid: 3c490fbf-7833-4e43-be34-ed0dc3cce5e3
description: "Learn to access eNom and create DNS through the Google Domains page."
---

# Create DNS records when your domain is managed by Google (eNom)

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 
  
To migrate your mail accounts to Microsoft, you need to create a DNS record at your domain registrar.
  
If you purchased your domain through Google while signing up for your **Google Apps for Work** account, your DNS records are managed by Google but registered with eNom. 
  
You can access eNom, and create DNS, through the Google **Domains** page. Just follow the steps in this article. 
  
## Create the DNS record

1. At the [Google Admin console](https://www.google.com/work/apps/business), select **Sign In**.
    
    ![Google-Apps-Configure-1-1-0](../../media/37a6e9f6-319e-4c02-aa18-d8d06df7953d.png)
  
2. Enter your domain name, and then select **Go**.
    
    ![Google-Apps-Configure-1-1-1](../../media/2caf8dcb-4d40-4cfa-bc40-d634e454e699.png)
  
3. At the bottom of the page, select **More controls**.
    
    ![Google-Apps-Configure-1-2-0](../../media/1518ff78-035b-423e-85a3-c16d7faa0968.png)
  
4. Select **Domains**.
    
    ![Google-Apps-Configure-1-2-1](../../media/c2972c06-9bca-43bd-9876-2cee63043bf1.png)
  
5. On the **Domains** page, select **Add/remove domains**.
    
    ![Google-Apps-Configure-1-2-2](../../media/07b8068f-9a05-40aa-a041-fc495c729a18.png)
  
6. On the **Domains** page, select **Advanced DNS settings**.
    
    > [!NOTE]
    > If you didn't purchase a domain name through Google while signing up for your **Google Apps for Work** account, you won't have **Advanced DNS settings** on your **Domains** page. Instead, you must go directly to your domain host's web site to access your DNS settings and to perform this and the following steps. See [Access your G Suite domain settings](https://support.google.com/a/answer/54693?hl=en) for more information. 
  
    ![Google-Apps-eNom-Configure-1-3](../../media/b244b29c-e479-40be-b380-4ffa0f74b421.png)
  
7. On the **Advanced DNS settings** page, select **Sign in to DNS Console**. Note the **Sign-in name** and **Password** information. You'll need it in the next step. 
    
    ![Google-Apps-eNom-Configure-1-4](../../media/056a2767-462f-4847-acee-d01e3f773add.png)
  
8. Log in to the Google **Domain Manager** using the **Sign-in name** and **Password** from the **Advanced DNS settings** page. 
    
    ![Google-Apps-eNom-Configure-1-5](../../media/08b74652-8cdb-4560-a5fd-0899f86deee8.png)
  
9. On the ***domain_name*** page, in the **Host Records** section, select **Edit**.
    
    ![Google-Apps-eNom-Configure-1-6](../../media/d54fec18-b9d1-4796-8397-0393c964eade.png)
  
10. In the **Host Records** section, select **Add New**.
    
    ![Google-Apps-eNom-Configure-1-7](../../media/3562806a-4328-4e60-a717-0566841204cf.png)
  
11. In the boxes for the new record, type or copy and paste the values from the following table.
    
    |**HOST**|**TXT VALUE**|**RECORD TYPE**|
    |:-----|:-----|:-----|
    |@  <br/> ||TXT  <br/> |

    > [!NOTE]
    > This is an example. Use your specific **Destination or Points to Address** value here, from the table. 
  
    [How do I find this?](../get-help-with-domains/information-for-dns-records.md)
  
12. Select **Save**.
    
    ![Google-Apps-eNom-Configure-1-9](../../media/7a6f7b45-8f79-487b-afe4-05949c2c04e8.png)
  
13. Select **Save Changes**.
    
    ![Google-Apps-Configure-1-11](../../media/7f321236-33fb-4a7d-9d03-26605e9e558c.png)
  
> [!NOTE]
>  Typically it takes about 15 minutes for DNS changes to take effect. However, it can occasionally take longer for a change you've made to update across the Internet's DNS system. If you're having trouble with mail flow or other issues after adding DNS records, see [Troubleshoot issues after changing your domain name or DNS records](../get-help-with-domains/find-and-fix-issues.md). 
  
