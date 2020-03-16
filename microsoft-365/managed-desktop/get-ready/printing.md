---
title: Prepare printing resources for Microsoft Managed Desktop 
description:  Important steps to make sure printing works smoothly
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

#  Prepare printing resources for Microsoft Managed Desktop

As you get ready to join Microsoft Managed Desktop, you should evaluate your printing requirements and determine the right approach for your environment. These are the options:
 
- Deploy the Microsoft hybrid cloud print solution to make it easy for Microsoft Managed Desktop devices to discover printers.
- Deploy printers directly through use of a custom PowerShell script. To do this, you'll need to submit a request labeled *Printer deployment* in the **Support > Support requests** section of the Admin Portal, providing these details:
    - All UNC paths to shared printer locations that will need to be deployed for Microsoft Managed Desktop devices
    - User groups that require access to these shared printers
- Use a non-Microsoft cloud printing solution that is compatible with Windows 10 devices that are joined to an Azure Active Directory domain. This option is subject to Microsoft’s requirements for application software.{where?}
 
In all cases, if printer drivers are required that are not automatically available through services such as Microsoft Update, you'll have to create printer drivers as application packages in Microsoft Intune for deployment to Microsoft Managed Desktop devices. {can we point to some content that explains how to do this?} 


## Set up local printers

Once you've selected your approach and have prepared the printing resources, follow these steps to have shared printers deployed:

1.	Navigate to the Microsoft Managed Desktop portal {isn't this called the Admin Portal?}.
2.	Submit a support request titled “Printers deployment” through the Support > Support requests section and provide all the required printer details. {didn't we just do this above?}
3.	Using the Admin Portal, we'll let you know when the request has been completed. Initially we'll only deploy the configuration to devices in the Test deployment group.
4.	You must test and confirm whether the configuration works as you expect. Reply by using the **Discussion** tab in the Support request to let us know when you've completed your testing.
5.	We'll then deploy the configuration to the other deployment groups.
