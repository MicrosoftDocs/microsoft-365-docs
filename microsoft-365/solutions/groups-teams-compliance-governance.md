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
||Retain groups mail and SharePoint content|[Learn about retention policies for SharePoint and OneDrive](../compliance/retention-policies-sharepoint.md)|
||Retain chat and messages|[Learn about retention policies for Microsoft Teams](../compliance/retention-policies-teams.md)|
|Information classification|||
||Classify groups and teams|[Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md)|
||Automatically classify sensitive content|[Apply a sensitivity label to content automatically](../compliance/apply-sensitivity-label-automatically.md)|
||Encrypt sensitive content|[Restrict access to content by using sensitivity labels to apply encryption](../compliance/encryption-sensitivity-labels.md)|
|Information protection|||
||Prevent the loss of sensitive information|[Learn about data loss prevention](../compliance/dlp-learn-about-dlp.md)|
||Protect sensitive information in chat.|[Data loss prevention and Microsoft Teams](../compliance/dlp-microsoft-teams.md)|
||Define your organization's sensitive information|[Custom sensitive information types](../compliance/sensitive-information-type-learn-about.md)|
|User segmentation|||
||Restrict communication between user segments|[Information barriers](../compliance/information-barriers.md)|
|Data residency|||
||Store data in specific geo-locations|[Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)|

## Information retention

Retention policies are available to retain or delete items used for collaboration in groups and teams, including files, messages, and mail. Policies can be set to retain and delete, to retain only, or delete only. Information covered by a retention policy is protected in the event that the group or team expires or is otherwise deleted.

Configuring a retention policy for Microsoft 365 Groups covers the group mailbox and the associated SharePoint site and files.

- [Learn about retention policies for SharePoint and OneDrive](../compliance/retention-policies-sharepoint.md)

Retention policies for Teams retain chat and channel messages. While chat and channel messages are stored in Exchange mailboxes, they are not affected by Exchange retention policies. You must set your retention policies to apply to Teams chats and Teams channel messages. 

User chats are retained indefinitely even if a user account is deleted. If you don't want to retain this data indefinitely, consider using a retention policy to delete user chats after a specified time or include this deletion in your user deletion process.

- [Learn about retention policies for Microsoft Teams](../compliance/retention-policies-teams.md)

- [Retention policies in Microsoft Teams](/microsoftteams/retention-policies)

A single retention policy can be set to apply to Teams chat and Teams channel messages. 

Additional resources:

- [Learn about retention policies](../compliance/retention.md)

- [Retention tags and retention policies](/exchange/security-and-compliance/messaging-records-management/retention-tags-and-policies) in Exchange

## Information classification

You can use sensitivity labels to govern guest access, group and team privacy, and access by unmanaged devices for groups and teams. By applying the label, these settings are automatically configured as specified by the label settings.

- [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md)

You can configure Microsoft 365 to auto-apply sensitivity labels to files and emails based on the criteria that you specify, including detecting sensitive information types or pattern matching with trainable classifiers.

- [Apply a sensitivity label to content automatically](../compliance/apply-sensitivity-label-automatically.md)

You can use sensitivity labels to encrypt files, allowing only those with permissions to decrypt and read them.

- [Restrict access to content by using sensitivity labels to apply encryption](../compliance/encryption-sensitivity-labels.md)

- [Configure a team with security isolation](./secure-teams-security-isolation.md)

Additional resources:

- [Learn about sensitivity labels](../compliance/sensitivity-labels.md)


## Information protection

DLP policies can prevent the accidental sharing of sensitive information across SharePoint, Exchange, and Teams. You can create policies that specify actions to take (such as blocking access) based on a set of rules.

- [Learn about data loss prevention](../compliance/dlp-learn-about-dlp.md)

DLP in Teams can help protect sensitive information in Teams chat and channel messages by deleting messages that contain sensitive information.

- [Data loss prevention and Microsoft Teams](../compliance/dlp-microsoft-teams.md)

If you have sensitive information that is unique to your organization, such as project code names, you can create your own sensitive information types and apply them to DLP policies to protect content in groups, teams, and Sharepoint.

- [Custom sensitive information types](../compliance/sensitive-information-type-learn-about.md)

## User segmentation

With information barriers, you can segment your data and users to restrict unwanted communication and collaboration between groups and avoid conflicts of interest in your organization. Information barriers lets you create policies to allow or prevent file collaboration, chatting, calling, or meeting invitations between groups of people in your organization.

- [Information barriers](../compliance/information-barriers.md)

- [Information barriers in Microsoft Teams](/microsoftteams/information-barriers-in-teams)

- [Use information barriers with SharePoint](/sharepoint/information-barriers)

## Data residency

With Microsoft 365 Multi-Geo, you can provision and store data at rest in the geo locations that you've chosen to meet data residency requirements. In a Multi-Geo environment, your Microsoft 365 tenant consists of a central location (where your Microsoft 365 subscription was originally provisioned) and one or more satellite locations where you can store data.

- [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)

- [Plan for Microsoft 365 Multi-Geo](/microsoft-365/enterprise/plan-for-multi-geo)

## Related topics

[Collaboration governance planning step-by-step](collaboration-governance-overview.md#collaboration-governance-planning-step-by-step)

[Create your collaboration governance plan](collaboration-governance-first.md)

[Security and compliance for Exchange Online](/exchange/security-and-compliance/security-and-compliance)

[Protect information](../compliance/information-protection.md)
