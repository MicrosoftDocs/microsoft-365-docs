---
title: "Configure teams with protection for sensitive data"
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
- m365solution-3tiersprotection
- m365solution-securecollab
ms.custom:
- Ent_Solutions
recommendations: false
description: "Learn how to deploy teams with protection for sensitive data."
---

# Configure teams with protection for sensitive data

In this article, we look at setting up a team for a sensitive level of protection. Be sure you've completed the steps in [Deploy teams with baseline protection](configure-teams-baseline-protection.md) before following the steps in this article. The sensitive tier offers the following additional protections over the baseline tier:

- A sensitivity label for the team that allows you to turn guest sharing on or off and limits access to SharePoint content to web-only for unmanaged devices. This label can also be used to classify files.
- A more restrictive default sharing link type
- Only team owners can create private channels.

## Guest sharing

Depending on the nature of your business, you may or may not want to enable guest sharing for teams that contain sensitive data. If you do plan to collaborate with people outside your organization in the team, we recommend enabling guest sharing. Microsoft 365 includes a variety of security and compliance features to help you share sensitive content securely. This is generally a more secure option than emailing content directly to people outside your organization.

For details about sharing with guests securely, see the following resources:

- [Limit accidental exposure to files when sharing with people outside your organization](./share-limit-accidental-exposure.md)
- [Create a secure guest sharing environment](./create-secure-guest-sharing-environment.md)

To allow or block guest sharing, we use a combination of a sensitivity label for the team and site-level sharing controls for the associated SharePoint site, both discussed later.

## Sensitivity labels

For the sensitive level of protection, we'll be using a sensitivity label to classify the team. This label can also be used to classify individual files in this or other teams, or in other file locations such as SharePoint or OneDrive. 

As a first step, you must enable sensitivity labels for Teams. See [Use sensitivity labels to protect content in Microsoft Teams, Office 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md) for details.

If you already have sensitivity labels deployed in your organization, consider how this label fits with your overall label strategy. You can change the name or settings if needed to meet the needs of your organization.

Once you have enabled sensitivity labels for Teams, the next step is to create the label.

To create a sensitivity label
1. Open the [Microsoft 365 compliance center](https://compliance.microsoft.com).
2. Under **Solutions**, click **Information protection**.
3. Click **Create a label**.
4. Give the label a name. We suggest **Sensitive**, but you can choose a different name if that one is already in use.
5. Add a display name and description, and then click **Next**.
6. On the **Define the scope for this label page**, select **Files & emails** and **Groups & sites** and click **Next**.
7. On the **Choose protection settings for files and emails** page, click **Next**.
8. On the *Auto-labeling for files and emails** page, click **Next**.
9. On the **Define protection settings for groups and sites** page, select **Privacy and external user access settings** and **Device access and external sharing settings** and click **Next**.
10. On the **Define privacy and external user access settings** page, under **Privacy**, select the **Private** option.
11. If you want to allow guest access, under **External user access**, select **Let Microsoft 365 Group owners add people outside your organization to the group as guests**.
12. Click **Next**.
13. On the **Define external sharing and device access settings** page, select **Control external sharing from labeled SharePoint sites**.
14. Under **Content can be shared with**, choose **New and existing guests** if you're allowing guest access or **Only people in your organization** if not.
15. Under **Access from unmanaged devices**, choose **Allow limited, web-only access**.
16. Click **Next**.
17. On the **Auto-labeling for database columns** page, click **Next**.
18. Click **Create label**, and then click **Done**.

Once you've created the label, you need to publish it to the users who will use it. For sensitive protection, we'll make the label available to all users. You publish the label in the Microsoft 365 compliance center, on the **Label policies** tab of the **Information protection** page. If you have an existing policy that applies to all users, add this label to that policy. If you need to create a new policy, see [Publish sensitivity labels by creating a label policy](../compliance/create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy).

## Create a team

Further configuration of the sensitive scenario is done in the SharePoint site associated with the team, so the next step is to create a team.

To create a team for sensitive information
1. In Teams, click **Teams** on the left side of the app, then click **Join or create a team** at the bottom of the teams list.
2. Click **Create team** (first card, top left corner).
3. Choose **Build a team from scratch**.
4. In the **Sensitivity** list, choose the **sensitive** label that you just created.
5. Under **Privacy**, click **Private**.
6. Type a name for the team, and then click **Create**.
7. Add users to the team, and then click **Close**.

## Private channel settings

In this tier, we restrict creating private channels to team owners.

To restrict private channel creation
1. In the team, click **More options**, and then click **Manage team**.
2. On the **Settings** tab, expand **Member permissions**.
3. Clear the **Allow members to create private channels** check box.

You can also use [teams policies](/MicrosoftTeams/teams-policies) to control who can create private channels.

## SharePoint settings

Each time you create a new team with the sensitive label, there are two steps to do in SharePoint:

- Update the guest sharing settings for the site in the SharePoint admin center to match what you chose when you created the label, and update the default sharing link to *Specific people*.
- Update the site sharing settings in the site itself to prevent members from sharing the site.

### Site guest sharing settings

The guest sharing setting that you chose when you created the label (which only affects team membership) should match the guest sharing settings for the associated SharePoint site as follows:

|Label setting|SharePoint site setting|
|:------------|:----------------------|
|**Let Office 365 group owners add people outside the organization to the group** selected|**New and existing guests** (default for new teams)|
|**Let Office 365 group owners add people outside the organization to the group** not selected|**Only people in your organization**|

To update site settings
1. Open the [SharePoint admin center](https://admin.microsoft.com/sharepoint).
2. Under **Sites**, click **Active sites**.
3. Click the site that is associated with team.
4. On the **Policies** tab, under **External sharing**, click **Edit**.
5. If you allowed guest sharing when you created the sensitive label, ensure that **New and existing guests** is selected. If you didn't allow sharing when you created the label, choose **Only people in your organization**.
6. Under Default sharing link type, clear the **Same as organization-level setting** check box, and select **Specific people (only the people the user specifies)**.
7. Click **Save**.

If you want to script this as part of your team creation process, you can use [Set-SPOSite](/powershell/module/sharepoint-online/set-sposite) with the following parameters:

- `-SharingCapability Disabled` to turn off guest sharing (it's on by default)
- `-DefaultSharingLinkType Internal` to change the default sharing link to *Specific people*

#### Private channels

If you add private channels to the team, each private channel creates a new SharePoint site with the default sharing settings. These sites are not visible in the SharePoint admin center, so you must use the Set-SPOSite PowerShell cmdlet to update the guest sharing settings.

### Site sharing settings

To help ensure that the SharePoint site does not get shared with people who are not members of the team, we limit such sharing to owners.

To configure owners-only site sharing
1. In Teams, navigate to the **General** tab of the team you want to update.
2. In the tool bar for the team, click **Files**.
3. Click the ellipsis, and then click **Open in SharePoint**.
4. In the tool bar of the underlying SharePoint site, click the settings icon, and then click **Site permissions**.
5. In the **Site permissions** pane, under **Site sharing**, click **Change how members can share**.
6. Under **Sharing permissions**, choose **Site owners and members, and people with Edit permissions can share files and folders, but only site owners can share the site**, and then click **Save**.


## See Also

[Create and configure sensitivity labels and their policies](../compliance/create-sensitivity-labels.md)