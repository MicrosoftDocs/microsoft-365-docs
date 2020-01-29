---
title: Deploy Windows 10 Enterprise for new devices with Windows Autopilot
description: Provides guidance on configuring and deploying Windows 10 Enterprise with Windows Autopilot.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, deployment, Windows Autopilot
author: greg-lindsay
localization_priority: Normal
ms.collection: M365-modern-desktop
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 08/30/2018
f1.keywords:
- NOCSH
ms.author: greglin
---

# Step 3: Deploy Windows 10 Enterprise for new devices with Windows Autopilot

*This article applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![Phase 3: Windows 10 Enterprise](./media/deploy-foundation-infrastructure/win10enterprise_icon-small.png)

If you have new Windows 10 PCs, you can use Windows Autopilot to customize the out-of-box-experience (OOBE) for your organization and deploy a new system with apps and settings already configured. There are no images to deploy, no drivers to inject, and no infrastructure to manage. Users can go through the deployment process independently, without the need consult their IT administrator.

You can set up and pre-configure new Windows 10 devices and get them ready for productive use using Windows Autopilot. To learn more about Windows Autopilot, including benefits and Windows Autopilot scenarios, see [Overview of Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-Autopilot/windows-10-Autopilot). When ready, follow these parts to start setting up new devices.

## The Windows Autopilot deployment process poster

The Windows Autopilot poster is two pages in portrait mode (11x17). Click the image below to view a PDF in your browser. 

[![Deploy Windows 10 with Autopilot poster](./media/windows10-deploy-autopilot/windows10-autopilot-flowchart.png)](https://docs.microsoft.com/windows/deployment/media/Windows10AutopilotFlowchart.pdf)

You can also download this poster in [PDF](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/deployment/media/Windows10AutopilotFlowchart.pdf) or [Visio](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/deployment/media/Windows10Autopilotflowchart.vsdx) format.

## Part 1: Start Windows Autopilot deployment
See [Overview of Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-Autopilot/windows-10-Autopilot) to:

1. Learn about and complete the prerequisites for Windows Autopilot deployment. The prerequisites include:
    - **Device registration and OOBE customization**

        To register devices, you need to acquire their hardware ID and register it. We are actively working with various hardware vendors to enable them to provide the required information to you, or upload it on your behalf. You also have the option to capture this information by yourself using a PowerShell script that generates a .csv file with the device's hardware ID.

        Once devices are registered, there are OOBE customization options that you can configure including skipping privacy settings and EULA.

    - **Company branding for OOBE**

        This allows you to add branding to appear during device OOBE.

    - **MDM auto-enrollment in Microsoft Intune**
        
        Automatic enrollment lets users enroll their Windows 10 devices in Intune for device management when they connect their devices to Azure AD. To enroll, users add their work account to their personally-owned devices or join corporate-owned devices to Azure AD. In the background, the device is also enrolled for management with Intune.

    - **Network connectivity to cloud services used by Windows Autopilot**

        The Windows Autopilot Deployment Program uses a number of cloud services to get your devices to a productive state and these services must be accessible from devices registered as Windows Autopilot devices. 

    - **Devices must be pre-installed with Windows 10, version 1703 or later**

2. Learn about and select the Windows Autopilot Deployment Program for your organization. You can select from these deployment programs:
    - **Microsoft Store for Business**
    - **Microsoft Intune**
    - **Partner Center**

## Part 2: Set up a Windows 10 device for Microsoft 365
Before you can set up Windows devices for Microsoft 365 users, make sure all the Windows devices are running Windows 10, version 1703 (Creators Update) or later.

After all Windows devices in your organization have either been upgraded to Windows 10 Creators Update or are already running Windows 10 Creators Update, you can join these devices to your organization’s Azure Active Directory.

### Set up a brand new or newly-upgraded Windows 10 device
Follow these steps to set up a device using the Windows 10 OOBE on a brand new device running Windows 10 Creators Update (or later) or on a device that was upgrade to Windows 10 Creators Update (or later) but has not gone through out-of-box setup.

1. If you don't have a wireless network configured, make sure you connect the device to the internet through a wired or Ethernet connection.
2. Go through the Windows device setup experience. On a new or reset device, the setup experience starts with the **Let's start with region. Is this right?** screen.
3. Go through Windows 10 device setup until you get to the **How would you like to set up?** page. Here, select **Set up for an organization**.
4. Sign in using the Microsoft 365 user's account and password. Depending on the user password setting, you may be prompted to update the password. 
5. Finish Windows 10 device setup.

After you’re done, the device will be connected to your organization’s Azure AD.

### Set up a device that has already completed out-of-box setup
If your device has Windows 10 Creators Update (or later) and has already gone through the out-of-box setup, follow these steps.

1. On your user's Windows PC that is running Windows 10, version 1703 (Creators Update), select the **Windows** logo, and then select the **Settings** icon.
2. In **Settings**, go to **Accounts**.
3. On the **Your info** page, select **Access work or school** > **Connect**.
4. On the **Set up a work or school account** dialog, under **Alternate actions**, select **Join this device to Azure Active Directory**.
5. On the **Let's get you signed in** page, enter your work or school account, and select **Next**.
6. On the **Enter password** page, enter your password, and select **Sign in**.
7. On the **Make sure this is your organization** page, verify that the information is correct, and select **Join**.
8. On the **You're all set!** page, select **Done**.

After you're done, the user will be connected to your organization's Azure AD.

### Verify the device is connected to Azure AD
Follow these steps to verify the device’s sync status with Azure AD, and then start using your Microsoft 365 account on the device. 

1. Open **Settings**.
2. On the **Access work or school** page, select the **Connected to <organization name>** area to expose the buttons **Info** and **Disconnect**.
3. Select **Info** to get your synchronization status.
4. On the **Sync status** page, select **Sync** to get the latest mobile device management policies onto the PC.
5. To start using the Microsoft 365 account, go to the Windows **Start** button, right-click your current account picture and then select **Switch** account.
6. Sign in by using your organization email and password.

If you experience issues when using Windows 10 in an enterprise environment, you can consult [top Microsoft Support solutions for the most common issues](https://docs.microsoft.com/windows/client-management/windows-10-support-solutions). These resources include KB articles, updates, and library articles.

As an interim checkpoint, you can see the [exit criteria](windows10-exit-criteria.md#crit-windows10-step3) corresponding to this step.

## Next step

|||
|:-------|:-----|
|![Step 4](./media/stepnumbers/Step4.png)| [Monitor device health and compliance](windows10-enable-windows-analytics.md) |
