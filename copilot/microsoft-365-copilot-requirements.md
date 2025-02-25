---
title: "Microsoft 365 Copilot requirements"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 11/19/2024
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
description: "Learn about the requirements for Microsoft 365 Copilot."
ms.custom: [copilot-learning-hub]
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Microsoft 365 Copilot requirements

The integration of Microsoft 365 Copilot and Microsoft 365 Apps enables Copilot experiences to take place inside individual apps, such as Word, PowerPoint, Teams, Excel, Outlook, and more. As a result of this integration, the requirements for using Microsoft 365 Copilot are nearly identical to the requirements for using Microsoft 365 Apps.

## Prerequisites

The following are the prerequisites for using Microsoft 365 Copilot. Microsoft 365 Copilot requires the user to have a prerequisite base license assigned. You can find the list of eligible base licenses in the [license requirements](#license-requirements) section or in the [Microsoft 365 Copilot service description guide](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot).

### Microsoft 365 Apps

[Microsoft 365 Apps](/deployoffice/about-microsoft-365-apps) must be deployed. In the Microsoft 365 admin center, use the [Microsoft 365 Apps setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide) to deploy to your users.

> [!NOTE]
>
> - For Copilot to work in Word Online, Excel Online, and PowerPoint Online, you need to have third-party cookies enabled.
> - Review your privacy settings for Microsoft 365 Apps because those settings might have an effect on the availability of Microsoft 365 Copilot features. For more information, see [Microsoft 365 Copilot and privacy controls for connected experiences](microsoft-365-copilot-privacy.md#microsoft-365-copilot-and-privacy-controls-for-connected-experiences).
> - Copilot isn't available when using device-based licensing for Microsoft 365 Apps for enterprise.

### Microsoft Entra ID

Users must have [Microsoft Entra ID](/microsoft-365/admin/add-users/add-users) (formerly Azure Active Directory) accounts. You can add or sync users using the [onboarding wizard](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/identitywizard) in the Microsoft 365 admin center.

### Microsoft OneDrive

Some features in Microsoft 365 Copilot, such as file restore and OneDrive management, require that users have a [OneDrive account](/sharepoint/introduction). You can use the [OneDrive setup guide](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/onedrivequickstartguide) in the Microsoft 365 admin center to enable OneDrive for your users.

### Microsoft Outlook

Microsoft 365 Copilot works with classic Outlook and new Outlook (for [Windows](https://support.microsoft.com/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627) and [Mac](https://support.microsoft.com/office/the-new-outlook-for-mac-6283be54-e74d-434e-babb-b70cefc77439)). Users can switch to the new Outlook by selecting **Try the new Outlook** in their existing Outlook client.

> [!IMPORTANT]
> Microsoft 365 Copilot is only supported on primary mailboxes that are hosted on Exchange Online. It is not available on a user's archive mailbox, group mailboxes, or shared and delegate mailboxes that they have access to.

### Microsoft Teams

You can use the [Microsoft Teams setup guide](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/microsoftteamssetupguide) in the Microsoft 365 admin center to configure popular Teams settings, including external access, guest access, team creation permissions, and more. Copilot in Teams is available on Windows, Mac, web, Android, and iOS.

To enable Copilot in Teams to reference meeting content after the meeting has ended, transcription or meeting recording must be enabled. To learn more about configuring transcription and recording, see [Configure transcription and captions for Teams meetings](/microsoftteams/meeting-transcription-captions) and [Teams meeting recording](/microsoftteams/meeting-recording).

### Microsoft Teams Phone

Copilot in [Teams Phone](/microsoftteams/what-is-phone-system-in-office-365) supports both voice over Internet Protocol (VOIP) and public switched telephone network (PSTN) calls. For support across VoIP calls, you'll need a Microsoft 365 Copilot license. To use Copilot for PSTN calls, you'll need a Teams Phone license and a calling plan in addition to the Microsoft 365 Copilot license.

To enable Copilot in Teams Phone, you need to turn on transcription or recording. For VoIP callers, all participants see a notification that the call is being transcribed or recorded. For PSTN callers, all participants will hear an announcement that the call is being recorded.

### Microsoft Loop

To use Microsoft 365 Copilot with Microsoft Loop, you must have Loop enabled for your tenant. This can be done in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/Settings/Services/:/Settings/L1/Loop) or the [Microsoft 365 Apps admin center](https://config.office.com) under **Customization** \| **Policy Management**. For more information, see [Manage Loop workspaces in Syntex repository services](/microsoft-365/loop/loop-workspaces-configuration) and [Learn how to enable the Microsoft Loop app, now in Public Preview](https://techcommunity.microsoft.com/t5/microsoft-365-blog/learn-how-to-enable-the-microsoft-loop-app-now-in-public-preview/ba-p/3769013).

### Microsoft Whiteboard

To use Microsoft 365 Copilot with Microsoft Whiteboard, you must have Whiteboard enabled for your tenant. To learn more about Microsoft Whiteboard, see [Manage access to Microsoft Whiteboard for your organization](/microsoft-365/whiteboard/manage-whiteboard-access-organizations).

### Office Feature Updates task

The Office Feature Updates task is required for core Copilot experiences in apps such as Word, PowerPoint, Excel, and OneNote, to work properly. This task should be allowed to run on its regular schedule, and allowed to access the required network resources.

For more information about the Office Feature Updates task, see [Office Feature Updates task description and FAQ](/microsoft-365/troubleshoot/updates/office-feature-updates-task-faq). For more information about which network resources should be allowed, see [Network requirements](#network-requirements).

## License requirements

See [Understand licensing for Microsoft 365 Copilot](microsoft-365-copilot-licensing.md).

## Update channels

Microsoft 365 Copilot will follow the standard practice of deployment and updates for Microsoft 365 Apps, being available in all update channels, except for Semi-Annual Enterprise Channel. Preview channels (also known as Microsoft 365 Insider) include Current Channel (Preview) and Beta Channel. Production channels include Current Channel and  Monthly Enterprise Channel.

Copilot is available in Current Channel and in Monthly Enterprise Channel. As always, preview channels are a great option to validate the product before rolling out to the rest of organization. To learn more, see [Overview of update channels](/deployoffice/updates/overview-update-channels) and [Microsoft 365 Insider channels](/deployoffice/insider/compare-channels).

## Network requirements

Copilot experiences are deeply integrated with Microsoft 365 applications and often use the same [network connections and endpoints that Microsoft 365 apps](/microsoft-365/enterprise/urls-and-ip-address-ranges) use. As such, baseline network configuration customers should ensure that Microsoft 365 endpoints are not blocked within their environment and that network setup follows [Microsoft 365 network connectivity principles](/microsoft-365/enterprise/microsoft-365-network-connectivity-principles) and best practices.

In addition to [standard Microsoft 365 domains and IPs](/microsoft-365/enterprise/urls-and-ip-address-ranges), there are some extra network endpoints (domains) that Copilot scenarios may need to connect to enable richer integrations (such as Copilot experiences for the Web). Customers should ensure that traffic to these domains is also not blocked by their network solutions:

- copilot.microsoft.com, *.copilot.microsoft.com
- *.bing.com, *.bingapis.com
- challenges.cloudflare.com

> [!IMPORTANT]
> Several Copilot integrations rely on WebSockets (WSS) to deliver a streamlined user experience. Some customer networks may not be configured to handle WSS connections properly, which may result in Copilot application failures. Typical network configurations that impact WSS include:
>
>- WSS protocol is blocked by the network perimeter
>- Network devices attempting to perform TLS inspection of connections
>- Proxy servers enforcing aggressive connection timeouts

Microsoft recommends that customers verify that their network supports full WSS connectivity (including addressing the issues above) from user devices running Microsoft 365 applications to the following domains:

- Microsoft 365 Copilot experiences (Enterprise): *.cloud.microsoft, *.office.com
- Additional Copilot experiences (including Consumer): *.bing.com, copilot.microsoft.com, *.copilot.microsoft.com

>[!NOTE]
> Some customers may prefer to use granular definitions of endpoints (such as individual FQDNs) instead of wildcards to configure their network settings. However, due to hyperscale, and the dynamic nature of its services, Microsoft 365 is unable to provide specific FQDNs used by individual features and scenarios. Doing so would result in unmanageable configuration surface, constant customer network changes and connectivity incidents. When reviewing and implementing recommended network configurations, customers should consider all FQDNs and subdomains where wildcards are specified as functionally required for the referenced scenarios.

In the future, we plan to consolidate Copilot experiences for Microsoft 365 under the *.cloud.microsoft domain and Copilot network requirements and associated required customer network configurations can be further simplified.

## More resources

- [Microsoft 365 Copilot setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide)
- [Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts)
- [Microsoft 365 Copilot - Microsoft Community Hub](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/ct-p/Microsoft365Copilot)
