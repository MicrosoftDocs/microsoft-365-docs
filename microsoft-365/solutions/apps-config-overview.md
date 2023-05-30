---
title: "Configure apps using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Configure apps using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Configure apps using Microsoft Intune

Once you've [set up and deployed the capabilities of Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune) and you've [added apps you want to manage to Intune](/microsoft-365/solutions/apps-add-overview), you can begin the process of creating app configuration policies so that members of your organization (end-users) can easily install and use those apps on their devices. You create app configuration policies directly in Intune that are unique for each app.

> [!NOTE]
> Intune provides a web-based console to manage, protect, and monitor all of your organization's endpoints, whether those endpoints are devices or apps.

 App configuration policies can help you eliminate app setup problems by letting you assign configuration settings to a policy that is then assigned to end-users before they run the app. The settings are then supplied automatically when the app is configured on the end-user's device. Most importantly, end-users don't need to take action. You can create and use app configuration policies to provide configuration settings for both iOS/iPadOS or Android apps. The configuration policy settings are used when the app checks for these settings, typically the first time the app is run.

For example, an app configuration setting might require you to specify any of the following details:
- A custom port number
- Language settings
- S/MIME settings
- Security and protection settings
- Branding settings (such as a company logo)

If end-users were to enter these settings instead, they could do this incorrectly. App configuration policies can help provide consistency across an enterprise and reduce helpdesk calls from end-users trying to configure settings on their own. By using app configuration policies, the adoption of new apps can be easier and quicker.

The available configuration parameters and the implementation of the configuration parameters are decided by the developers of the application. Documentation from the application vendor should be reviewed to see what configurations are available and how the configurations influence the behavior of the application. For some applications, Intune will populate the available configuration settings.

## Prerequisites

Before you can configure and manage apps with Microsoft Intune, you must follow a few prerequisites to set up Intune, as well as understand key app management configurations.

> [!NOTE]
> If you're new to Intune, start with the [Microsoft Intune free trail](/mem/intune/fundamentals/free-trial-sign-up). Trying out Intune is free for 30 days. When you complete the sign-up process, you'll have a new tenant that you can use to evaluate Intune. A tenant is a dedicated instance of [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-whatis) (Azure AD) where your subscription to Intune is hosted. You can then configure the tenant, which involves many capabilities that you can use to protect your organization. One of those involves adding and configuring apps for Intune.

Follow these steps if you haven't already set up Intune and added the apps you need to manage:
1. Set up and [deploy Intune](/microsoft-365/solutions/apps-guide-overview?toc=%2Fmem%2Fintune%2Ftoc.json&bc=%2Fmem%2Fintune%2Fbreadcrumb%2Ftoc.json&view=o365-worldwide#deploying-intune)
2. Understand [Mobile Application Management configurations](/microsoft-365/solutions/apps-guide-overview?toc=%2Fmem%2Fintune%2Ftoc.json&bc=%2Fmem%2Fintune%2Fbreadcrumb%2Ftoc.json&view=o365-worldwide#mobile-application-management-configurations)
3. [Understand app types](/microsoft-365/solutions/apps-guide-overview?toc=%2Fmem%2Fintune%2Ftoc.json&bc=%2Fmem%2Fintune%2Fbreadcrumb%2Ftoc.json&view=o365-worldwide#understand-app-types)
4. [Add apps to Intune](/microsoft-365/solutions/apps-add-overview?toc=%2Fmem%2Fintune%2Ftoc.json&bc=%2Fmem%2Fintune%2Fbreadcrumb%2Ftoc.json&view=o365-worldwide)

## What's in this solution

This solution steps you through the process of creating app configuration policies in Microsoft Intune for specific apps and assigning those policies to your organization. Once you've completed the above prerequisites, you're ready to create app protection policies for your organization in Intune. Using configuration and protection policies as part of your app management efforts allows members of your organization to safely use apps. By managing apps at your organization, you help to protect and secure your organization’s data.

:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-01.png" alt-text="Steps used to configure managed apps with Microsoft Intune." border="false" :::

## Configure the Company Portal

End-users use the Company Portal to securely access company data and do common tasks. Common task may include enrolling devices, installing apps, locating information, and performing device actions. End-users can access these tasks and information using either the Company Portal app, Company Portal website, or Intune app. The Company Portal app supports iOS/iPadOS, Linux, macOS, and Windows devices. The Intune app supports Android devices.

As an Intune admin, you can customize the Company Portal user experience for your organization. Specifically, you can set the Company Portal branding, support information, enrollment, privacy, notifications, device categories, app sources, and self-service actions.

> [!NOTE]
> The "Company Portal" is commonly used as the descriptor for the Intune app, Company portal app, and the Company portal website.

## End-users and the Company Portal

There are specific steps related to the Company Portal that end-users can take when using Microsoft Intune. Those steps start with the Company Portal.

You can direct end-users to follow these steps:
1. [Install the Company Portal](/mem/intune/user-help/sign-in-to-the-company-portal) on their device.
2. [Update the Company Portal](/mem/intune/user-help/install-a-new-version-of-the-company-portal-app) to get the latest version on their device. Having your end-uers get the latest version of the Company Portal app or Intune app on their device allows them to get the latest bug fixes and security updates for the app. 
3. Enroll devices to be managed by Microsoft Intune based on device platform:
    - [iOS/iPad devices](/mem/intune/user-help/enroll-your-device-in-intune-ios)
    - [Android devices](/mem/intune/user-help/why-enroll-android-device)
    - [Linux devices](mem/intune/user-help/enroll-device-linux)
    - [macOS devices](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp)
    - [Windows devices](/mem/intune/user-help/what-happens-if-you-install-the-company-portal-app-and-enroll-your-device-in-intune-windows)

    > [!IMPORTANT]
    > Each device platform may offer different enrollment methods depending on the device type, device management, and device configuration.
4. Add or update their [device password, PIN, or passcode](/mem/intune/user-help/password-does-not-meet-it-administrator-requirements).
5. Find and install managed apps for their devices:
    - [iOS/iPad apps](/mem/intune/user-help/use-managed-apps-on-your-device-ios)
    - [Android apps](/mem/intune/user-help/use-managed-apps-on-your-device-android)
    - [Windows apps](/mem/intune/user-help/what-happens-if-you-install-the-company-portal-app-and-enroll-your-device-in-intune-windows)


----------------


The Company Portal apps, Company Portal website, and Intune app on Android are where users access company data and can do common tasks. Common task may include enrolling devices, installing apps, and locating information (such as for assistance from your IT department). Additionally, these apps allow users to securely access company resources. The end-user experience provides several different pages, such as Home, Apps, App details, Devices, and Device details. In addition, end-users can quickly find apps within the Company Portal.

You can customize the Company Portal end-user experience, which will help provide a familiar and helpful experience for your end users. The Company Portal supports customizing the look of the app with details specific to your organization, such as the following details:
- Add branding information, including organization name, logo, and more.
- Provide support information for your organization
- Configure the Company Portal experience for enrollment, privacy, notifications, device categories, app sources, and self-service actions.

In addition, end-users can perform self-service device actions from the Company Portal, including the following device actions:
- Retire
- Wipe
- Rename
- Sync
- Remote Lock
- Reset Passcode
- Key Recovery

## Configure Microsoft Outlook

Outlook for iOS and Android supports app settings that allow unified endpoint management (UEM) administrators (using tools such as Microsoft Endpoint Manager) and Microsoft 365 or Office 365 administrators to customize the behavior of the app.

The Outlook for iOS and Android app is designed to enable users in your organization to do more from their mobile devices, by bringing together email, calendar, contacts, and other files.

The richest and broadest protection capabilities for Microsoft 365 data are available when you subscribe to the Enterprise Mobility + Security suite, which includes Microsoft Intune and Azure Active Directory Premium features, such as conditional access. At a minimum, you will want to deploy a conditional access policy that allows connectivity to Outlook for iOS and Android from mobile devices and an Intune app protection policy that ensures the collaboration experience is protected.

For more information about configuring Microsoft Outlook, go to the following topic:

- [Manage messaging collaboration access by using Outlook for iOS and Android with Microsoft Intune](/mem/intune/apps/app-configuration-policies-outlook)

## Configure Microsoft Office

Office for iOS and Android delivers several key benefits including:

- Combining Word, Excel, and PowerPoint in a way that simplifies the experience with fewer apps to download or switch between. It requires far less phone storage than installing individual apps while maintaining virtually all the capabilities of the existing mobile apps people already know and use.
- Integrating Office Lens technology to unlock the power of the camera with capabilities like converting images into editable Word and Excel documents, scanning PDFs, and capturing whiteboards with automatic digital enhancements to make the content easier to read.
- Adding new functionality for common tasks people often encounter when working on a phone—things like making quick notes, signing PDFs, scanning QR codes, and transferring files between devices.

The richest and broadest protection capabilities for Microsoft 365 data are available when you subscribe to the Enterprise Mobility + Security suite, which includes Microsoft Intune and Azure Active Directory Premium features, such as conditional access. At a minimum, you will want to deploy a conditional access policy that allows connectivity to Office for iOS and Android from mobile devices and an Intune app protection policy that ensures the collaboration experience is protected.

## Configure Microsoft Edge

Edge for iOS and Android is designed to enable users to browse the web and supports multi-identity. Users can add a work account, as well as a personal account, for browsing. There is complete separation between the two identities, which is like what is offered in other Microsoft mobile apps.

For more information about configuring Microsoft Edge, go to the following topic:

- [Manage Microsoft Edge on iOS and Android with Intune](/mem/intune/apps/manage-microsoft-edge)

## Configure Microsoft Teams

Microsoft Teams is the hub for team collaboration in Microsoft 365 that integrates the people, content, and tools your team needs to be more engaged and effective.

The richest and broadest protection capabilities for Microsoft 365 data are available when you subscribe to the Enterprise Mobility + Security suite, which includes Microsoft Intune and Azure Active Directory Premium features, such as conditional access. At a minimum, you'll want to deploy a conditional access policy that allows connectivity to Teams for iOS and Android from mobile devices and an Intune app protection policy that ensures the collaboration experience is protected.

## Configure other apps


## Verify app configuration

