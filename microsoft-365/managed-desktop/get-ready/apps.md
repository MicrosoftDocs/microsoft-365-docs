---
title: Apps in Microsoft Managed Desktop 
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Apps in Microsoft Managed Desktop

<!--This topic is the target for 2 "Learn more" links in the Admin Portal (aka.ms/app-overview;app-package); also target for link from Online resources (aka.ms/app-overviewmmd-app-prep) do not delete.-->

<!--Applications: supported/onboard/deployment -->
 
## Apps generally

Microsoft includes certain key apps along with the Microsoft 365 E3 or E5 license needed to participate in Microsoft Managed Desktop. However, even though we provide these apps, you still have certain responsibilities and actions to complete.

You can also have additional non-Microsoft apps included in the image delivered to your Microsoft Managed Desktop users. To have those apps packaged and included with the image, you can engage with Microsoft Consulting Services, hire a non-Microsoft vendor, or handle the packaging yourself. In each of these cases, there are somewhat different requirements and actions you must take.


## Apps provided by Microsoft

Included with your Microsoft Managed Desktop license are 64-bit versions of the apps in the Office 365 ProPlus Standard Suite (Word, Excel, PowerPoint, Outlook, Publisher, Access, Skype for Business {still true or replaced by Teams now?}, OneNote.) Click-to-Run versions of Microsoft Project and Visio are *not* included by default, but you can request them to be added.

### What Microsoft does to support the apps we provide

Microsoft will provide full service for the deployment, update, and support for the included Office 365 ProPlus apps. Click-to-Run versions of Microsoft Project and Visio are *not* included by default, but Microsoft Managed Desktop will provide deployment groups allowing your IT administrator to manage licenses and deploy these applications appropriately for your organization. Microsoft will support end users of these applications through the Microsoft Managed Desktop support channels.

### What you need to do to support the apps we provide

There are still certain things you need to do with these apps:

- **Assign licenses** - You are responsible for obtaining and assigning the appropriate licenses to end users for Office 365 ProPlus.
- **Add users to security groups** - If you're using Microsoft Project or Visio, your IT administrator must add those users to the appropriate deployment groups. IT administrators are also responsible for managing end of life {? referring to the license or what?} for those users.
- **Deploy Office 365 Addons** - If you need any Addons for any of the Office 365 ProPlus apps, it's up to you to deploy those. {when should they do that? How do they do that? can we link to instructions somewhere?}

## Apps you provide

Of course, you probably have a number of other apps you need for your business operations. These can be added to the Microsoft Managed Desktop image provided to your devices by having them packaged by a vendor (which could be Microsoft Consulting Services (MCS) or a non-Microsoft vendor) or if you have the means, you can package them yourself. You then provide the packaged apps to Microsoft Managed Desktop {Operations?} so they can be added to the image.

You can ask Microsoft Managed Desktop for a query you can use to survey your apps and discover which ones are ready for packaging or might require some adjustments.

### Preparing your own apps for inclusion in Microsoft Managed Desktop
Review your apps, checking:

- None of the apps are prohibited from use on Microsoft Managed Desktop devices:
    - Non-Microsoft anti-virus, security, or audit software
    - Versions of Microsoft Office prior to Office 365 ProPlus {what about current, but NON-ProPlus versions?}
    - Applications that install or bundle other non-Microsoft software
- Apps must be ready for management by Microsoft Intune. For more about this, see [Intune Standalong - Win32 app management](https://docs.microsoft.com/intune/apps-win32-app-management). You can ask Microsoft Managed Desktop for a query you can use to survey your apps and discover which ones are ready for packaging or might require some adjustments.
- Other pre-packaging requirements such as providing license keys, agreement with license terms, and pre-setting server connections.
	
### Decide how to package apps

You have basically three options to get apps packaged so that they can be included in the Microsoft Managed Desktop image. "Packaging" means {we should offer a brief statement of what this actually means}


- You can work with a non-Microsoft vendor
- You can package apps yourself
- You can engage with MCS to package your apps {how do I engage w/ them?}

#### Packaging by you or a non-Microsoft vendor
If you or a non-Microsoft vendor do the packaging, these are the actions you're responsible for:
- You must provide the source installer files (setup.exe & instructions) {do we mean files?}
- You must provide installation instructions, specifying what you want the final installation to look like; for example, should there be a desktop shortcut to the app, what should the app's visibility be, how should the app connect to a server (and which one).
- {this happens after we give them image including the packaged app, right?} You must upload to Microsoft Intune and assign apps to appropriate Azure Active Directory groups. For more information {see deploy apps topic}.
- You must perform your own acceptance testing--that is, that the app works as you need it to in your environment.

Microsoft will take care of these actions:

- Checking for prohibited apps
- Testing for compatibility with Windows 10
- Handing off the app to the Desktop App Assurance program if the app needs remediation
- Testing to ensure that the app deploys properly with Microsoft Intune



If you engage MCS to package your apps, these are the actions Microsoft will be responsible for:
- Testing to verify compatibility with Windows 10, for example, successful installation, starting, and uninstallation.
- If the app needs remediation, we'll hand it off to Desktop App Assurance program {need link to more info on this}
- Packaging the app
- Testing to ensure that the app deploys properly by using Microsoft Intune.



















Microsoft and Microsoft Managed Desktop customers have equally critical, yet different responsibilities around applications used with Microsoft Managed Desktop.

## Microsoft responsibilities
**Office 365 apps**
Microsoft will provide full service for the deployment, update, and support of specific Office 365 apps. All users will receive the base set of Office 365 click to run, 64 bit version of applications included in the device’s image so that a user can quickly become productive. The Project and Visio applications in of the Office 365 suite are licensed separately.  Microsoft Managed Desktop will provide deployment groups allowing the IT Administrator to manage licenses and deploy these applications appropriately for their organization. Microsoft will support end users of these applications through the Microsoft Managed Desktop Support channels.

**Line-of-business apps**
Microsoft provides tooling for IT Administrators to manage and deploy their line-of-business (LOB) applications to end users as a part of the Intune product. Microsoft will support application deployment issues as detailed in [Line-of-business applications](#line-of-business-applications) 

**Deploy with Intune**
Intune will be linked to the **Microsoft Store for Business** during Microsoft Managed Desktop onboarding allowing procured apps to be deployed through Intune. Microsoft will also deploy the Company Portal application from the Microsoft Store to end users so that IT Administrators can provide a self-service experience for their end users.

**App management**
Microsoft may identify restricted applications which are not suitable for the modern workplace because of their system impact. When such an application is identified Microsoft will notify the customer and that application will need to be removed from the tenant. 

For more information on restricted app behaviors and app requirements, see [Microsoft Managed Desktop app requirements](../service-description/mmd-app-requirements.md)

## Customer responsibilities
The Office 365 Suite is core to Microsoft’s productivity offerings and is included in the Microsoft 365 License for all Microsoft Managed Desktop users. While Microsoft deploys, updates, and supports Office Applications to Microsoft Managed Desktop Devices there are still some areas for which the customer is responsible.
- **Assign licenses** - Customers are responsible for assigning the appropriate licenses to end users for Office 365. 
- **Add users to security groups** - For customers with users who need Project or Visio, the IT administrator must add those users to the appropriate deployment groups. IT administrators are also responsible for managing end of life for those users. 
- **Deploy Office 365 Add Ons** - Customers are responsible for deploying any plugins to the Office 365 suite which are deemed necessary. 

Since line-of-business (LOB) apps are unique for each customer, customers are responsible for managing all applications within their organization not deployed by Microsoft. This includes:
- Deciding which apps are needed and who needs them
- Assigning apps to those users
- Create and maintain Azure Active Directory (AD) groups for managing app assignments 

The customer must upload LOB apps to Intune. They are then responsible for deploying, updating, and decommissioning those applications over their respective lifecycles, as well as managing support for these apps for their users.

## Office applications
As part of the Microsoft 365 E5 license, Office 365 Standard Suite (64 Bit) is deployed by Microsoft. 

For details, see [Microsoft Managed Desktop technologies](../intro/technologies.md) <!--- and the other applications licensed under Office 365 E5 may be deployed by the customer using Intune’s deployment tools.-->

## Line-of-business applications
This table summarizes responsibilities across the different phases for line-of-business (LOB) applications. 

Application work items |	Customer	| Microsoft
--- | --- | ---
**Onboarding apps** |  |
Identify applications needed for targeted user groups	| ![yes](images/checkmark.png)	|
Create and manage Azure AD groups for app deployment | ![yes](images/checkmark.png)	|	
**App Packaging** |  |
Package apps to meet Intune deployment standards |	![yes](images/checkmark.png) |	
Upload apps to Intune |	![yes](images/checkmark.png)	 |
Test apps in Microsoft Managed Desktop environment |	![yes](images/checkmark.png) |	
Test apps with end users	| ![yes](images/checkmark.png) |	
**Deployment** | |
Manage and assign users to applications	 | ![yes](images/checkmark.png)	 |
Intune deployment tools delivers application to remote clients|	|	![yes](images/checkmark.png)
Identify and deploy application updates through Intune | ![yes](images/checkmark.png)	 |
Unistall and remove applications when they have been retired	| ![yes](images/checkmark.png) |	
**Management** | |
Procure and assign licenses |	![yes](images/checkmark.png)	 |
Provide end-user support for line-of-business apps	| ![yes](images/checkmark.png) |
Manage app settings remotely	| ![yes](images/checkmark.png) |

For information on LOB application requirements, see [Microsoft Managed Desktop application requirements](../service-description/mmd-app-requirements.md)


## Intune application deployment
Application management can be handled through the Microsoft Managed Desktop Admin portal, or through the Intune portal. Intune’s app management portal shows applications deployed for Windows, Android, and iOS. Microsoft Managed Desktop Admin portal limits the view to Windows 10 applications. Both are available through the Azure Portal. 
* [Intune app management basics](https://docs.microsoft.com/intune/app-management)
* [Add apps to Intune](https://docs.microsoft.com/intune/app-management)
   * [Add a line-of-business App](https://docs.microsoft.com/intune/lob-apps-windows)
   * [Add Win32 apps to Intune](https://docs.microsoft.com/intune/apps-win32-app-management)
   * [Add web applications](https://docs.microsoft.com/intune/web-app)
* [Deploy apps](https://docs.microsoft.com/intune/apps-deploy)
   * [Deploy apps to Windows 10](https://docs.microsoft.com/intune/apps-windows-10-app-deploy)
* Company Portal
   * [Deploy the Company Portal](https://docs.microsoft.com/intune/store-apps-company-portal-app)
   * [Configure the Company Portal app](https://docs.microsoft.com/intune/company-portal-app)
