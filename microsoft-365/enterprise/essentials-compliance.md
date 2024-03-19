---
title: Compliance for Microsoft 365
f1.keywords:
- NOCSH
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 03/18/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection: 
- scotvorg
- must-keep
- essentials-compliance
ms.custom: 
- it-pro
- intro-overview
description: Learn about compliance for Microsoft 365 for enterprise.
---

# Compliance for Microsoft 365 for enterprise

Most organizations have business or legal requirements that govern how data is used, shared, and retained. Some organizations also have data residency requirements or regulatory requirements that restrict communication between certain users and groups.

Microsoft 365 has a wide range of governance and compliance features to address these needs. This article provides an overview of features you may want to consider as part of your OneDrive and SharePoint rollout.

## Data lifecycle management

Use data lifecycle management capabilities in Microsoft Purview to govern your OneDrive and SharePoint content for compliance or regulatory requirements. The following table describes the capabilities to help you keep the content you need you and delete what you don't need.

|Capability|What problems does it solve?|Get started|
|:------|:------------|:----------------------------|
|[Retention policies and retention labels](/microsoft-365/compliance/retention)<br /><br />[Learn about retention for SharePoint and OneDrive](/microsoft-365/compliance/retention-policies-sharepoint) | Retain or delete content with policy management for SharePoint and OneDrive documents | [Create and configure retention policies](/microsoft-365/compliance/create-retention-policies) <br /><br /> [Create retention labels for exceptions to your retention policies](/microsoft-365/compliance/create-retention-labels-information-governance)|

### Deleted users' data

When a user leaves your organization and you've deleted that user's account, what happens to the user's data? When considering data retention compliance, determine what needs to happen with the deleted user's data. For some organizations, retaining deleted user data could be important continuity and preventing critical data loss. 

If a user's Microsoft 365 account is deleted, their OneDrive files are preserved for 30 days. To change this setting, [Set the OneDrive retention for deleted users](/onedrive/set-retention).

By default, when a user is deleted, the user's manager is automatically given access to the user's OneDrive. To change this, see [OneDrive retention and deletion](/onedrive/retention-and-deletion).

## Information protection

Microsoft Purview Information Protection capabilities help you discover, classify, and protect sensitive information in OneDrive and SharePoint. The following table describes these capabilities. Consider if you want to implement any of these capabilities as part of your OneDrive and SharePoint rollout.

|Capability|What problems does it solve?|Get started|
|:------|:------------|:--------------------|
|[Sensitive information types](/microsoft-365/compliance/sensitive-information-type-learn-about)| Identifies sensitive data by using built-in or custom regular expressions or a function. Corroborative evidence includes keywords, confidence levels, and proximity.| [Customize a built-in sensitive information type](/microsoft-365/compliance/customize-a-built-in-sensitive-information-type)|
|[Trainable classifiers](/microsoft-365/compliance/classifier-learn-about)| Identifies sensitive data by using examples of the data you're interested in rather than identifying elements in the item (pattern matching). You can use built-in classifiers or train a classifier with your own content.| [Get started with trainable classifiers](/microsoft-365/compliance/classifier-get-started-with) |
|[Sensitivity labels](/microsoft-365/compliance/sensitivity-labels)| A single solution across apps, services, and devices to label and protect your data as it travels inside and outside your organization. <br /><br /> Sensitivity labels can be used to protect files themselves or individual SharePoint sites and teams.|[Enable sensitivity labels for Office files in SharePoint and OneDrive](/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files) <br /><br /> [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 Groups, and SharePoint sites](/microsoft-365/compliance/sensitivity-labels-teams-groups-sites)|
|[Data loss prevention](/microsoft-365/compliance/dlp-learn-about-dlp)| Helps prevent unintentional sharing of sensitive items. | [Get started with the default DLP policy](/microsoft-365/compliance/get-started-with-the-default-dlp-policy)|

## File sync

The OneDrive sync app has policies that you can use to help you maintain a compliant environment. Consider configuring these policies before you roll out SharePoint and OneDrive.

|Policy|Windows GPO|Mac|
|:-----|:----------|:--|
|Allow syncing OneDrive accounts for only specific organizations|[AllowTenantList](/onedrive/use-group-policy#allow-syncing-onedrive-accounts-for-only-specific-organizations)|[AllowTenantList](/onedrive/deploy-and-configure-on-macos#allowtenantlist)|
|Block syncing OneDrive accounts for specific organizations|[BlockTenantList](/onedrive/use-group-policy#block-syncing-onedrive-accounts-for-specific-organizations)|[BlockTenantList](/onedrive/deploy-and-configure-on-macos#blocktenantlist)|
|Prevent users from syncing libraries and folders shared from other organizations|[BlockExternalSync](/onedrive/use-group-policy#prevent-users-from-syncing-libraries-and-folders-shared-from-other-organizations)|[BlockExternalSync](/onedrive/deploy-and-configure-on-macos#blockexternalsync)|
|Prevent users from syncing personal OneDrive accounts|[DisablePersonalSync](/onedrive/use-group-policy#prevent-users-from-syncing-personal-onedrive-accounts)|[DisablePersonalSync](/onedrive/deploy-and-configure-on-macos#disablepersonalsync)|
|Exclude specific kinds of files from being uploaded|[EnableODIgnoreListFromGPO](/onedrive/use-group-policy#exclude-specific-kinds-of-files-from-being-uploaded)|[EnableODIgnore](/onedrive/deploy-and-configure-on-macos#enableodignore)|

## Data residency

Multi-Geo is Microsoft 365 feature that allows organizations to span their storage over multiple geo locations and specify where to store users' data. For multinational customers with data residency requirements, you can use this feature to ensure that each user's data is stored in the geo location necessary for compliance. For more info about this feature, see [Multi-Geo Capabilities in OneDrive and SharePoint](/office365/enterprise/multi-geo-capabilities-in-onedrive-and-sharepoint-online-in-office-365/).

Features such as file sync and mobile device management work normally in a multi-geo environment. There's no special configuration or management needed. The multi-geo experience for your users has minimal difference from a single-geo configuration. For details, see [User experience in a multi-geo environment](/office365/enterprise/multi-geo-user-experience/).

For more information about Microsoft 365 Multi-Geo, see [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo).

## Information barriers

Microsoft Purview Information Barriers is a compliance solution that allows you to restrict two-way communication and collaboration between groups and users in Microsoft Teams, SharePoint, and OneDrive. Often used in highly regulated industries, information barriers can help to avoid conflicts of interest and safeguard internal information between users and organizational areas.

When information barrier policies are in place, users who shouldn't communicate or share files with other specific users won't be able to find, select, chat, or call those users. Information barrier policies automatically put checks in place to detect and prevent unauthorized communication and collaboration among defined groups and users.

If your business requires information barriers, see [Learn about information barriers](/microsoft-365/compliance/information-barriers) and [Use information barriers with SharePoint](/sharepoint/information-barriers) to get started.

## Next steps

> [!div class="nextstepaction"]
> [Plan sharing and collaboration options](collaboration-options.md)

## Related articles

[Implement compliance in Microsoft 365](/training/paths/implement-data-governance-microsoft-365-intelligence/)

[Compliance in Microsoft Teams](/microsoftteams/security-compliance-overview#compliance)

[Compliance in Microsoft Viva](/viva/viva-compliance)

[Compliance in SharePoint and OneDrive](/sharepoint/compliant-environment)

[Compliance in Microsoft Cloud for Retail](/industry/retail/compliance-overview)

[Windows Privacy Compliance Guide](/windows/privacy/windows-10-and-privacy-compliance)
