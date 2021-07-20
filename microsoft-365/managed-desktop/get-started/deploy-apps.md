---
title: Deploy apps to devices
description: Information for adding and deploying apps to Microsoft Managed Desktop devices.  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation, apps, line-of-business apps, LOB apps
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Deploy apps to devices
Part of onboarding to Microsoft Managed Desktop includes adding and deploying apps to your user's devices. Once you're using the Microsoft Managed Desktop portal, you can add and deploy your apps. 

The overall process looks like this:
1. [Add apps to Microsoft Managed Desktop portal](#1) - This can be existing line-of-business (LOB) apps, or apps from Microsoft Store for Business that you've synced with Intune. 
2. [Create Azure Active Directory (AD) groups for app assignment](#2) - You'll use these groups to manage app assignment.
3. [Assign apps to your users](#3)

<span id="1" />

## Step 1: Add apps to Microsoft Managed Desktop portal
You can add [Win32, or Windows MSI-based apps](#lob-apps), or [Microsoft Store for Business apps](#msfb-apps) to Microsoft Managed Desktop, and then deploy them to Microsoft Managed Desktop devices.

<span id="lob-apps">

###  Win32 or Windows MSI-based apps to Microsoft Managed Desktop

You can add your line-of-business (LOB) apps to Microsoft Managed Desktop portal. For information on requirements for apps installed on Microsoft Managed Desktop devices, see [Microsoft Managed Desktop app requirements](../service-description/mmd-app-requirements.md).

In this procedure, you'll select which kind of app you want to add, and then configure and upload the app source. 

**To add your LOB app or Windows app to Microsoft Managed Desktop portal**

You can sign in to Microsoft Managed Desktop portal, or sign in to Intune and then search for Microsoft Managed Desktop. We'll show signing in to Microsoft Managed Desktop portal. 

1.    Sign in to [Microsoft Managed Desktop Admin portal](https://aka.ms/mmdportal). 
2.    Under **Inventory**, select **Apps**.
3.    In the Apps workload, select **Add**.
4.    In **Add app**, select **Line-of-business app** or **Windows app (Win32)**.
    - If you selected **Line-of-business app**, see [Add a Windows line-of-business app to Microsoft Intune](/intune/lob-apps-windows) for instruction on adding and configuring line-of-business apps.
    - If you selected **Windows app (Win32)**, see [Win32 app management](/intune/apps-win32-app-management) for instruction on adding and configuring Windows apps.

<span id="msfb-apps">

### Microsoft Store for Business apps
If you haven't signed up with Microsoft Store for Business, you can sign up when you shop for apps. After you have your apps, you can sync them with Microsoft Managed Desktop. 

**To buy apps from the Microsoft Store for Business**

1. Sign in to [Microsoft Store for Business](https://businessstore.microsoft.com) with your Microsoft Store for Business Admin account.
2. Select **Shop for my group**.
3. Use Search to find that the app that you want, and select the app.
4. On the product details, select **Get the App**. 
Microsoft Store adds the app to **Your products** for your organization.

**To force a sync between Intune and Microsoft Store for Business**
1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Tenant administration** > **Connectors and tokens** > **Microsoft Store for Business**.
3. Select **Sync** to get the apps you've purchased from the Microsoft Store into Intune.

**To verify that a sync between Intune and Microsoft Store for Business is active**
1. Sign in to [Microsoft Store for Business](https://businessstore.microsoft.com) with your Microsoft Store for Business Admin account.
2. Select **Manage**.
3. Select **Settings** and then select **Distribute**.
4. Under **Management tools**, verify that Intune is listed and that the status is **Active**.  

<span id="2" />

## Step 2: Create Azure AD groups

Create three Azure AD groups for each app. This table outlines the groups you'll need (Available, Required, and Uninstall). 

App assignment type |    Group use    | Example Azure AD name
--- | --- | ---
Available |  The app will be available from Company Portal app or website. | MMD – *app name* – Available
Required |  The app is installed on devices in the selected groups. | MMD – *app name* – Required
Uninstall |  The app is uninstalled from devices in the selected groups. | MMD – *app name* – Uninstall

Add your users to these groups to either make the app available, install the app, or remove the app from their Microsoft Managed Desktop device. 

<span id="3" />

## Step 3: Assign apps to your users

**To assign the app to your users**

1. Sign in to [Microsoft Managed Desktop Admin portal](https://aka.ms/mmdportal).
2. In Managed Desktop pane, select **Apps**.
3. In the Apps workload, select the app you want to assign users to and select **Assign users groups**.
4. For the specific app, select an assignment type (Available, Required, Uninstall) and assign the appropriate group.
5. In the Assign Apps pane, select **OK**.


## Steps to get started with Microsoft Managed Desktop

1. [Add and verify admin contacts in the Admin portal](add-admin-contacts.md)
2. [Adjust conditional access](conditional-access.md)
3. [Assign licenses](assign-licenses.md)
4. [Deploy Intune Company Portal](company-portal.md)
5. [Enable Enterprise State Roaming](enterprise-state-roaming.md)
6. [Set up devices](set-up-devices.md)
7. [Get your users ready to use devices](get-started-devices.md)
8. Deploy apps (this topic)


<!--# Preparing apps for Microsoft Managed Desktop

This topic is the target for 2 "Learn more" links in the Admin Portal (aka.ms/app-overview;app-package); also target for link from Online resources (aka.ms/app-overviewmmd-app-prep) do not delete.

-->