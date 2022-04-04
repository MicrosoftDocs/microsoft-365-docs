---
title: Prepare printing resources for Microsoft Managed Desktop 
description:  Important steps to make sure printing work smoothly
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
manager: dougeby
ms.topic: article
audience: Admin
---

# Prepare printing resources for Microsoft Managed Desktop

As you get ready to enroll in Microsoft Managed Desktop, you should evaluate your printing requirements and determine the right approach for your environment. You have three options:

| Option | Description |
| ------ | ------ |
| Deploy the Microsoft Universal Print solution | The Microsoft Universal Print solution to make it easy for Microsoft Managed Desktop devices to discover printers. For more information, see [What is Universal Print](/universal-print/fundamentals/universal-print-whatis). |
| Deploy printers directly by using a custom PowerShell script | Follow the steps in the [Set up local printers](#set-up-local-printers) section. |
| Use a non-Microsoft cloud printing solution | Use a non-Microsoft cloud printing solution that is compatible with Windows 10 devices and joined to an Azure Active Directory domain. The solution must meet the software requirements for Microsoft Managed Desktop. For more information, see [Microsoft Managed Desktop app requirements](../service-description/mmd-app-requirements.md). |

In all the above options, if the printer drivers aren't available from Microsoft Update or the Microsoft Store, you must obtain them yourself, and have them packaged for deployment to your Microsoft Managed Desktop devices with Microsoft Intune. For more, see [Intune Standalone - Win32 app management](/mem/intune/apps/apps-win32-app-management)

## Set up local printers

The following instructions assume you've prepared the printing resources and decided to deploy printers using a custom PowerShell script.

**To deploy printers using a custom PowerShell script:**

1. Navigate to the Microsoft Managed Desktop portal.
1. Submit a request labeled *Printer deployment* in the **Support > Support requests** section of the Admin Portal.
1. Provide the following details:
    - All UNC paths to shared printer locations that will need to be deployed for Microsoft Managed Desktop devices.
    - User groups that require access to these shared printers.
1. Using the Admin Portal, we'll let you know when the request has been completed. Initially we'll only deploy the configuration to devices in the Test deployment group.
1. Test and confirm whether the configuration works as you expect.
1. Reply by using the **Discussion** tab in the support request to let us know when you've completed your testing.
1. We'll then deploy the configuration to the other deployment groups.

## Steps to get ready

1. Review [prerequisites for Microsoft Managed Desktop](prerequisites.md).
1. Run [readiness assessment tools](readiness-assessment-tool.md).
1. Buy [Company Portal](../get-started/company-portal.md).
1. Review [prerequisites for guest accounts](guest-accounts.md).
1. Check [network configuration](network.md).
1. [Prepare certificates and network profiles](certs-wifi-lan.md).
1. [Prepare user access to data](authentication.md).
1. [Prepare apps](apps.md).
1. [Prepare mapped drives](mapped-drives.md).
1. Prepare printing resources (this article).
1. Address [device names](address-device-names.md).
