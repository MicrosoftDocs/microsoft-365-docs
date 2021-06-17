---
title: "Update DNS records to keep your website with your current hosting provider"
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
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
- GEA150
ms.assetid: 2c4cf347-b897-45c1-a71f-210bdc8f1061
description: "Learn how to route traffic to an existing public website hosted outside of Microsoft, if you have set Microsoft to manage DNS records for your custom domain."
---

# Update DNS records to keep your website with your current hosting provider

 **If you manage your domain's Microsoft records at your DNS hosting provider**, you don't have to worry about the steps in this topic. Your website stays where it is and people can still get to it. 
  
 **If Microsoft manages your DNS records**, to route traffic to an existing public website hosted outside of Microsoft, after you add your domain to Microsoft, do the following: 
  
## Update DNS records in the Microsoft 365 admin center
1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

1. On the **Domains** page, select the domain and then choose **DNS Records**.

1. Select **+ Add record** and enter the following: 
    
   - For **type** enter: **A (Address)**
    
   - For **Host name or Alias**, type the following: **@**
    
   - For **IP Address**, type the static IP address for your website where it's currently hosted (for example, 172.16.140.1). 
    
   This must be a  *static*  IP address for the website, not a  *dynamic*  IP address. Check with site where your website is hosted to make sure you can get a static IP address for your public website. 
    
1. Select **Save**. 
    
In addition, you can create a CNAME record to help customers find your website.
  
1. Select **+ Add record** and enter the following: 
    
   - For **type** enter: **CNAME (Alias)**
    
   - For **Host name or Alias**, type the following: **www**
    
   - For **Points to address**, type the fully qualified domain name (FQDN) for your website (for example, contoso.com). 
    
2. Select **Save**. 
    
Finally, do the following:
  
[Update your domain's NS records](../get-help-with-domains/set-up-your-domain-host-specific-instructions.md) to point to Microsoft. 
  
When the NS records have been updated to point to Microsoft, your domain is all set up. Email will be routed to Microsoft, and traffic to your website address will continue to go to your current website host.
