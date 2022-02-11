---
title: Apps in Microsoft Managed Desktop 
description:  Explains how apps are handled, including how to package, deploy, and support them.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
audience: Admin
---

# Apps in Microsoft Managed Desktop

<!--This topic is the target for 2 "Learn more" links in the Admin Portal (aka.ms/app-overview;app-package); also target for link from Online resources (aka.ms/app-overviewmmd-app-prep) do not delete.-->

<!--Applications: supported/onboard/deployment -->

## Apps generally

Microsoft includes certain key apps along with the Microsoft 365 E3 or E5 license needed to participate in Microsoft Managed Desktop. However, even though we provide these apps, you still have certain responsibilities and actions to complete.

You can also deploy additional non-Microsoft apps to your users via self-service through the Company Portal, or a required background installation using Microsoft Intune's deployment pipeline.

## Apps provided by Microsoft

Included with your Microsoft Managed Desktop license are 64-bit versions of the apps in the Microsoft 365 Apps for Enterprise Standard Suite (Word, Excel, PowerPoint, Outlook, Publisher, Access, Teams, and OneNote.)

Click-to-Run versions of Microsoft Project and Visio *aren't* included by default, but you can request them to be added. For more information about these apps, see [Install Microsoft Project or Microsoft Visio on Microsoft Managed Desktop devices](../get-started/project-visio.md).

### What Microsoft does to support the apps we provide

Microsoft will provide full service for the deployment, update, and support for the included Microsoft 365 Apps for enterprise apps. Click-to-Run versions of Microsoft Project and Visio *aren't* included by default. However, Microsoft Managed Desktop will provide deployment groups to allow your IT administrator to manage licenses, and deploy these applications appropriately for your organization. Microsoft will support users of these applications through the Microsoft Managed Desktop support channels.

### What you need to do to support the apps we provide

There are still certain things you need to do with these apps:

| Task | Description |
| ------ | ------ |
| Assign Licenses | You're responsible for obtaining and assigning the appropriate licenses to users for Microsoft 365 Apps for enterprise. |
| Add users to security groups | If you're using Microsoft Project or Visio, your IT administrator must add those users to the appropriate deployment groups. IT administrators are also responsible for reclaiming licenses from those users if they leave the company. |
| Deploy Microsoft 365 Add-ons | If you need any Add-ons for any of the Microsoft 365 Apps for enterprise apps, deploy them centrally like any other Windows 32 app.

## Apps you provide

You probably have other apps you need for your business operations. These apps can only be deployed to Microsoft Managed Desktop devices by using Microsoft Intune's deployment pipeline. For more information about application deployment, follow the steps in [Deploy apps to Microsoft Managed Desktop devices](../get-started/deploy-apps.md).

### Preparing your own apps for inclusion in Microsoft Managed Desktop

Review your apps, checking:

- None of the apps are prohibited or have restricted behavior, as described in [Microsoft Managed Desktop app requirements](../service-description/mmd-app-requirements.md).
- Apps must be ready for management by Microsoft Intune. For more information, see [Windows 10 app deployment using Microsoft Intune](/intune/apps-windows-10-app-deploy) and [Add apps to Microsoft Intune](/intune/apps-add).
- Other pre-packaging requirements such as providing license keys, agreement with license terms, and pre-setting server connections.

## Steps to get ready for Microsoft Managed Desktop

1. Review [prerequisites for Microsoft Managed Desktop](prerequisites.md).
1. Run [readiness assessment tools](readiness-assessment-tool.md).
1. Buy [Company Portal](../get-started/company-portal.md).
1. Review [prerequisites for guest accounts](guest-accounts.md).
1. Check [network configuration](network.md).
1. [Prepare certificates and network profiles](certs-wifi-lan.md).
1. [Prepare user access to data](authentication.md).
1. Prepare apps (this article).
1. [Prepare mapped drives](mapped-drives.md).
1. [Prepare printing resources](printing.md).
1. Address [device names](address-device-names.md).
