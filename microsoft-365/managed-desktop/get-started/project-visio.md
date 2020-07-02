---
title: Install Microsoft Project or Microsoft Visio on Microsoft Managed Desktop devices 
description: Info on installing Microsoft Project or Microsoft Visio on Microsoft Managed Desktop devices 
keywords: Microsoft Managed Desktop, Microsoft 365, Microsoft Project, Microsoft Visio
ms.service: m365-md
author: jaimeo
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
After you submit your support request, Microsoft Managed Desktop will create three Azure AD groups and three application deployments through Microsoft Intune to deploy the apps to your tenant.  

**To deploy Project and Visio**
1. **File a support request** IT administrators need to file a support request to make these applications available their users. For information on contacting Microsoft Managed Desktop, see [Admin support for Microsoft Managed Desktop](../working-with-managed-desktop/admin-support.md).
2. **Assign users to new Azure AD groups** Microsoft Managed Desktop will create 3 Azure AD groups in your tenant and 3 corresponding application deployments. IT admins need to assign the users to the appropriate groups.

>[!NOTE]
>Assign users to only one of these Azure AD groups. 

Azure AD Group name | Which users to assign?   
 --- | ---
Modern Workplace-Office-Project_Install | Users needing Project
Modern Workplace-Office-Visio_Install | Users needing Visio

Once assigned to these groups, applications will be available in the Company Portal. It may take a few minutes to sync, but then your users can install the apps from Company Portal. 

## Communicate changes
It’s important for IT administrators to let their users know how to install Project and Visio. This includes: 
- Notifying users when these applications are available to them. 
- Instructions on how to install these applications from the Company Portal.

>[!NOTE]
>Users must close all Office applications before installing Microsoft Project or Microsoft Visio from Company Portal. 
