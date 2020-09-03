---
title: Apps in Microsoft Managed Desktop 
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Apps in Microsoft Managed Desktop

<!--This topic is the target for 2 "Learn more" links in the Admin Portal (aka.ms/app-overview;app-package); also target for link from Online resources (aka.ms/app-overviewmmd-app-prep) do not delete.-->

<!--Applications: supported/onboard/deployment -->
 
## Apps generally

Microsoft includes certain key apps along with the Microsoft 365 E3 or E5 license needed to participate in Microsoft Managed Desktop. However, even though we provide these apps, you still have certain responsibilities and actions to complete.

You can also deploy additional non-Microsoft apps to your users for self-service through the Company Portal or a required background installation, all using Microsoft Intune’s deployment pipeline. If you have the expertise, you can migrate those apps you need yourself; alternatively, Microsoft Consulting Services (MCS) or non-Microsoft vendors will be happy to help you with a packaging and migration project. For more information about working with MCS, see [Working with Microsoft Consulting Services](apps-MCS.md).


## Apps provided by Microsoft

Included with your Microsoft Managed Desktop license are 64-bit versions of the apps in the Microsoft 365 Apps for enterprise Standard Suite (Word, Excel, PowerPoint, Outlook, Publisher, Access, Skype for Business, and OneNote.) Click-to-Run versions of Microsoft Project and Visio are *not* included by default, but you can request them to be added. For more information about these apps, see [Install Microsoft Project or Microsoft Visio on Microsoft Managed Desktop devices](../get-started/project-visio.md).

### What Microsoft does to support the apps we provide

Microsoft will provide full service for the deployment, update, and support for the included Microsoft 365 Apps for enterprise apps. Click-to-Run versions of Microsoft Project and Visio are *not* included by default, but Microsoft Managed Desktop will provide deployment groups allowing your IT administrator to manage licenses and deploy these applications appropriately for your organization. Microsoft will support users of these applications through the Microsoft Managed Desktop support channels.

### What you need to do to support the apps we provide

There are still certain things you need to do with these apps:

- **Assign licenses** - You are responsible for obtaining and assigning the appropriate licenses to users for Microsoft 365 Apps for enterprise.
- **Add users to security groups** - If you're using Microsoft Project or Visio, your IT administrator must add those users to the appropriate deployment groups. IT administrators are also responsible for reclaiming licenses from those users if they leave the company.
- **Deploy Microsoft 365 Add-ons** - If you need any Add-ons for any of the Microsoft 365 Apps for enterprise apps, deploy them centrally like any other Windows 32 app. 

## Apps you provide

Of course, you probably have a number of other apps you need for your business operations. These can only be deployed to Microsoft Managed Desktop devices by using Microsoft Intune’s deployment pipeline. If the app needs it you can have them packaged by a vendor (which could be a non-Microsoft vendor or Microsoft Consulting Services (MCS)) or if you have the means, you can package them yourself. You then add these packages to the Microsoft Managed Desktop portal and assign them to Azure Active Directory groups to trigger the deployment. 

If you currently deploy your apps by using Microsoft Endpoint Configuration Manager, Microsoft Managed Desktop can provide you with a query to assess your apps and discover which ones are ready for to migrate to Microsoft Intune and which ones might require some adjustment.


### Preparing your own apps for inclusion in Microsoft Managed Desktop
Review your apps, checking:

- None of the apps are prohibited or have restricted behavior, as described in [Microsoft Managed Desktop app requirements](https://aka.ms/app-req).
- Apps must be ready for management by Microsoft Intune. For more about this, see [Windows 10 app deployment using Microsoft Intune](https://docs.microsoft.com/intune/apps-windows-10-app-deploy) and [Add apps to Microsoft Intune](https://docs.microsoft.com/intune/apps-add).
- Other pre-packaging requirements such as providing license keys, agreement with license terms, and pre-setting server connections.

### Decide how to package apps

Some independent software vendors might require that your apps are packaged before they are centrally deployed. “Packaging” means that the app’s installer is configured with settings like license keys, remote server locations, or desktop shortcuts so that the app can be installed in the background.

There are three options to get your apps packaged: 


- You can package apps yourself
- You can work with a non-Microsoft vendor
- You can engage with MCS to package your apps. Work with your Microsoft account representative. For more details, see [Working with Microsoft Consulting Services](apps-MCS.md).







## Deploying apps

Whatever method you use to get apps packaged, once that is complete, you're ready to follow the steps in [Deploy apps to Microsoft Managed Desktop devices](../get-started/deploy-apps.md).


