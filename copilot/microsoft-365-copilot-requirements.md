---
title: "Microsoft Copilot for Microsoft 365 requirements"
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
description: "Learn about the requirements for Microsoft Copilot for Microsoft 365."
---

# Microsoft Copilot for Microsoft 365 requirements

The integration of Microsoft Copilot for Microsoft 365 and Microsoft 365 Apps enables Copilot experiences to take place inside individual apps, such as Word, PowerPoint, Teams, Excel, Outlook, and more. As a result of this integration, the requirements for using Microsoft Copilot for Microsoft 365 are nearly identical to the requirements for using Microsoft 365 Apps.

## Prerequisites

The following are the prerequisites for using Microsoft Copilot for Microsoft 365. Copilot for Microsoft 365 requires the user to have a prerequisite base license assigned. You can find the list of eligible base licenses in the [Microsoft Copilot for Microsoft 365 service description guide](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot).

### Microsoft 365 Apps

[Microsoft 365 Apps](/deployoffice/about-microsoft-365-apps) must be deployed. Use the [Microsoft 365 Apps setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide) in the Microsoft 365 admin center to deploy to your users.

> [!NOTE]
> - For Copilot to work in Word Online, Excel Online, and PowerPoint Online, you need to have third-party cookies enabled.
> - Review your privacy settings for Microsoft 365 Apps because those settings might have an effect on the availability of Microsoft Copilot for Microsoft 365 features. For more information, see [Microsoft Copilot for Microsoft 365 and policy settings for connected experiences](microsoft-365-copilot-privacy.md#microsoft-copilot-for-microsoft-365-and-policy-settings-for-connected-experiences).

### Microsoft Entra ID

Users must have [Microsoft Entra ID](/microsoft-365/admin/add-users/add-users) (formerly Azure Active Directory) accounts. You can add or sync users using the [onboarding wizard](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/identitywizard) in the Microsoft 365 admin center.

### Microsoft OneDrive

Some features in Microsoft Copilot for Microsoft 365, such as file restore and OneDrive management, require that users have a [OneDrive account](/sharepoint/introduction). You can use the [OneDrive setup guide](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/onedrivequickstartguide) in the Microsoft 365 admin center to enable OneDrive for your users.

### Microsoft Outlook

Microsoft Copilot for Microsoft 365 works with the new Outlook (for [Windows](https://support.microsoft.com/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627) and [Mac](https://support.microsoft.com/office/the-new-outlook-for-mac-6283be54-e74d-434e-babb-b70cefc77439)), which are currently in preview. Users can switch to the new Outlook by selecting **Try the new Outlook** in their existing Outlook client.

To have Copilot appear in the new Outlook, you need to sync your Microsoft 365 settings. To do this, go to [View and manage your Microsoft 365 settings](https://myaccount.microsoft.com/settingsandprivacy/language). If the Copilot icon does not appear in the new Outlook, try changing the Display language of your Microsoft 365 to one of the languages supported by Microsoft Copilot for Microsoft 365.

Microsoft Copilot for Microsoft 365 will be supported on classic Outlook for Windows (Win32 desktop app) in the future. You can [review the roadmap item here](https://www.microsoft.com/microsoft-365/roadmap?rtc=1&filters=Outlook&searchterms=copilot).

### Microsoft Teams

You can use the [Microsoft Teams setup guide](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/microsoftteamssetupguide) in the Microsoft 365 admin center to configure popular Teams settings, including external access, guest access, team creation permissions, and more.  Copilot in Teams is available on Windows, Mac, web, Android, and iOS.

To enable Copilot in Teams to reference meeting content after the meeting has ended, transcription or meeting recording must be enabled. To learn more about configuring transcription and recording, see [Configure transcription and captions for Teams meetings](/microsoftteams/meeting-transcription-captions) and [Teams meeting recording](/microsoftteams/meeting-recording).

### Microsoft Teams Phone

Copilot in [Teams Phone](/microsoftteams/what-is-phone-system-in-office-365) supports both voice over Internet Protocol (VOIP) and public switched telephone network (PSTN) calls. For support across VoIP calls, you'll need a Microsoft Copilot for Microsoft 365 license. To use Copilot for PSTN calls, you'll need a Teams Phone license and a calling plan in addition to the Microsoft Copilot for Microsoft 365 license.

To enable Copilot in Teams Phone, you need to turn on transcription or recording. For VoIP callers, all participants see a notification that the call is being transcribed or recorded. For PSTN callers, all participants will hear an announcement that the call is being recorded.

### Microsoft Loop

To use Microsoft Copilot for Microsoft 365 with Microsoft Loop, you must have Loop enabled for your tenant. This can be done in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/Settings/Services/:/Settings/L1/Loop) or the [Microsoft 365 Apps admin center](https://config.office.com) under **Customization** \| **Policy Management**. For more information, see [Manage Loop workspaces in Syntex repository services](/microsoft-365/loop/loop-workspaces-configuration) and [Learn how to enable the Microsoft Loop app, now in Public Preview](https://techcommunity.microsoft.com/t5/microsoft-365-blog/learn-how-to-enable-the-microsoft-loop-app-now-in-public-preview/ba-p/3769013).

### Microsoft Whiteboard

To use Microsoft Copilot for Microsoft 365 with Microsoft Whiteboard, you must have Whiteboard enabled for your tenant. To learn more about Microsoft Whiteboard, see [Manage access to Microsoft Whiteboard for your organization](/microsoft-365/whiteboard/manage-whiteboard-access-organizations).

## License requirements

Copilot for Microsoft 365 is an add-on plan with the following licensing prerequisites:

- Microsoft 365 E5
- Microsoft 365 E3
- Office 365 E3  
- Office 365 E5
- Microsoft 365 A5 for faculty
- Microsoft 365 A3 for faculty
- Office 365 A5 for faculty
- Office 365 A3 for faculty
- Microsoft 365 Business Standard
- Microsoft 365 Business Premium

You can use the [Microsoft Copilot for Microsoft 365 setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide) in the Microsoft 365 admin center to assign the required licenses to users. For more information, see [Assign licenses to users in the Microsoft 365 admin center](/microsoft-365/admin/manage/assign-licenses-to-users).

## Update channels

Microsoft Copilot for Microsoft 365 will follow Microsoft 365 Apps' standard practice for deployment and updates, being available in all update channels, except for Semi-annual channel. Preview channels include Insiders, Current Channel - Preview and Beta Channel. Production channels include Current Channel and then Monthly Enterprise Channel.

Copilot is available in Current Channel, and starting December 12, on Monthly Enterprise Channel. As always, preview channels are a great option to validate the product before rolling out to the rest of organization. To learn more, see To learn more, see [Overview of update channels](/deployoffice/updates/overview-update-channels), and the [Microsoft 365 Insider channels](/deployoffice/insider/compare-channels).

## Network requirements

Copilot services connect to endpoints contained within the [Microsoft 365 endpoint taxonomy](https://aka.ms/o365ip). As with all Microsoft 365 services, we recommend that customers align their network with the [Microsoft 365 network connectivity principles](/microsoft-365/enterprise/microsoft-365-network-connectivity-principles). This helps provide the best experience with Copilot through minimization of latency and increased network quality of service for critical network flows.

There are many Copilot experiences, including some core experiences like Excel, Word, PowerPoint, Teams, and Loop, that use WebSocket connections (wss://) from the device running the Microsoft 365 app to a Microsoft service. So, to use these Copilot experiences, WebSocket connections must be allowed from user endpoints to the endpoints listed in our endpoint taxonomy, specifically in ID number 147 in the section for [Microsoft 365 Common and Office Online](/microsoft-365/enterprise/urls-and-ip-address-ranges).

## Conditional Access

While Copilot supports Conditional Access Policies in SharePoint Online configured to target "all cloud apps" or "Office 365 group," Microsoft Copilot does not currently support Conditional Access policies configured to the SharePoint Online app directly. We anticipate deploying a change in coming weeks.

## Restricted Access Control

Microsoft Copilot does not currently support Restricted Access Control and Microsoft Purview Information Barriers (Implicit and Owner moderated mode) on sites. Support for both policies is intended.  We anticipate deploying a change in coming weeks.
