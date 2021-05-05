---
title: Apps in Microsoft Managed Desktop 
description:  Explains how apps are handled, including how to package, deploy, and support them.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
audience: Admin
---

# Apps in Microsoft Managed Desktop

<!--This topic is the target for 2 "Learn more" links in the Admin Portal (aka.ms/app-overview;app-package); also target for link from Online resources (aka.ms/app-overviewmmd-app-prep) do not delete.-->

<!--Applications: supported/onboard/deployment -->
 
## Apps generally

Microsoft includes certain key apps along with the Microsoft 365 E3 or E5 license needed to participate in Microsoft Managed Desktop. However, even though we provide these apps, you still have certain responsibilities and actions to complete.

You can also deploy additional non-Microsoft apps to your users for self-service through the Company Portal or a required background installation, all using Microsoft Intune’s deployment pipeline. 

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

You probably have other apps you need for your business operations. These apps can only be deployed to Microsoft Managed Desktop devices by using Microsoft Intune’s deployment pipeline. For more information about application deployment follow the steps in [Deploy apps to Microsoft Managed Desktop devices](../get-started/deploy-apps.md).

### Preparing your own apps for inclusion in Microsoft Managed Desktop
Review your apps, checking:

- None of the apps are prohibited or have restricted behavior, as described in [Microsoft Managed Desktop app requirements](../service-description/mmd-app-requirements.md).
- Apps must be ready for management by Microsoft Intune. For more about this topic, see [Windows 10 app deployment using Microsoft Intune](/intune/apps-windows-10-app-deploy) and [Add apps to Microsoft Intune](/intune/apps-add).
- Other pre-packaging requirements such as providing license keys, agreement with license terms, and pre-setting server connections.

## Steps to get ready

1. Review [Prerequisites for Microsoft Managed Desktop](prerequisites.md).
2. Use [Readiness assessment tools](readiness-assessment-tool.md).
3. [Prerequisites for guest accounts](guest-accounts.md)
4. [Network configuration for Microsoft Managed Desktop](network.md)
5. [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md)
6. [Prepare on-premises resources access for Microsoft Managed Desktop](authentication.md)
7. [Apps in Microsoft Managed Desktop](apps.md) (This article)
8. [Prepare mapped drives for Microsoft Managed Desktop](mapped-drives.md)
9. [Prepare printing resources for Microsoft Managed Desktop](printing.md)
