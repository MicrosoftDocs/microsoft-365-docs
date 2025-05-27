---
title: App and network requirements for Microsoft 365 Copilot admins
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 05/20/2025
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
description: Enterprise and company IT admins can learn about the Microsoft 365 app and network requirements for Microsoft 365 Copilot. Admins must configure features in popular apps, like OneDrive, Teams, Loop, and Whiteboard that allow Copilot. Allow the network and endpoint URLs for Microsoft 365 Copilot to work properly in your network solution. Check your app privacy settings and run the Office Feature Updates task.
ms.custom: [copilot-learning-hub]
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Microsoft 365 app and network requirements for Microsoft 365 Copilot

[Microsoft 365 Copilot](microsoft-365-copilot-overview.md) is an AI-powered productivity tool that integrates with Microsoft 365 Apps. This integration allows users to use Copilot in individual apps, such as Word, PowerPoint, Teams, Excel, Outlook, and more. The Copilot experiences are designed to provide users with an AI assistant in the apps they use every day.

As a result of this integration, there are some app and network requirements for Microsoft 365 Copilot to integrate with your Microsoft 365 apps. These requirements are nearly identical to the requirements for using Microsoft 365 Apps.

As part of your [Microsoft 365 Copilot adoption](microsoft-365-copilot-enablement-resources.md), make sure you configure the app and network requirements that allow the app integration.

:::image type="content" source="media/microsoft-365-copilot-enablement-resources/adopt-copilot-apps-privacy-network.svg" alt-text="Diagram that shows the app and network requirements step to adopt and enable Microsoft 365 Copilot." lightbox="media/microsoft-365-copilot-enablement-resources/adopt-copilot-apps-privacy-network.svg":::

This article lists the Microsoft 365 app and network requirements to use Microsoft 365 Copilot in your Microsoft 365 apps.

This article applies to:

- Microsoft 365 Copilot

## Prerequisites

- Users must have a Microsoft 365 license assigned to them. You can find the list of eligible base licenses in [Microsoft 365 Copilot license options](microsoft-365-copilot-licensing.md) or in the [Microsoft 365 Copilot service description guide](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot).

- Users must have [Microsoft Entra ID](/microsoft-365/admin/add-users/add-users) accounts. You can add or sync users using the [onboarding wizard in the Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/identitywizard).

## App requirements

- **[Microsoft 365 Apps](/deployoffice/about-microsoft-365-apps)** - The apps must be deployed. You can use the [Microsoft 365 Apps setup guide in the Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide) to deploy to your users.

  > [!NOTE]
  >
  > - For Copilot to work in Word Online, Excel Online, and PowerPoint Online, you must enable third-party cookies.
  > - Review your privacy settings for Microsoft 365 Apps. These settings might affect the availability of Microsoft 365 Copilot features. For more information, see [Microsoft 365 Copilot and privacy controls for connected experiences](microsoft-365-copilot-privacy.md#microsoft-365-copilot-and-privacy-controls-for-connected-experiences).
  > - Copilot isn't available when using device-based licensing for Microsoft 365 Apps for enterprise.

- **Microsoft OneDrive** - Some features in Microsoft 365 Copilot, such as file restore and OneDrive management, require that users have a [OneDrive account](/sharepoint/introduction). You can use the [OneDrive setup guide in the Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/onedrivequickstartguide) to enable OneDrive for your users.

- **Microsoft Outlook** - Microsoft 365 Copilot works with classic Outlook and new Outlook (for [Windows](https://support.microsoft.com/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627) and [Mac](https://support.microsoft.com/office/the-new-outlook-for-mac-6283be54-e74d-434e-babb-b70cefc77439)). Users can switch to the new Outlook by selecting **Try the new Outlook** in their existing Outlook client.

  > [!IMPORTANT]
  > Microsoft 365 Copilot is only supported on primary mailboxes that are hosted on Exchange Online. It isn't available on a user's archive mailbox, group mailboxes, or shared and delegate mailboxes that they have access to.

- **Microsoft Teams** - You can use the [Microsoft Teams setup guide in the Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home?Q=m365setup#/modernonboarding/microsoftteamssetupguide) to configure popular Teams settings, including external access, guest access, team creation permissions, and more. Copilot in Teams is available on Windows, Mac, web, Android, and iOS.

  To enable Copilot in Teams to reference meeting content after the meeting ends, enable transcription or meeting recording. To learn more about configuring transcription and recording, see [Configure transcription and captions for Teams meetings](/microsoftteams/meeting-transcription-captions) and [Teams meeting recording](/microsoftteams/meeting-recording).

- **Microsoft Teams Phone** - Copilot in [Teams Phone](/microsoftteams/what-is-phone-system-in-office-365) supports voice over Internet Protocol (VOIP) and public switched telephone network (PSTN) calls.

  - For support across VoIP calls, you need a Microsoft 365 Copilot license.
  - To use Copilot for PSTN calls, you need a Teams Phone license, a calling plan, and a Microsoft 365 Copilot license.
  - To enable Copilot in Teams Phone, you need to turn on transcription or recording.

  For VoIP callers, all participants see a notification that the call is being transcribed or recorded. For PSTN callers, all participants hear an announcement that the call is being recorded.

- **Microsoft Loop** - To use Microsoft 365 Copilot with Microsoft Loop, you must have Loop enabled for your tenant. You enable Loop in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/Settings/Services/:/Settings/L1/Loop) or the [Microsoft 365 Apps admin center](https://config.office.com) under **Customization** \| **Policy Management**.

  To learn more, see:

  - [Manage Loop workspaces in Syntex repository services](/microsoft-365/loop/loop-workspaces-configuration)
  - [Learn how to enable the Microsoft Loop app](https://techcommunity.microsoft.com/t5/microsoft-365-blog/learn-how-to-enable-the-microsoft-loop-app-now-in-public-preview/ba-p/3769013).

- **Microsoft Whiteboard** - To use Microsoft 365 Copilot with Microsoft Whiteboard, you must have Whiteboard enabled for your tenant. To learn more about Microsoft Whiteboard, see [Manage access to Microsoft Whiteboard for your organization](/microsoft-365/whiteboard/manage-whiteboard-access-organizations).

## Review app privacy

Review your Microsoft 365 apps privacy settings. The privacy settings in your Microsoft 365 apps can affect the availability of Microsoft 365 Copilot features. To ensure that users can access Copilot features, review the privacy settings in your Microsoft 365 apps.

To learn more, see [Microsoft 365 Copilot and privacy controls for connected experiences](microsoft-365-copilot-privacy.md#microsoft-365-copilot-and-privacy-controls-for-connected-experiences).

## Run the Office Feature Updates task

The Office Feature Updates task is required for core Copilot experiences in apps such as Word, PowerPoint, Excel, and OneNote, to work properly. This task should be allowed to run on its regular schedule, and allowed to access the required network resources.

For more information about the Office Feature Updates task, see [Office Feature Updates task description and FAQ](/microsoft-365/troubleshoot/updates/office-feature-updates-task-faq).

For more information about the network resources that should be allowed, see [Network requirements](#network-requirements) (in this article).

## Network requirements

Configure your network for Microsoft 365 Copilot. Copilot experiences are deeply integrated with Microsoft 365 applications and often use the same [network connections and endpoints that Microsoft 365 apps](/microsoft-365/enterprise/urls-and-ip-address-ranges) use.

Baseline network configuration customers should:

- Make sure that the Microsoft 365 endpoints listed in this section aren't blocked within their environment.
- Verify that their network setup follows [Microsoft 365 network connectivity principles and best practices](/microsoft-365/enterprise/microsoft-365-network-connectivity-principles).

✅ **Network endpoint requirements**:

- Allow the [worldwide Microsoft 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges).
- Allow traffic to the following domains:

  - `copilot.microsoft.com`, `*.copilot.microsoft.com`
  - `*.bing.com`, `*.bingapis.com`

  These network endpoints (domains) allow some Copilot scenarios to enable richer integrations, like Copilot experiences for the Web.

- Allow the [Copilot Chat network requirements](/copilot/manage#network-requirements).

✅ **WebSockets (WSS) protocol requirements**:

Verify that your network supports full WSS connectivity from user devices running Microsoft 365 applications to the following domains:

- Microsoft 365 Copilot enterprise experiences: `*.cloud.microsoft`, `*.office.com`
- Other Copilot experiences, including consumer: `*.bing.com`, `copilot.microsoft.com`, `*.copilot.microsoft.com`

Several Copilot integrations rely on WebSockets (WSS) to deliver a streamlined user experience. Some customer networks might not be configured to handle WSS connections properly, which can result in Copilot application failures. Typical network configurations that affect WSS include:

- The network perimeter blocks the WSS protocol
- Network devices attempting to perform Transport Layer Security (TLS) inspection of connections
- Proxy servers enforcing aggressive connection timeouts

✅ **FQDNs and subdomains**:

Some organization might prefer to use granular definitions of endpoints, like individual FQDNs, instead of wildcards to configure their network settings. Due to hyperscale and the dynamic nature of its services, Microsoft 365 can't provide specific FQDNs used by individual features and scenarios. Doing so would result in unmanageable configuration surface, constant customer network changes, and connectivity incidents.

When you review and implement the recommended network configurations, consider all the FQDNs and subdomains where wildcards are specified. These wildcards include functionally that the referenced scenarios require.

✅ **cloud.microsoft domain**:

Microsoft plans to consolidate Copilot experiences for Microsoft 365 under the `*.cloud.microsoft` domain. And, Copilot network requirements and associated required customer network configurations can be further simplified.

To learn more, see [Unified cloud.microsoft domain for Microsoft 365 apps](/microsoft-365/enterprise/cloud-microsoft-domain).

## Related content

- [Microsoft 365 Copilot setup guide in the Microsoft admin center](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide)
- [Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts)
- [Microsoft 365 Copilot - Microsoft Community Hub](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/ct-p/Microsoft365Copilot)
- [Microsoft 365 Copilot adoption guide and overview for IT admins](microsoft-365-copilot-reports-for-admins.md)
