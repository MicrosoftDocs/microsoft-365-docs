---
title: "Microsoft 365 Copilot requirements"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 10/05/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
- m365copilot
description: "Learn about the requirements for Microsoft 365 Copilot."
---

# Microsoft 365 Copilot requirements

The integration of Microsoft 365 Copilot and Microsoft 365 Apps for enterprise enables Copilot experiences to take place inside individual apps, such as Word, PowerPoint, Teams, Excel, Outlook, and more. As a result of this integration, the requirements for using Microsoft 365 Copilot are nearly identical to the requirements for using Microsoft 365 Apps for enterprise.

## Prerequisites

The following are the prerequisites for using Microsoft 365 Copilot. If your organization uses Microsoft 365 E3 or E5 today, then you likely already meet most of these prerequisites.

### Microsoft 365 Apps for enterprise

[Microsoft 365 Apps for enterprise](/deployoffice/about-microsoft-365-apps) must be deployed. Use the [Microsoft 365 Apps setup guide](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/microsoft365appssetup) in the Microsoft 365 admin center to deploy to your users.

### Microsoft Entra ID

Users must have [Microsoft Entra ID](/microsoft-365/admin/add-users/add-users) (formerly Azure Active Directory) accounts. You can add or sync users using the [onboarding wizard](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/identitywizard) in the Microsoft 365 admin center.

### Microsoft OneDrive

Some features in Microsoft 365 Copilot, such as file restore and OneDrive management, require that users have a [OneDrive account](/sharepoint/introduction). You can use the [OneDrive setup guide](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/onedrivequickstartguide) in the Microsoft 365 admin center to enable OneDrive for your users.

### Microsoft Outlook

Microsoft 365 Copilot works with the new Outlook (for [Windows](https://support.microsoft.com/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627) and [Mac](https://support.microsoft.com/office/the-new-outlook-for-mac-6283be54-e74d-434e-babb-b70cefc77439)), which are currently in preview. Users can switch to the new Outlook by selecting **Try the new Outlook** in their existing Outlook client.

To have Copilot appear in the new Outlook, you'll need to sync your Microsoft 365 settings. To do this, go to [View and manage your Microsoft 365 settings](https://myaccount.microsoft.com/settingsandprivacy/language).

### Microsoft Teams

You can use the [Microsoft Teams setup guide](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/microsoftteamssetupguide) in the Microsoft 365 admin center to configure popular Teams settings, including external access, guest access, team creation permissions, and more.  Copilot in Teams is available on Windows, Mac, web, Android, and iOS.

### Microsoft Loop

To use Microsoft 365 Copilot with Microsoft Loop, you must have Loop enabled for your tenant. This can be done in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/Settings/Services/:/Settings/L1/Loop) or the [Microsoft 365 Apps admin center](https://config.office.com) under **Customization** \| **Policy Management**. For more information, see [Manage Loop workspaces in Syntex repository services](/microsoft-365/loop/loop-workspaces-configuration) and [Learn how to enable the Microsoft Loop app, now in Public Preview](https://techcommunity.microsoft.com/t5/microsoft-365-blog/learn-how-to-enable-the-microsoft-loop-app-now-in-public-preview/ba-p/3769013).

### Update channels

User devices must be on either Current Channel or Monthly Enterprise Channel to access Microsoft 365 Copilot features. In November, Copilot will initially be available on Current Channel, and Monthly Enterprise Channel a month later. To learn more about update channels, see [update channels for Microsoft 365 Apps](/deployoffice/updates/overview-update-channels#current-channel-overview).

## Network requirements

Copilot services connect to endpoints contained within the [Microsoft 365 endpoint taxonomy](https://aka.ms/o365ip). As with all Microsoft 365 services, we recommend that customers align their network with the [Microsoft 365 network connectivity principles](/microsoft-365/enterprise/microsoft-365-network-connectivity-principles). This helps provide the best experience with Copilot through minimization of latency and increased network quality of service for critical network flows.

There are many Copilot experiences, including some core experiences like Excel, Word, PowerPoint, Teams, and Loop, that use WebSocket connections (wss://) from the device running the Microsoft 365 app to a Microsoft service. So, to use these Copilot experiences, WebSocket connections must be allowed from user endpoints to the endpoints listed in our endpoint taxonomy, specifically in ID number 46 in the section for [Microsoft 365 Common and Office Online](/microsoft-365/enterprise/urls-and-ip-address-ranges).

## License requirements

Microsoft 365 Copilot users require a license for Microsoft 365 E3 or Microsoft 365 E5, as well as a license for Microsoft 365 Copilot. You can use the [Microsoft 365 Copilot setup guide](https://go.microsoft.com/fwlink/p/?linkid=2243702) in the Microsoft 365 admin center to assign the required licenses to users. For more information, see [Assign licenses to users in the Microsoft 365 admin center](/microsoft-365/admin/manage/assign-licenses-to-users).

The Semantic Index for Microsoft 365 Copilot also requires a license for Microsoft 365 E3 or E5.

## Privacy settings for Microsoft 365 Apps for enterprise

Review your privacy settings for Microsoft 365 Apps for enterprise because those settings might have an effect on the availability of Microsoft 365 Copilot features. For more information, see [Microsoft 365 Copilot and policy settings for connected experiences](microsoft-365-copilot-privacy.md#microsoft-365-copilot-and-policy-settings-for-connected-experiences).
