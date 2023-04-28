---
title: "Detect channel signals with communication compliance"
description: "Learn more about detecting channel signals with communication compliance."
keywords: Microsoft 365, Microsoft Purview, compliance, communication compliance
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 04/17/2023
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.SupervisoryReview'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MET150
- MOE150
---

# Detect channel signals with communication compliance

> [!IMPORTANT]
> Microsoft Purview Communication Compliance provides the tools to help organizations detect regulatory compliance (for example, SEC or FINRA) and business conduct violations such as sensitive or confidential information, harassing or threatening language, and sharing of adult content. Built with privacy by design, usernames are pseudonymized by default, role-based access controls are built in, investigators are opted in by an admin, and audit logs are in place to help ensure user-level privacy.

With communication compliance policies, you can choose to analyze messages in one or more of the following communication platforms as a group or as standalone sources. Original messages captured across these platforms are retained in the original platform location in accordance with your organization's [retention and hold policies](/microsoft-365/compliance/information-governance). Copies of messages used by communication compliance policies for analysis and investigation are retained for as long as a policy is in place, even if users leave your organization and their mailboxes are deleted. When a communication policy is deleted, copies of messages associated with the policy are also deleted.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Microsoft Teams

You can analyze chats in public and private Microsoft Teams channels and individual communications. When users are assigned to a communication compliance policy with Microsoft Teams coverage selected, chat communications are automatically detected across all Microsoft Teams where users are a member. 

Watch the video below to learn how to detect communication risks in Microsoft Teams with communication compliance:
   <br>
   <br>
   >[!VIDEO https://www.microsoft.com/videoplayer/embed/RW11p2Z]

Microsoft Purview Communication Compliance automatically includes Microsoft Teams coverage for pre-defined policy templates and is selected as the default in the custom policy template. Teams chats matching communication compliance policy conditions may take up to 48 hours to process.

For Teams private chat and private channels, communication compliance policies support [Shared Channels](/MicrosoftTeams/shared-channels) and modern attachment analysis. Shared Channels support in Teams is handled automatically and doesn't require additional communication compliance configuration changes. The following table summarizes communication compliance behavior when sharing Teams channels with groups and users:

|**Scenario**|**Communication compliance behavior**|
|:-----------|:------------------------------------|
| **Share a channel with an internal team** | Communication compliance policies apply to in-scope users and all messages in the shared channel |
| **Share a channel with an external team** | Communication compliance policies apply to internal in-scope users and messages in the shared channel for the internal organization |

Modern attachments are files sourced from [OneDrive](/onedrive/plan-onedrive-enterprise#modern-attachments) or [SharePoint](/sharepoint/dev/solution-guidance/modern-experience-customizations) sites that are included in Teams messages. Text is automatically extracted from these attachments for automated processing and potential matches with active communication compliance policy conditions and classifiers. There isn't any additional configuration necessary for modern attachment detection and processing. Text is only extracted for attachments matching policy conditions at the time the message is sent. Text isn't extracted for attachments for messages with policy matches, even if the attachment also has a policy match.

Modern attachment analysis is supported for the following file types:

- Microsoft Word (.docx)
- Microsoft Excel (.xlsx)
- Microsoft PowerPoint (.pptx)
- Text (.txt)
- Portable Document Format (.pdf)

Extracted text for modern attachments is included with the associated message on the **Pending** tab of the policy's dashboard. The extracted text for an attachment is named as the attachment file name (and format extension) and the .txt extension. For example, the extracted text for an attachment named *ContosoBusinessPlan.docx* would appear as *ContosoBusinessPlan.docx.txt* in the **Pending** tab of the policy's dashboard.

Select the extracted attachment text to view the details in the *Source* and *Plain text* views. After reviewing, you can resolve or take action on the attachment text using the command bar controls. You can also download the attachment for review outside of the communication compliance review process.

Use the following group management configurations to bring individual user chats and channel communications in Teams in scope:

- **For Teams chats:** Assign individual users or assign a [distribution group](https://support.office.com/article/Distribution-groups-E8BA58A8-FAB2-4AAF-8AA1-2A304052D2DE) to the communication compliance policy. This setting is for one-to-one or one-to-many user/chat relationships.
- **For Teams channel communications:** Assign every Microsoft Teams channel or Microsoft 365 group you want to analyze that contains a specific user to the communication compliance policy. If you add the same user to other Microsoft Teams channels or Microsoft 365 groups, be sure to add these new channels and groups to the communication compliance policy. If any member of the channel is a scoped user within a policy and the *Inbound* direction is configured in a policy, all messages sent within the channel are subject to review, and potential policy matches (even for users in the channel that aren't explicitly scoped). For example, User A is the owner or a member of a channel. User B and User C are members of the same channel and use language that is matched to the potentially inappropriate content policy that applies only to User A. User B and User C create policy matches for conversations within the channel even though they aren't directly scoped in the potentially inappropriate content policy. Teams conversations between User B and User C that are outside of the channel and include User A wouldn't be subject to the potentially inappropriate content policy that includes User A. To exclude channel members from being scoped when other members of the channel are explicitly scoped, turn off the *Inbound* communication direction setting in the applicable communication compliance policy.
- **For Teams chats with hybrid email environments**: Communication compliance can detect chat messages for organizations with an Exchange on-premises deployment or an external email provider that has enabled Microsoft Teams. You must create a distribution group for the users with on-premises or external mailboxes. When creating a communication compliance policy, you'll assign this distribution group using the **Choose users and groups** selection in the policy wizard. For more information about the requirements and limitations for enabling cloud-based storage and Teams support for on-premises users, see [Search for Teams chat data for on-premises users](/microsoft-365/compliance/search-cloud-based-mailboxes-for-on-premises-users).

> [!TIP]
> For a more flexible configuration and to reduce administrative overhead, consider using an [adaptive scope](purview-adaptive-scopes.md) instead of a distribution group.

## Exchange

Mailboxes hosted on Microsoft Exchange Online as part of your Microsoft 365 or Office 365 subscription are all eligible for message analysis. Exchange email messages and attachments matching communication compliance policy conditions may take approximately 24 hours to process. Supported attachment types for communication compliance are the same as the [file types supported for Exchange mail flow rule content inspections](/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments#supported-file-types-for-mail-flow-rule-content-inspection).

## Yammer

Private messages and public conversations and associated attachments in Microsoft Yammer communities can also be analyzed. When users are added to a communication compliance policy that includes Yammer as a defined channel, communications across all Yammer communities that a user is a member of are included in the analysis. Yammer chats and attachments matching communication compliance policy conditions may take up to 24 hours to process. 

Yammer must be configured in [Native Mode](/yammer/configure-your-yammer-network/overview-native-mode) for communication compliance policies to detect Yammer communications and attachments. In Native Mode, all Yammer users are in Azure Active Directory, all groups are Office 365 Groups, and all files are stored in SharePoint Online.

## Third-party sources

You can analyze communications for data imported into all mailboxes in your Microsoft 365 organization from third-party sources like [Instant Bloomberg](/microsoft-365/compliance/archive-instant-bloomberg-data), [Slack](/microsoft-365/compliance/archive-slack-data), [Zoom](/microsoft-365/compliance/archive-zoommeetings-data), SMS, and many others. For a full list of connectors supported in communication compliance, see [Learn about connectors for third-party data](/microsoft-365/compliance/archive-third-party-data).

You must configure a [third-party connector](/microsoft-365/compliance/archive-third-party-data) for your Microsoft 365 organization before you can assign the connector to a communication compliance policy. The **Third-Party Sources** section of the communication compliance policy wizard only displays currently configured third-party connectors.

## Channel limits

|**Channel**|**Current limit**|
|:----------|:----------------|
| All channels | Maximum of 25 attachments per policy match |
| Teams | Maximum of 250 users for public channel messages for static scopes with users |
| Teams | No support or coverage for public channel messages for adaptive scopes with users |
|||
