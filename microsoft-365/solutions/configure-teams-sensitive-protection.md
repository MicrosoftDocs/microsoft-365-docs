---
title: Configure teams with protection for sensitive data
f1.keywords: NOCSH
ms.author: jtremper
author: jacktremper
manager: pamgreen
ms.date: 12/08/2023
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection: 
- highpri
- Tier1
- Ent_O365
- Strat_O365_Enterprise
- m365solution-3tiersprotection
- m365solution-securecollab
ms.custom:
- Ent_Solutions
- admindeeplinkSPO
recommendations: false
description: Learn how to deploy teams with protection for sensitive data.
---

# Configure teams with protection for sensitive data

[!INCLUDE[Advanced Management](../includes/advanced-management.md)]

In this article, we look at setting up a team for a sensitive level of protection. Be sure you've completed the steps in [Deploy teams with baseline protection](configure-teams-baseline-protection.md) before following the steps in this article. The sensitive tier offers the following additional protections over the baseline tier:

- A sensitivity label for the team that allows you to turn guest sharing on or off and limits access to SharePoint content to web-only for unmanaged devices. This label is also used as the default label for files.
- A more restrictive default sharing link type
- Only team owners can create private channels.

## Video demonstration

Watch this video for a walkthrough of the procedures described in this article.
<br>
<br>
> [!VIDEO https://learn-video.azurefd.net/vod/player?id=a9dc1004-f5d0-4a1a-8c2b-bc77f1fbe5b7]

## Guest sharing

Depending on the nature of your business, you may or may not want to enable guest sharing for teams that contain sensitive data. If you do plan to collaborate with people outside your organization in the team, we recommend enabling guest sharing. Microsoft 365 includes a variety of security and compliance features to help you share sensitive content securely. This is generally a more secure option than emailing content directly to people outside your organization.

For details about sharing with guests securely, see the following resources:

- [Limit accidental exposure to files when sharing with people outside your organization](./share-limit-accidental-exposure.md)
- [Create a secure guest sharing environment](./create-secure-guest-sharing-environment.md)

To allow or block guest sharing, we use a combination of a sensitivity label for the team and site-level sharing controls for the associated SharePoint site, both discussed later.

## Sensitivity labels

For the sensitive level of protection, we use a sensitivity label to classify the team. We also use this label to classify individual files in the team. (It can also be used on files in other file locations such as SharePoint or OneDrive.)

As a first step, you must enable sensitivity labels for Teams. See [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 Groups, and SharePoint sites](/purview/sensitivity-labels-teams-groups-sites) for details.

If you already have sensitivity labels deployed in your organization, consider how this label fits with your overall label strategy. You can change the name or settings if needed to meet the needs of your organization.

Once you have enabled sensitivity labels for Teams, the next step is to create the label.

To create a sensitivity label
1. Open the [Microsoft Purview compliance portal](https://compliance.microsoft.com).
1. Under **Solutions**, expand **Information protection**.
1. Select **Create a label**.
1. Give the label a name. We suggest **Sensitive**, but you can choose a different name if that one is already in use.
1. Add a display name and description, and then select **Next**.
1. On the **Define the scope for this label page**, select **Items**, **Files**, **Emails**, and **Groups & sites**. Clear the **Meetings** check box.
1. Select **Next**.
1. On the **Choose protection settings for labeled items** page, select **Next**.
1. On the **Auto-labeling for files and emails** page, select **Next**.
1. On the **Define protection settings for groups and sites** page, select **Privacy and external user access** and **External sharing and Conditional Access** and select **Next**.
1. On the **Define privacy and external user access settings** page, under **Privacy**, select the **Private** option.
1. If you want to allow guest access, under **External user access**, select **Let Microsoft 365 Group owners add people outside your organization to the group as guests**.
1. Select **Next**.
1. On the **Define external sharing and conditional access settings** page, select **Control external sharing from labeled SharePoint sites**.
1. Under **Content can be shared with**, choose **New and existing guests** if you're allowing guest access or **Only people in your organization** if not.
1. Select **Use Microsoft Entra Conditional Access to protect labeled SharePoint sites**.
1. Choose the **Determine whether users can access SharePoint sites from unmanaged devices** option, and then choose **Allow limited, web-only access**.
1. Select **Next**.
1. On the **Auto-labeling for schematized data assets** page, select **Next**.
1. Select **Create label**, and then select **Done**.

Once you've created the label, you need to publish it to the users who will use it. For sensitive protection, we make the label available to all users. You publish the label in the Microsoft Purview compliance portal, on the **Label policies** page under **Information protection**. If you have an existing policy that applies to all users, add this label to that policy. If you need to create a new policy, see [Publish sensitivity labels by creating a label policy](../compliance/create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy).

## Teams settings

Further configuration of the sensitive scenario is done in the team itself and in the SharePoint site associated with the team, so the next step is to create a team.

We'll create the team in the Teams admin center.

To create a team for sensitive information
1. In the Teams admin center, expand **Teams** and select **Manage teams**.
1. Select **Add**.
1. Type a name and description for the team.
1. Add one or more owners for the team. (Keep yourself as an owner so you can [choose a default sensitivity label for files](#choose-a-default-sensitivity-label-for-files) and set the [site sharing settings](#site-sharing-settings) below.)
1. Choose the sensitivity label that you created for sensitive information from the **Sensitivity** dropdown list.
1. Select **Apply**.

#### Private channel settings

In this tier, we restrict creating private channels to team owners.

To restrict private channel creation
1. In the Teams admin center, select the team that you created, and then select **Edit**.
1. Expand **Message permissions**.
1. Set **Add and edit private channels** to **Off**.
1. Select **Apply**.

#### Shared channel settings

Shared channels doesn't have team-level settings. The shared channel settings you configure in the [Teams admin center](/microsoftteams/teams-policies) and the [Microsoft Entra admin center](collaborate-teams-direct-connect.md) apply to individual users.

## SharePoint settings

Each time you create a new team with the sensitive label, there are three steps to do in SharePoint:

- Update the guest sharing settings for the site in the SharePoint admin center to update the default sharing link to *Specific people*.
- Update the site sharing settings in the site itself to prevent members from sharing the site.
- Choose a default sensitivity label for the document library connected to the team.

The site sharing settings and default sensitivity label must be configured in the site itself and can't be set up from the SharePoint admin center or via PowerShell.

### Site default sharing link settings

To update the site default sharing link type

1. Open the SharePoint admin center, and under **Sites**, select <a href="https://go.microsoft.com/fwlink/?linkid=2185220" target="_blank">**Active sites**</a>.
1. Select the site that is associated with team.
1. On the **Settings** tab, under **External file sharing**, select **More sharing settings**.
1. Under Default sharing link type, clear the **Same as organization-level setting** check box, and select **Specific people (only the people the user specifies)**.
1. Select **Save**.

If you want to script this as part of your team creation process, you can use [Set-SPOSite](/powershell/module/sharepoint-online/set-sposite) with the `-DefaultSharingLinkType Direct` parameter to change the default sharing link to *Specific people*.

Note that if you add private or shared channels to the team, each creates a new SharePoint site with the default sharing settings. You can update them in the SharePoint admin center by selecting the sites associated with the team.

### Site sharing settings

To help ensure that the SharePoint site doesn't get shared with people who aren't members of the team, we limit such sharing to owners. This is only necessary for the SharePoint site that was created with the team. Additional sites created as part of private or shared channels can't be shared outside the team or channel.

You need to be a team owner to do this task.

To configure owners-only site sharing
1. In Teams, navigate to the **General** tab of the team you want to update.
2. In the tool bar for the team, select **Files**.
3. Select the ellipsis, and then select **Open in SharePoint**.
4. In the tool bar of the underlying SharePoint site, select the settings icon, and then select **Site permissions**.
5. In the **Site permissions** pane, under **Site sharing**, select **Change how members can share**.
6. Under **Sharing permissions**, choose **Site owners and members, and people with Edit permissions can share files and folders, but only site owners can share the site**, and then select **Save**.

### Choose a default sensitivity label for files

We'll use the sensitivity label that we created as the default sensitivity label for the site document library that is connected to Teams. This will automatically apply the highly sensitive label to any new label-compatible files that are uploaded to the library. (This requires a [Microsoft Syntex - SharePoint Advanced Management](/sharepoint/advanced-management) license.)

You need to be a team owner to do this task.

To set a default sensitivity label for a document library

1. In Teams, navigate to the **General** channel of the team you want to update.

1. In the tool bar for the team, select **Files**.

1. Select **Open in SharePoint**.

1. In the SharePoint site, open **Settings** and then choose **Library settings**.

1. From the **Library settings** flyout pane, select **Default sensitivity labels**, and then select the sensitive label from the drop-down box.

For more details about how default library labels work, see [Configure a default sensitivity label for a SharePoint document library](/purview/sensitivity-labels-sharepoint-default-label) and [Add a sensitivity label to SharePoint document library](https://support.microsoft.com/office/54b1602b-db0a-4bcb-b9ac-5e20cbc28089).

## Related topics

[Create and configure sensitivity labels and their policies](../compliance/create-sensitivity-labels.md)
