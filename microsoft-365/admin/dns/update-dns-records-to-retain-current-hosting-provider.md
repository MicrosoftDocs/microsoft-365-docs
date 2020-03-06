---
title: "Update DNS records to keep your website with your current hosting provider"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: mnirkhe
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
search.appverid:
- BCS160
- MET150
- MOE150
- GEA150
ms.assetid: 2c4cf347-b897-45c1-a71f-210bdc8f1061
description: "Learn how to route traffic to an existing public website hosted outside of Office 365, if you have set Office 365 to manage DNS records for your custom domain."
---

# Update DNS records to keep your website with your current hosting provider

 **If you manage your domain's Office 365 records at your DNS hosting provider**, you don't have to worry about the steps in this topic. Your website stays where it is and people can still get to it. 
  
 **If Office 365 manages your DNS records**, to route traffic to an existing public website hosted outside of Office 365, after you add your domain to Office 365, do the following: 
  
## Update DNS records in the Microsoft 365 admin center
1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

2. On the **Domains** page, in the list of domains, select the domain you're using for your website, and then select **DNS settings** in the management pane. 
    
3. Select **+ New custom record** and enter the following: 
    
  - For **DNS type** enter: **A (Address)**
    
  - For **Host name or Alias**, type the following: **@**
    
  - For **IP Address**, type the static IP address for your website where it's currently hosted (for example, 172.16.140.1). 
    
    This must be a  *static*  IP address for the website, not a  *dynamic*  IP address. Check with site where your website is hosted to make sure you can get a static IP address for your public website. 
    
3. Select **Save**. 
    
In addition, you can create a CNAME record to help customers find your website.
  
1. Select **+ New custom record** and enter the following: 
    
  - For **DNS type** enter: **CNAME (Alias)**
    
  - For **Host name or Alias**, type the following: **www**
    
  - For **Points to address**, type the fully qualified domain name (FQDN) for your website (for example, contoso.com). 
    
2. Select **Save**. 
    
Finally, do the following:
  
[Update your domain's NS records](https://support.office.com/article/a46bec33-2c78-4f45-a96c-b64b2a5bae22.aspx) to point to Office 365. 
  
When the NS records have been updated to point to Office 365, your domain is all set up. Email will be routed to Office 365, and traffic to your website address will continue to go to your current website host.
 
