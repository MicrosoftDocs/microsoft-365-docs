---
title: Microsoft Managed Desktop app requirements 
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: trudyha
ms.localizationpriority: normal
ms.date: 09/24/2018
---

# Microsoft Managed Desktop app requirements

<!--This topic is the target for aka.ms/app-req. This is aka link is used from EA agreeement for MMD. do not delete.-->

<!--Application addendum -->
 
Line-of-business applications that you want to deploy to Microsoft Managed Desktop devices must meet the requirements in this topic. 

## Application condition

It’s important that applications don’t adversely impact the Microsoft Managed Desktop environment. The following are the requirements that an application must meet in order for Microsoft to deploy it. For any given application or driver, Microsoft may waive any requirement provided herein. Microsoft may decide to remove any application or driver that negatively impacts performance and reliability of Microsoft Managed Desktop devices.

## Deployable using Microsoft technologies

Microsoft Managed Desktop uses Intune,  Microsoft Store, and  Microsoft Store for Business to deploy applications. Consequently, applications must be packaged in a manner able to be deployed by the then-current version of those services.

## Prohibited app classes

Certain application types are not permitted on Microsoft Managed Desktop devices:
- 3rd party anti-virus, security, or audit software
- 3rd party web browsers
- Versions of Microsoft Office prior to Office 365 Pro Plus
- Applications that install or bundle other 3rd party software

## Restricted app behaviors

Certain application behaviors can be either be detrimental to user experience or present a security risk to Microsoft Managed Desktop devices. Applications shall not exhibit the following behaviors or characteristics: 
- Install background services or spawn long-running background processes
- Add itself to the Windows startup path
- Call undocumented Windows or Office APIs or take dependencies on internal Windows or Office data structures
- Act as an app store or have built-in extension manager
- Elevate the end user’s privileges
- Have known security vulnerabilities
- Signed using a certificate which doesn’t roll up to a trusted root
- Encrypt or restrict access to end-user data
- Modify operating system code at run time

## Driver deployment

Unless a driver is available in Windows Update or is separately signed by Windows Hardware Quality Lab (WHQL), Microsoft must approve a driver before Microsoft will deploy the driver to Microsoft Managed Desktop devices.
