---
title: Microsoft Teams and Microsoft Purview Communication Compliance
description: Learning about communication compliance, part of the insider risk solution set, from the Microsoft Teams perspective (this is part of the Microsoft 365 communication compliance functionality).
author: robmazz
ms.author: robmazz
manager: laurawi
ms.topic: reference
ms.service: msteams
audience: admin
ms.reviewer: anwara
ms.date: 06/30/2023
ms.localizationpriority: medium
search.appverid: MET150
f1.keywords:
- NOCSH
ms.collection:
- tier1
- purview-compliance
- M365-collaboration
appliesto: 
  - Microsoft Teams
---

# Microsoft Teams and Microsoft Purview Communication Compliance

Microsoft Purview Communication Compliance is an insider risk solution in Microsoft 365 that helps minimize communication risks by helping you detect, capture, and act on inappropriate messages in your organization.

For Microsoft Teams, communication compliance helps identify the following types of inappropriate content in Teams channels, Private Teams channels, or in 1:1 and group chats:

- Offensive, profane, and harassing language
- Adult, racy, and gory images
- Sharing of sensitive information

Watch the video below to learn how to detect communication risks in Microsoft Teams with communication compliance:
   <br>
   <br>
   >[!VIDEO https://www.microsoft.com/videoplayer/embed/RW11p2Z]

For more information on communication compliance and how to configure policies for your organization, see [Learn about communication compliance](communication-compliance.md).

## How to use communication compliance in Microsoft Teams

Communication compliance and Microsoft Teams are tightly integrated and can help minimize communication risks in your organization. After you've configured your first communication compliance policies, you can actively manage inappropriate Microsoft Teams messages and content that is automatically flagged in alerts.

### Getting started

Getting started with communication compliance in Microsoft Teams begins with [planning](communication-compliance-plan.md) and creating predefined or custom policies to identify inappropriate user activities in Teams channels or in 1:1 and groups. Keep in mind that you'll need to [configure](communication-compliance-configure.md) some permissions and basic prerequisites as part of the configuration process.

Teams administrators can configure communication compliance policies at the following levels:

- **User level**: Policies at this level apply to an individual Teams user or may be applied to all Teams users in your organization. These policies cover messages that these users may send in 1:1 or group chats. Chat communications for the users are automatically monitored across all Microsoft Teams where the users are a member.
- **Teams level**: Policies at this level apply to a Microsoft Teams channel, including a Private channel. These policies cover messages sent in the Teams channel only.

### Report a message in Microsoft Teams

> [!NOTE]
> The *User-reported messages* policy is implemented for your organization after you create your first communication compliance policy. It can take up to thirty days for this feature to be available after you create your first policy.

The *Report inappropriate content* option for Teams personal and group chat messages is enabled by default and can be controlled via Teams messaging policies in the [Teams admin center](/microsoftteams/manage-teams-in-modern-portal). This allows users in your organization to submit inappropriate internal chat messages for review by communication compliance reviewers for the policy. For more information about user-reported messages in communication compliance, see [Communication compliance policies](communication-compliance-policies.md#user-reported-messages-policy).

To access the feature, from a Teams chat, a user selects **More options** (...) > **More actions** > **Report this message**. 

![Report this message menu.](../media/communication-compliance-report-message.png)

In the next dialog box, the user selects the **Inappropriate - Harassment, violence, nudity, and disturbing content** option from the **Select a problem** list.  

![Report a message choices.](../media/communication-compliance-report-message-choices.png)

> [!NOTE]
> The other choice in the list (**Security risk- Spam, phishing, malicious content**), if available, is managed by Microsoft Defender for Office 365. The user might also be presented with just the **Inappropriate - Harassment, violence, nudity, and disturbing content** option, depending on which policy options are turned on in the Microsoft Teams admin center. [Learn more about the Microsoft Defender for Office setting](https://go.microsoft.com/fwlink/?linkid=2226727)

After submitting the message for review, the user receives a confirmation of the submittal in Microsoft Teams. Other participants in the chat do not see this notification.

Users in your organization automatically get the global policy unless you create and assign a custom policy. Edit the settings in the global policy or create and assign one or more custom policies to turn on or turn off this feature. For more information, see [Manage messaging policies in Teams](/microsoftteams/messaging-policies-in-teams).

### Act on inappropriate messages in Microsoft Teams

After you have configured your policies and have received communication compliance alerts for Microsoft Teams messages, it's time for compliance reviewers in your organization to act on these messages. This will also include user-reported messages if enabled for your organization. Reviewers can help safeguard your organization by reviewing communication compliance alerts and removing flagged messages from view in Microsoft Teams.

![Remove a message in Teams.](../media/communication-compliance-remove-teams-message.png)

Removed messages and content are replaced with notifications for viewers explaining that the message or content has been removed and what policy is applicable to the removal. The sender of the removed message or content is also notified of the removal status and provided with original message content for context relating to its removal. The sender can also view the specific policy condition that applies to the message removal.

Example of policy tip seen by sender:

![Policy tip for sender.](../media/communication-compliance-warning-1.png)

Example of policy notification seen by the sender:

![Policy condition info for sender.](../media/communication-compliance-warning-2.png)

Example of policy tip seen by recipient:

![Policy tip for recipient.](../media/communication-compliance-warning-3.png)
