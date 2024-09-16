---
title: "Troubleshooting Microsoft 365 usage analytics"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 09/24/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: a73632a1-62c8-4a13-8115-913773b30f93
description: "Learn how to troubleshoot issues with the Microsoft 365 Usage Analytics template app."
---

# Troubleshooting Microsoft 365 usage analytics

Explore the following list of error messages to get help with the most common issues with Microsoft 365 usage analytics.
  
    
## We are unable to process your request. You have to first subscribe to this data from the Microsoft 365 admin center

 **Error Code:** 422 
  
 **Where you will see this message:** In Power BI when you're connecting to the Microsoft 365 Usage Analytics template app, or when directly calling the Microsoft 365 Reporting APIs. 
  
 **Cause:** Before you can connect to the app, you have to subscribe to the data from the Microsoft 365 admin center. If this step isn't done first, you cannot connect to the template app, even if you provide your Microsoft 365 tenant ID. 
  
 **To fix this error:** To subscribe to the data, go to the admin center \> **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> and locate the Microsoft 365 usage analytics tile on the main dashboard page. Select the **Get started** button and then in the **Reports** pane that opens, turn the **Make data available to Microsoft 365 usage analytics for Power BI** setting on and **Save**.
  
## We are processing your data

 **Where you will see this message:** In the **Microsoft 365 usage analytics** tile, on the **Usage** dashboard in the Microsoft 365 admin center. 
  
 **Cause:** When you [opt in to seeing data in the template app](enable-usage-analytics.md) from the Microsoft 365 admin center, the Microsoft 365 system starts generating historical usage data for your organization. Depending on the size of your tenant, this step could take anywhere between 2 hours to 48 hours. 
  
 **To fix this:** Just be patient, but if the message doesn't change to **Your data is ready** after 3 days, [contact Microsoft 365 for business support](Get support](../get-help-support.md).
  
## We are unable to process your request at this time. We are still preparing the data for your organization

 **Error Code:** 423 
  
 **Where you will see this message:** In Power BI, when you're connecting to the Microsoft 365 Usage Analytics template app or when directly calling the Microsoft 365 Reporting APIs. 
  
 **Cause:** When you [opt in to seeing data in the template app](enable-usage-analytics.md) from the admin center, the Microsoft 365 system starts generating historical usage data for your organization. Depending on the size of your tenant, this step could take anywhere between two hours to 48 hours. 
  
 **To fix this:** Just be patient, but if the message doesn't change to **Your data is ready** even 3 days since initiation, [contact Microsoft 365 for business support](../../business-video/get-help-support.md).
  
## The tenant ID you provided is not in the correct format

 **Error Code:** 400 
  
 **Where you will see this message:** In Power BI, when you're connecting to the Microsoft 365 Usage Analytics template app or when directly calling the Microsoft 365 Reporting APIs. 
  
 **Cause:** The tenant ID is a guid and has to be in the format of xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx. If you enter any other string in the tenant input box, you get this error. 
  
 **To fix this error:** Go to the admin center \> **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> and locate the Microsoft 365 usage analytics tile on the main dashboard page. The tenant ID is listed on the tile. You can copy it from here and paste it in the dialog box for connecting to the template app. 
  
## The tenant ID you provided is not recognized by our system

 **Error Code:** 404 
  
 **Where you will see this message:** In Power BI when you're connecting to the Microsoft 365 Usage Analytics template app or when directly calling the Microsoft 365 Reporting APIs. 
  
 **Cause:** The tenant ID you provided isn't valid or doesn't exist. 
  
 **To fix this error:** Go to the admin center \> **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> and locate the Microsoft 365 usage analytics tile on the main dashboard page. The tenant ID is listed on the tile. You can copy it from here and paste it in the dialog box for connecting to the template app. 
  
## Please re-enter your credentials to sign in to Power BI again

Error Code: 302
  
 **Where you will see this message:** In Power BI when you're connecting to the Microsoft 365 Usage Analytics template app or when directly calling the Microsoft 365 Reporting APIs. 
  
 **Cause:** The authorization code failed and can require you to enter your credentials again. 
  
 **To fix this error:** Sign out of Power BI, and then sign in again. 
  
## You do not have the right authorization to access to this data. To be able to gain access to the data from this service you need to be either a global admin or any one of the product admins

 **Error Code:** 403 
  
 **Where you will see this message:** In Power BI when you're connecting to the Microsoft 365 Usage Analytics template app or when directly calling the Microsoft 365 Reporting APIs. 
  
 **Cause:** The authorization code failed because the user who tried connecting to the template app doesn't have the right level of authorization to access this data. 
  
 **To fix this error:** Provide the credentials of a user who is either an **Exchange admin**, **Skype for Business admin**, **SharePoint admin**, **Global reader**, or **Report reader** to connect to the template app. See [About admin roles](../add-users/about-admin-roles.md) for more information. 
  
## Refresh failed

 **Where you will see this message:** Email from Power BI or failed status in the refresh history. 
  
 **Cause:** Sometimes the credentials of the user who connected to the template app are reset, and not updated in the connection settings of the template app causing the user to see refresh failure errors. 
  
 **To fix this error:** In Power BI, find the dataset corresponding to the Microsoft 365 Usage Analytics template app, select **schedule refresh** and provide your admin credentials. 
  
If that doesn't work, clear the cache, and re-create the template app.
  
  
