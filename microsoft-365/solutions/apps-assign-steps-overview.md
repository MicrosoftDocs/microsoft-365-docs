---
title: "Assign managed apps to your organization using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 09/12/2024
description: Assign managed apps to your organization using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Assign managed apps using Intune

Once you have followed the [prerequisites](apps-assign-overview.md#prerequisites) for managing apps at your organization, you're ready to assign and deploy your managed apps to your organization's users and devices.

As part of the Intune set up process, you may have already added users to Intune and created groups in Intune. These groups allow you to assign policies, settings, apps, and other resources.

Managed apps that you assign using Microsoft Intune are apps that have been enhanced to use the security and configuration capabilities of Intune. As the Intune administrator, you can specially configure your app policies to meet your organization's security requirements and protect internal data. Then, you can assign both the policies and apps to members of your organization and also devices enrolled at your organization. For example, if a member of your organization is signed in to one of these managed apps with their Microsoft Entra ID account, you (as the admin) can restrict certain features, such as copy and paste. Or, you may need to restrict accessing specific websites, transferring data between apps, saving files, or other operations. You may choose to protect apps using a PIN as an access requirement. Or, protect sensitive data by preventing screenshots, or requiring data to be encrypted. These types of restrictions prevent proprietary information from being shared outside of the app or organization. To maximize data protection, your organization might configure several of these apps to work together.

Members of your organization know that they're using a managed app, because they must sign in when setting up access to an app that protects organization data. These users receive an on-screen message that tells them the app is protected by your organization. All members of your organization sign in to their managed apps using Microsoft Entra ID.

## Understand Microsoft Entra ID

Microsoft Entra ID, formerly known as Azure Active Directory (Azure AD), is a cloud-based identity and access management service that members of your organization can use to access resources, such as internal access to organizational data. Example resources include Microsoft 365, the Azure portal, and other SaaS applications. 

> [!NOTE]
> Microsoft renamed Azure Active Directory (Azure AD) to Microsoft Entra ID to communicate the multicloud, multiplatform functionality of the products, alleviate confusion with Windows Server Active Directory, and unify the [Microsoft Entra](/entra) product family.  

Every Microsoft tenant, such as a tenant that uses Microsoft 365, Office 365, Azure, or Intune, is automatically a Microsoft Entra tenant. You can continue managing access to your integrated apps, including those that you add and deploy from Intune.

> [!NOTE]
> A tenant is a dedicated instance of Microsoft Entra ID where your subscription to Intune is hosted. You can configure your tenant, add users and groups, and assign licenses to users. When you're ready, using your tenant, you can help users enroll their devices and add apps that they need to begin the modern endpoint management process. As you continue, you can set configuration and protection policies, as well as other endpoint management capabilities.

Registration in Microsoft Entra ID is a required step for Intune management. Before a device can enroll in Intune, the user of the device must authenticate and establish a device identity in your org's Microsoft Entra ID. This step grants the user single sign-on access to cloud-based work apps and other resources. It's important to know which identity option you're utilizing because it determines the enrollment methods you can use, and also determines the sign-in experience for the device user. Identity options include:

- **Microsoft Entra registration** - This option is the device identity option available for personal and corporate-owned mobile devices. Users on these devices authenticate by signing in to work resources, like apps and web browsers, using their Microsoft Entra ID work account.
- **Microsoft Entra joined** - This option is the device identity option available for corporate-owned Windows 10/11 devices utilizing co-management options. Users on these devices authenticate by signing in to the device using their Microsoft Entra ID work account.  

## Steps to assign apps to your organization

This solution steps you through the process of assigning and deploying managed apps from Microsoft Intune to members of your organization. Once you've completed the [prerequisites](apps-protect-overview.md#prerequisites), you're ready to assign and deploy apps from Intune. By using managed apps, along with configuration and protection policies as part of your app management efforts, allows members of your organization to safely use apps. By managing apps at your organization, you help to protect and secure your organization’s data.

Follow these steps to assign apps to members of your organization using Intune:
1. [Confirm users, devices, or groups](apps-assign-step-1.md)
2. [Assign apps to users, devices, or groups](apps-assign-step-2.md)
3. [Verify and monitor app assignments](apps-assign-step-3.md)
4. [Troubleshoot app deployment issues](apps-assign-step-4.md)

[:::image type="content" source="../media/assign-managed-apps/assign-managed-apps-01.png" alt-text="Step 1. Confirm users and devices." border="false" :::](apps-assign-step-1.md)

Continue with [Step 1](apps-assign-step-1.md) to confirm users and devices using Microsoft Intune.
