---
title: Deploy apps for Microsoft Managed Desktop devices
description: Information for adding and deploying apps to Microsoft Managed Desktop devices.  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation, apps, line-of-business apps, LOB apps
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Deploy apps to Microsoft Managed Desktop devices
Part of onboarding to Microsoft Managed Desktop includes adding and deploying apps to your user’s devices. Once you're using the Microsoft Managed Desktop portal, you can add and deploy your apps. 

The overall process looks like this:
1. [Add apps to Microsoft Managed Desktop portal](#1) - This can be existing line-of-business (LOB) apps, or apps from Microsoft Store for Business that you've synced with Intune. 
2. [Create Azure Active Directory (AD) groups for app assignment](#2) - You'll use these groups to manage app assignment.
3. [Assign apps to your users](#3)

<span id="1" />

## Step 1: Add apps to Microsoft Managed Desktop portal
You can add [Win32, or Windows MSI-based apps](#lob-apps), or [Microsoft Store for Business apps](#msfb-apps) to Microsoft Managed Desktop, and then deploy them to Microsoft Managed Desktop devices.

<span id="lob-apps">

###  Win32 or Windows MSI-based apps to Microsoft Managed Desktop

You can add your line-of-business (LOB) apps to Microsoft Managed Desktop portal. For information on requirements for apps installed on Microsoft Managed Desktop devices, see [Microsoft Managed Desktop app requirements](https://docs.microsoft.com/microsoft-365/managed-desktop/service-description/mmd-app-requirements).

In this procedure, you'll select which kind of app you want to add, and then configure and upload the app source. 

**To add your LOB app or Windows app to Microsoft Managed Desktop portal**

You can sign in to Microsoft Managed Desktop portal, or sign in to Intune and then search for Microsoft Managed Desktop. We'll show signing in to Microsoft Managed Desktop portal. 

1.	Sign in to [Microsoft Managed Desktop Admin portal](http://aka.ms/mmdportal). 
2.	Under **Inventory**, select **Apps**.
3.	In the Apps workload, select **Add**.
4.	In **Add app**, select **Line-of-business app** or **Windows app (Win32)**.
    - If you selected **Line-of-business app**, see [Add a Windows line-of-business app to Microsoft Intune](https://docs.microsoft.com/intune/lob-apps-windows) for instruction on adding and configuring line-of-business apps.
    - If you selected **Windows app (Win32)**, see [Win32 app management](https://docs.microsoft.com/intune/apps-win32-app-management) for instruction on adding and configuring Windows apps.

<span id="msfb-apps">

### Microsoft Store for Business apps
If you haven't signed up with Microsoft Store for Business, you can sign up when you shop for apps. After you have your apps, you can sync them with Microsoft Managed Desktop. 

**To buy apps from the Microsoft Store for Business**

1. Sign in to [Microsoft Store for Business](https://businessstore.microsoft.com) with your Microsoft Store for Business Admin account.
2. Select **Shop for my group**.
3. Use Search to find that the app that you want, and select the app.
4. On the product details, select **Get the App**. 
Microsoft Store adds the app to **Products & services** for your organization.

**To force a sync between Intune and Microsoft Store for Business**
1. Sign in to [Azure Portal](https://portal.azure.com/) as Intune Admin or Global Admin for your tenant
2. Select **All services > Intune**. 
Intune is in the Monitoring + Management section.
3. In the Intune pane, select **Client Apps**, and then select **Microsoft Store for Business**.
4. Select **Enable** to sync your Microsoft Store for Business apps with Intune.
    - If you haven't already, sign up and associate your Microsoft Store for Business account with Intune
    - Select the language in which apps from the Microsoft Store for Business will be displayed in your Intune console
    - Select **Sync** to sync your Microsoft Store for Business apps with Intune.
    - Verify that the sync between Microsoft Store for Business and Intune is active (next step). 

**To verify that a sync between Intune and Microsoft Store for Business is active**
1. Sign in to [Microsoft Store for Business](https://businessstore.microsoft.com) with your Microsoft Store for Business Admin account.
2. Select **Manage**.
3. Select **Settings** and then select **Distribute**.
4. Under **Management tools**, verify that Intune is listed and that the status is **Active**.  

<span id="2" />

## Step 2: Create Azure AD groups

Create three Azure AD groups for each app. This table outlines the groups you'll need (Available, Required, and Uninstall). 

App assignment type |	Group use	| Example Azure AD name
--- | --- | ---
Available |  The app will be available from Company Portal app or website. | MMD – *app name* – Available
Required |  The app is installed on devices in the selected groups. | MMD – *app name* – Required
Uninstall |  TThe app is uninstalled from devices in the selected groups. | MMD – *app name* – Uninstall

Add your users to these groups to either make the app availabe, install the app, or remove the app from their Microsoft Managed Desktop device. 

<span id="3" />

## Step 3: Assign apps to your users

**To assign the app to your users**

1. Sign in to [Microsoft Managed Desktop Admin portal](http://aka.ms/mmdportal).
2. In Managed Desktop pane, select **Apps**.
3. In the Apps workload, select the app you want to assign users to and select **Assign users groups**.
4. For the specific app, select an assignment type (Available, Required, Uninstall) and assign the appropriate group.
5. In the Assign Apps pane, select **OK**.

## Steps to get started with Microsoft Managed Desktop

| | |
| --- | --- |
| ![done](images/checklistdone.png) | [Set up Microsoft Managed Desktop devices](set-up-devices.md) |
| ![done](images/checklistdone.png) | [Get your users ready to use devices](get-started-devices.md) |
| ![done](images/checklistdone.png) | [Assign licenses](assign-licenses.md) |
| ![done](images/checklistdone.png) | [Adjust conditional access](conditional-access.md) |
| ![done](images/checklistdone.png) | [Enable Enterprise State Roaming](enterprise-state-roaming.md) |
| ![to do](images/checklistbox.gif) | Deploy apps to Microsoft Managed Desktop devices (this topic) |


<!--# Preparing apps for Microsoft Managed Desktop

This topic is the target for 2 "Learn more" links in the Admin Portal (aka.ms/app-overview;app-package); also target for link from Online resources (aka.ms/app-overviewmmd-app-prep) do not delete.

Applications: supported/onboard/deployment
 
Microsoft and Microsoft Managed Desktop customers have equally critical, yet different responsibilities around applications used with Microsoft Managed Desktop.

## Microsoft responsibilities
**Office 365 apps**
Microsoft will provide full service for the deployment, update, and support of specific Office 365 apps. All users will receive the base set of Office 365 click to run, 64 bit version of applications included in the device’s image so that a user can quickly become productive. The Project and Visio applications in of the Office 365 suite are licensed separately.  Microsoft Managed Desktop will provide deployment groups allowing the IT Administrator to manage licenses and deploy these applications appropriately for their organization. Microsoft will support end users of these applications through the Microsoft Managed Desktop Support channels.

**Line-of-business apps**
Microsoft provides tooling for IT Administrators to manage and deploy their line-of-business (LOB) applications to end users as a part of the Intune product. Microsoft will support application deployment issues as detailed in [Line-of-business applications](#line-of-business-applications) 

**Deploy with Intune**
Intune will be linked to the **Microsoft Store for Business** during Microsoft Managed Desktop onboarding allowing procured apps to be deployed through Intune. Microsoft will also deploy the web-based version of the Company Portal to end users so that IT Administrators can provide a self-service experience for end users.

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

For details, see [Microsoft Managed Desktop technologies](../intro/technologies.md) <!--- and the other applications licensed under Office 365 E5 may be deployed by the customer using Intune’s deployment tools.

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
   * [Configure the Company Portal app](https://docs.microsoft.com/intune/company-portal-app)-->
