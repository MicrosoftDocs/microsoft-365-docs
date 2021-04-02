---
title: Prepare printing resources for Microsoft Managed Desktop 
description:  Important steps to make sure printing work smoothly
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
manager: laurawi
ms.topic: article
audience: Admin
---

# Prepare printing resources for Microsoft Managed Desktop

As you get ready to enroll in Microsoft Managed Desktop, you should evaluate your printing requirements and determine the right approach for your environment. You have three options:
 
- Deploy the Microsoft Universal Print solution to make it easy for Microsoft Managed Desktop devices to discover printers. For more information, see [What is Universal Print](/universal-print/fundamentals/universal-print-whatis).
- Deploy printers directly by using a custom PowerShell script. Follow the steps in the [Set up local printers](#set-up-local-printers) section.
- Use a non-Microsoft cloud printing solution that is compatible with Windows 10 devices that are joined to an Azure Active Directory domain. The solution must meet the software requirements for Microsoft Managed Desktop. For more information, see [Microsoft Managed Desktop app requirements](../service-description/mmd-app-requirements.md).
 
In all cases, if the printer drivers are not available from Microsoft Update or the Microsoft Store, you'll have to obtain them yourself and have them packaged for deployment to your Microsoft Managed Desktop devices with Microsoft Intune. For more, see [Intune Standalone - Win32 app management](/mem/intune/apps/apps-win32-app-management)

## Set up local printers

If you've decided to deploy printers by using a custom PowerShell script and have prepared the printing resources, follow these steps to have shared printers deployed:

1.	Navigate to the Microsoft Managed Desktop portal.
2.	Submit a request labeled *Printer deployment* in the **Support > Support requests** section of the Admin Portal, providing these details:
    - All UNC paths to shared printer locations that will need to be deployed for Microsoft Managed Desktop devices
    - User groups that require access to these shared printers
3.	Using the Admin Portal, we'll let you know when the request has been completed. Initially we'll only deploy the configuration to devices in the Test deployment group.
4.	You must test and confirm whether the configuration works as you expect. Reply by using the **Discussion** tab in the Support request to let us know when you've completed your testing.
5.	We'll then deploy the configuration to the other deployment groups.

## Steps to get ready

1. Review [Prerequisites for Microsoft Managed Desktop](prerequisites.md).
2. Use [Readiness assessment tools](readiness-assessment-tool.md).
3. [Prerequisites for guest accounts](guest-accounts.md)
4. [Network configuration for Microsoft Managed Desktop](network.md)
5. [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md)
6. [Prepare on-premises resources access for Microsoft Managed Desktop](authentication.md)
7. [Apps in Microsoft Managed Desktop](apps.md)
8. [Prepare mapped drives for Microsoft Managed Desktop](mapped-drives.md)
9. [Prepare printing resources for Microsoft Managed Desktop](printing.md) (This article)
