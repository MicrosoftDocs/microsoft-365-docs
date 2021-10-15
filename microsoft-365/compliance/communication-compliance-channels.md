---
title: "Detect channel signals with communication compliance"
description: "Learn more about detecting channel signals with communication compliance."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.SupervisoryReview'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
- MOE150
---

# Detect channel signals with communication compliance

With communication compliance policies, you can choose to scan messages in one or more of the following communication platforms as a group or as standalone sources. Communications captured across these platforms are retained for seven years for each policy by default, even if users leave your organization and their mailboxes are deleted.

## Microsoft Teams

Chat communications in both public and private Microsoft Teams channels and individual chats can be scanned. When users are assigned to a communication compliance policy with Microsoft Teams coverage selected, chat communications for the users are automatically monitored across all Microsoft Teams where the users are a member. Microsoft Teams coverage is automatically included for pre-defined policy templates and is selected by default in the custom policy template. Teams chats matching communication compliance policy conditions may take up to 48 hours to process.

For private chat and private channels, communication compliance policies support Modern attachment scanning. Modern attachments are files sourced from [OneDrive](/onedrive/plan-onedrive-enterprise#modern-attachments) or [SharePoint](/sharepoint/dev/solution-guidance/modern-experience-customizations) sites that are included in Teams messages. Text is automatically extracted from these attachments for automated processing and potential matches with active communication compliance policy conditions and classifiers. There isn't any additional configuration necessary for Modern attachment detection and processing. Text is only extracted for attachments matching policy conditions. Text isn't extracted for attachments for messages with policy matches, even if the attachment also has a policy match.

Modern attachment scanning is supported for the following file types:

- Microsoft Word (.docx)
- Microsoft Excel (.xlsx)
- Microsoft PowerPoint (.pptx)
- Text (.txt)
- Portable Document Format (.pdf)

Extracted text for Modern attachments is included with the associated message on the **Pending** alerts dashboard for a policy. The extracted text for an attachment is named as the attachment file name (and format extension) and the .txt extension. For example, the extracted text for an attachment named *ContosoBusinessPlan.docx* would appear as *ContosoBusinessPlan.docx.txt* in the **Pending** alerts dashboard for a policy.

Select the extracted attachment text to view the details in the *Source*, *Plain text*, or *Annotate* views. After reviewing, you can resolve or take action on the attachment text using the command bar controls. You also have the option to download the attachment for review outside of the communication compliance review process.

Use the following group management configurations to supervise individual user chats and channel communications in Teams:

- **For Teams chat communications:** Assign individual users or assign a [distribution group](https://support.office.com/article/Distribution-groups-E8BA58A8-FAB2-4AAF-8AA1-2A304052D2DE) to the communication compliance policy. This setting is for one-to-one or one-to-many user/chat relationships.
- **For Teams Channel communications:** Assign every Microsoft Teams channel or Microsoft 365 group you want to scan that contains a specific user to the communication compliance policy. If you add the same user to other Microsoft Teams channels or Microsoft 365 groups, be sure to add these new channels and groups to the communication compliance policy. If any member of the channel is a supervised user within a policy and the *Inbound* direction is configured in a policy, all messages sent within the channel are subject to review and potential policy matches (even for users in the channel that aren't explicitly supervised). For example, User A is the owner or a member of a channel. User B and User C are members of the same channel and use language that is matched to the offensive language policy that supervises only User A. User B and User C create policy matches for conversations within the channel even though they aren't directly supervised in the offensive language policy. Teams conversations between User B and User C that are outside of the channel that includes User A would not be subject to the offensive language policy that includes User A. To exclude channel members from supervision when other members of the channel are explicitly supervised, turn off the *Inbound* communication direction setting in the applicable communication compliance policy.
- **For Teams chat communications with hybrid email environments**: Communication compliance can monitor chat messages for users for organizations with an Exchange on-premises deployment or an external email provider that have enabled Microsoft Teams. You must create a distribution group for the users with on-premises or external mailboxes to monitor. When creating a communication compliance policy, you'll assign this distribution group as the **Supervised users and groups** selection in the policy wizard. For more information about the requirements and limitations for enabling cloud-based storage and Teams support for on-premises users, see [Search for Teams chat data for on-premises users](search-cloud-based-mailboxes-for-on-premises-users.md).

## Exchange email

Mailboxes hosted on Exchange Online as part of your Microsoft 365 or Office 365 subscription are all eligible for message scanning. Exchange email messages and attachments matching communication compliance policy conditions may take up to 24 hours to process. Supported attachment types for communication compliance are the same as the [file types supported for Exchange mail flow rule content inspections](/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments#supported-file-types-for-mail-flow-rule-content-inspection).

## Yammer

Private messages and public conversations and associated attachments in Yammer communities can be scanned. When a user is added to communication compliance policy that includes Yammer as a defined channel, communications across all Yammer communities that the user is a member of are included in the scanning process. Yammer chats and attachments matching communication compliance policy conditions may take up to 24 hours to process. 

Yammer must be in [Native Mode](/yammer/configure-your-yammer-network/overview-native-mode) for communication compliance policies to monitor Yammer communications and attachments. In Native Mode, all Yammer users are in Azure Active Directory (AAD), all groups are Office 365 Groups, and all files are stored in SharePoint Online.

## Skype for Business Online

Chat communications and associated attachments in Skype for Business Online can be supervised. Skype for Business Online chats matching communication compliance policy conditions may take up to 24 hours to process. Supervised chat conversations are sourced from [previous conversations saved in Skype for Business Online](https://support.office.com/article/Find-a-previous-Skype-for-Business-conversation-18892eba-5f18-4281-8c87-fd48bd72e6a2).  

Use the following group management configuration to supervise user chat communications in Skype for Business Online:

- **For Skype for Business Online chat communications**: Assign individual users or assign a [distribution group](https://support.office.com/article/Distribution-groups-E8BA58A8-FAB2-4AAF-8AA1-2A304052D2DE) to the communication compliance policy. This setting is for one-to-one or one-to-many user/chat relationships.

## Third-party sources

You can scan communications for data imported into mailboxes in your Microsoft 365 organization from third-party sources like [Instant Bloomberg](archive-instant-bloomberg-data.md), [Slack](archive-slack-data.md), [Zoom](archive-zoommeetings-data.md), SMS, and many others. For a full list of connectors supported in communication compliance, see [Archive third-party data](archiving-third-party-data.md).

You must configure a third-party connector for your Microsoft 365 organization before you can assign the connector to a communication compliance policy. The **Third-Party Sources** section of the communication compliance policy wizard only displays currently configured third-party connectors.
