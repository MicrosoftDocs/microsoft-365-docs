---
title: "Step 1. Assess app requirements"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Step 1. Assess app requirements.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 1. Assess app requirements

As an IT admin, before adding apps to Intune and making them available to the members of your organization, you may find it helpful determine a few app requirements for your organization up front. You must determine app requirements such as the platforms and capabilities that your workforce needs. For instance, you must determine whether to use Intune to manage the devices (including apps) or have Intune manage just the apps without managing the devices. Intune supports both of these types of management. In addition, you should determine the apps and capabilities that your workforce should use and who needs them. This assessment step helps you consider these options.

To start, first determine your organization's requirements by asking the questions presented in the below table:

| Questions | Details |
|---|---|
| Does my organization need to use Mobile Application Management (MAM) or Mobile Device Management (MDM)? | Intune supports both MAM and MDM. MAM without device management allows just your organization's apps to be managed by Intune, without enrolling the devices to be managed by Intune. MAM with device management (known as MDM) allows your organization's apps and devices to be managed. There's advantages to each management method. For more information, see [Understanding MAM and MDM](#understanding-mam-and-mdm).  |
| What platforms do members of my organization use? | Intune supports a number of device platforms. You should consider supporting all possible device platforms that members of your organization use to access corporate data. For more information, see [Determine the platforms needed for each app](#determine-the-platforms-needed-for-each-app). |
| Which apps are needed to access company information and data? | Determine which apps are currently used by members of your organization and which apps need to be available or added. For more information, see [Determine the type of app for your solution](#determine-the-type-of-app-for-your-solution). |
| Which groups of users need specific apps? | For more information, see [Determine who will use the app](#determine-who-will-use-the-app). |
| Is there helpful configuration needed for each app? |  |
| Does each app need access protection and data protection? |  |

## Understanding MAM and MDM

Managing the apps that the members of your organization uses on their devices is called mobile application management (MAM). MAM in Intune is designed to protect organization data at the application level, including custom apps and store apps. App management can be used on organization-owned devices and personal devices. When it is used with personal devices, only organization-related access and data is managed. This configuration allows your organization's apps to be managed by Intune, but doesn't enroll the devices to be managed by Intune. 

Managing devices at an organization is known as mobile device management (MDM). Whn you manage both the apps and devices at your organization it is commonly referred to as **MAM + MDM**. There are additional benefits to using MDM with app protection policies. For example, a member of your organization could have both a phone issued by the company, as well as their own personal tablet. The company phone could be enrolled in MDM and protected by app protection policies while the personal device is protected by app protection policies only.

For more information, see [MAM configurations](apps-guide-overview.md#mam-configurations).

## Determine the platforms needed for each app

Intune supports configuring and protecting the apps that the members of your organization use. The mobile device type (such as Windows and Android) is referred to as the device platform. Each device platform supports multiple operating systems (OS). Intune supports the following platforms:
- Windows
- iOS/iPadOS
- macOS
- Android

For details about platforms for the apps your organization uses, see [Deploy apps your organization uses](/mem/intune/fundamentals/manage-apps#deploy-apps-your-organization-uses).

## Determine the type of app for your solution

There are several types of apps that you can consider assigning to the members of your organization. There are store apps, apps created specifically for your organization, apps on the web, and apps that have been designed to work with Intune. Determine all the apps that your organization uses and will need to use. For more information, see [Determine the type of app for your solution](/mem/intune/apps/apps-add#determine-the-type-of-app-for-your-solution).

- Communication
    - communities, events, chats, channels, meetings, storage, tasks, and calendars
    - Email, meetings, calendar
    - Collaboration, bookings, sharing, calling, messaging
- Finance
- Productivity
    - Spreadsheets, presentations, writing, reading, task management
- Security
    - Authentication, Encryption
    - Verification
    - Signatures
- Tools and utilities
    - Editors, zip, view files, location services
    - Secure printing, annotations
    - Workspace management
- Storage
    - cloud storage
    - secure file store
    - Inventory

<!--
https://apps.apple.com/us/genre/ios/id36
https://learn.microsoft.com/mem/intune/apps/apps-supported-intune-apps
-->

## Determine who will use the app

Intune uses Azure Active Directory (Azure AD) groups to manage devices and users. As an Intune admin, you can set up groups to suit your organizational needs. Create groups to organize users or devices by geographic location, department, or hardware characteristics. Use groups to manage tasks at scale. For example, you can set policies for many users or deploy apps to a set of devices.

As you're determining which apps your workforce needs, consider the various groups of users and the various apps they use. Knowing these groups is also helpful after you've added an app. As you add an app to Intune, you assign a group of users that can use the app.

To help determine the app users, see [Determine who will use the app](/mem/intune/apps/apps-add#assess-app-requirements). For details about adding groups of users, see [Add groups to organize users and devices](/mem/intune/fundamentals/groups-add).
