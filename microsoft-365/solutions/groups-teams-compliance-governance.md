---
title: "Compliance options for Microsoft 365 groups, Teams, and SharePoint collaboration"
ms.reviewer: 
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-collaboration
- m365solution-collabgovernance
ms.custom: 
- M365solutions
f1.keywords: NOCSH
description: "Learn about compliance options for Microsoft 365 groups, Teams, and SharePoint collaboration."
---

# Compliance options for Microsoft 365 groups, Teams, and SharePoint collaboration

Microsoft 365 offers a full suite of tools to maintain compliance as your users collaborate. Review these options and consider how they map to your business needs, the sensitivity of your data, and the scope of people that your users need to collaborate with.

The following table provides a quick reference for the compliance controls available in Microsoft 365. Further information is provided in the following sections.

|Category|Description|Reference|
|:-------|:----------|:--------|
|Information retention|||
||Retain groups mail and SharePoint content|[Learn about retention policies for SharePoint and OneDrive](https://docs.microsoft.com/microsoft-365/compliance/retention-policies-sharepoint)|
||Retain chat and messages|[Learn about retention policies for Microsoft Teams](https://docs.microsoft.com/microsoft-365/compliance/retention-policies-teams)|
|Information classification|||
||Classify groups and teams|[Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels-teams-groups-sites)|
||Automatically classify sensitive content|[Apply a sensitivity label to content automatically](https://docs.microsoft.com/microsoft-365/compliance/apply-sensitivity-label-automatically)|
||Encrypt sensitive content|[Restrict access to content by using sensitivity labels to apply encryption](https://docs.microsoft.com/microsoft-365/compliance/encryption-sensitivity-labels)|
|Information protection|||
||Prevent the loss of sensitive information|[Overview of data loss prevention](https://docs.microsoft.com/microsoft-365/compliance/data-loss-prevention-policies)|
||Protect sensitive information in chat.|[Data loss prevention and Microsoft Teams](https://docs.microsoft.com/microsoft-365/compliance/dlp-microsoft-teams)|
||Define your organization's sensitive information|[Custom sensitive information types](https://docs.microsoft.com/microsoft-365/compliance/custom-sensitive-info-types)|
|User segmentation|||
||Restrict communication between user segments|[Information barriers](https://docs.microsoft.com/microsoft-365/compliance/information-barriers)|

## Information retention

Retention policies are available to retain or delete items used for collaboration in groups and teams, including files, messages, and mail. Policies can be set to retain and delete, to retain only, or delete only. Information covered by a retention policy is protected in the event that the group or team expires or is otherwise deleted.

Configuring a retention policy for Microsoft 365 Groups covers the group mailbox and the associated SharePoint site and files.

- [Learn about retention policies for SharePoint and OneDrive](https://docs.microsoft.com/microsoft-365/compliance/retention-policies-sharepoint)

Retention policies for Teams retain chat and channel messages. While chat and channel messages are stored in Exchange mailboxes, they are not affected by Exchange retention policies. You must set your retention policies to apply to Teams chats and Teams channel messages:

- [Learn about retention policies for Microsoft Teams](https://docs.microsoft.com/microsoft-365/compliance/retention-policies-teams)

- [Retention policies in Microsoft Teams](https://docs.microsoft.com/microsoftteams/retention-policies)

A single retention policy can be set to apply to Microsoft 365 Groups, Teams chat, and Teams channel messages. 

Additional resources:

- [Learn about retention policies](https://docs.microsoft.com/microsoft-365/compliance/retention-policies)

- [Retention tags and retention policies](https://docs.microsoft.com/exchange/security-and-compliance/messaging-records-management/retention-tags-and-policies) in Exchange

## Information classification

You can use sensitivity labels to govern guest access, group and team privacy, and access by unmanaged devices for groups and teams. By applying the label, these settings are automatically configured as specified by the label settings.

- [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels-teams-groups-sites)

You can configure Microsoft 365 to auto-apply sensitivity labels to files and emails based on the criteria that you specify, including detecting sensitive information types or pattern matching with trainable classifiers.

- [Apply a sensitivity label to content automatically](https://docs.microsoft.com/microsoft-365/compliance/apply-sensitivity-label-automatically)

You can use sensitivity labels to encrypt files, allowing only those with permissions to decrypt and read them.

- [Restrict access to content by using sensitivity labels to apply encryption](https://docs.microsoft.com/microsoft-365/compliance/encryption-sensitivity-labels)

- [Configure a team with security isolation](https://docs.microsoft.com/microsoft-365/solutions/secure-teams-security-isolation)

Additional resources:

- [Learn about sensitivity labels](https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels)


## Information protection

DLP policies can prevent the accidental sharing of sensitive information across SharePoint, Exchange, and Teams. You can create policies that specify actions to take (such as blocking access) based on a set of rules.

- [Overview of data loss prevention](https://docs.microsoft.com/microsoft-365/compliance/data-loss-prevention-policies)

DLP in Teams can help protect sensitive information in Teams chat and channel messages by deleting messages that contain sensitive information.

- [Data loss prevention and Microsoft Teams](https://docs.microsoft.com/microsoft-365/compliance/dlp-microsoft-teams)

If you have sensitive information that is unique to your organization, such as project code names, you can create your own sensitive information types and apply them to DLP policies to protect content in groups, teams, and Sharepoint.

- [Custom sensitive information types](https://docs.microsoft.com/microsoft-365/compliance/custom-sensitive-info-types)

## User segmentation

With information barriers, you can segment your data and users to restrict unwanted communication and collaboration between groups and avoid conflicts of interest in your organization. Information barriers lets you create policies to allow or prevent file collaboration, chatting, calling, or meeting invitations between groups of people in your organization.

- [Information barriers](https://docs.microsoft.com/microsoft-365/compliance/information-barriers)

- [Information barriers in Microsoft Teams](https://docs.microsoft.com/microsoftteams/information-barriers-in-teams)

- [Use information barriers with SharePoint](https://docs.microsoft.com/sharepoint/information-barriers)

## Related topics

[Security and compliance for Exchange Online](https://docs.microsoft.com/exchange/security-and-compliance/security-and-compliance)

[Protect information](https://docs.microsoft.com/microsoft-365/compliance/protect-information)

## Related topics

[Collaboration governance planning step-by-step](collaboration-governance-overview.md#collaboration-governance-planning-step-by-step)

[Create your collaboration governance plan](collaboration-governance-first.md)
