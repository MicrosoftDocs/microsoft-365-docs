---
title: Microsoft Managed Desktop app requirements 
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Microsoft Managed Desktop app requirements

<!--This topic is the target for aka.ms/app-req. This is aka link is used from EA agreement for MMD. do not delete.-->

<!--Application addendum -->
 
In order to guarantee the performance, reliability, and serviceability of Microsoft Managed Desktop devices a customer’s line of business apps must not seriously impact end user experience or modify the security stance. Consequently, line of business applications that you want to deploy to Microsoft Managed Desktop devices must meet the requirements in this topic.

## Application condition

It’s important that applications don’t adversely impact the Microsoft Managed Desktop environment. The following are the requirements that an application must meet for an application to be deployed. For any given application or driver, Microsoft may waive any requirement provided herein. Microsoft may decide to remove any application or driver that negatively impacts performance and reliability of Microsoft Managed Desktop devices.

## Centrally managed apps

All applications and drivers installed on Microsoft Managed Devices must be deployed through Microsoft Intune, the Microsoft Store, or the Microsoft Store for Business; if available, drivers will also be deployed through the Windows Update service. 

## Prohibited app classes

Certain application types are not permitted on Microsoft Managed Desktop devices:
- 3rd party anti-virus, security, or audit software
- Versions of Microsoft Office prior to Microsoft 365 Apps for enterprise
- Applications that install or bundle other 3rd party software

## Restricted app behaviors

Certain app behaviors can negatively impact the user experience or may present a security risk to Microsoft Managed Desktop devices. Apps with the following behaviors are not permitted to run in the Microsoft Managed Desktop environment without a specific  from Microsoft.

User Experience:
- Install background services
- Add itself to the Windows startup path
- Applications dependent on drivers
- 3rd party web browsers

Security:
- Elevate the end user’s privileges
- Act as an app store or have a built-in extension manager
- Have known security vulnerabilities
- Encrypt or restrict access to end-user data
- Is unsigned or is signed using a certificate which doesn’t roll up to a trusted root


## Driver deployment

Microsoft Managed Desktop only supports device drivers that are available through Windows Update or installed inbox with the Microsoft Managed Device. 

If an application requires a specific driver(s) to run it is considered a Restricted Application and requires an exception before being deployed to Microsoft Managed Desktop. 

