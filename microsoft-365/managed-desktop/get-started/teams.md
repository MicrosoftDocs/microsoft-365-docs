---
title: Microsoft Teams
description: How Teams is installed on devices and updated afterwards 
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation, apps, line-of-business apps, LOB apps
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
audience: ITPro
---

# Microsoft Teams

[Teams](https://www.microsoft.com/microsoft-365/microsoft-teams/group-chat-software) is a [messaging app](https://support.microsoft.com/office/microsoft-teams-basics-6d5f52e6-5306-4096-ac24-c3082b79eaf0) for your organization that also provides a workspace for real-time collaboration and communication, meetings, and file and app sharing.

## Initial deployment

Most hardware vendors don't yet include Teams as a part of their images, so Microsoft Managed Desktop deploys Teams to your devices by using Microsoft Intune. All managed devices have the [Teams .msi package](/MicrosoftTeams/msi-deployment#how-the-microsoft-teams-msi-package-works) installed, ensuring that all users who sign in to a device have Microsoft Teams ready to use. When the package first finishes installing, Teams automatically starts and adds a shortcut to the desktop.

### Microsoft Intune changes

Microsoft Managed Desktop adds two applications to your Azure AD organization for Microsoft Teams. They are deployed to either 64-bit or 32-bit clients as appropriate for the device:  

- Modern Workplace – Teams Machine Wide Installer x64  
- Modern Workplace – Teams Machine Wide Installer x32

## Updates

Teams follows a separate update path from Microsoft 365 Apps for enterprise and the desktop client updates itself automatically. Teams checks for updates every few hours, downloads them, and then waits for the computer to be idle before silently installing the update.  

The Teams product group doesn't allow admins to control updates, so Microsoft Managed Desktop uses the [standard automatic update channel](/microsoftteams/teams-client-update#can-admins-deploy-updates-instead-of-teams-auto-updating).

### Manually updating Teams

Individual users can also download updates by selecting **Check for updates** on the **Profile** drop-down menu at the top right of the app. If an update is available, it will be downloaded and silently installed when the computer is idle.

## Delivery optimization of updates

Delivery optimization for Teams updates is turned on by default and requires no action from admins or users.