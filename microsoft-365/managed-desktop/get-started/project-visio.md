---
title: Install Microsoft Project or Microsoft Visio on Microsoft Managed Desktop devices 
description: Info on installing Microsoft Project or Microsoft Visio on Microsoft Managed Desktop devices 
keywords: Microsoft Managed Desktop, Microsoft 365, Microsoft Project, Microsoft Visio
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
manager: laurawi
ms.topic: article
ms.localizationpriority: normal
ms.date: 03/07/2019
ms.collection: M365-modern-desktop
---

# Install Microsoft Project or Microsoft Visio on Microsoft Managed Desktop devices

Microsoft Project and Microsoft Visio require specific steps to be installed on Microsoft Managed Desktop devices. This topic documents the prerequisites and installation process for these applications.

## Prerequisites

Admins should verify that they meet these prerequisites:
- **License quantities** - The correct amount of Microsoft Project and Microsoft Visio licenses must be available for your users. Microsoft Managed Desktop currently only supports 64-bit versions of these applications. 
- **License names** - The appropriate license names for these applications are:
    - **Microsoft Project** - Project Online Professional or Project Online Premium
    - **Microsoft Visio** - Visio Online Plan 2
- **Company Portal** -  The Company Portal must be available in your tenant for your users to install these applications. If the Company Portal isn’t deployed in your tenant, see [Company Portal](company-portal.md).

## Deploy Project and Visio for Microsoft Managed Desktop devices
Microsoft Managed Desktop will add Microsoft Project and Microsoft Visio as two Win32 Applications in Microsoft Intune. We will also create two groups in Azure Active Directory which will be assigned to the corresponding application with the "Available" intent. 

**To deploy Project and Visio**
Add the user to the appropriate group and the application will become available in the Company Portal. It may take a few minutes to sync, but then your users can install the apps from Company Portal. 

Azure AD Group name | Which users to assign?   
 --- | ---
Modern Workplace-Office-Project_Install | Users needing Project
Modern Workplace-Office-Visio_Install | Users needing Visio

## Communicate changes
It’s important for IT administrators to let their users know how to install Project and Visio. This includes: 
- Notifying users when these applications are available to them. 
- Instructions on how to install these applications from the Company Portal.
