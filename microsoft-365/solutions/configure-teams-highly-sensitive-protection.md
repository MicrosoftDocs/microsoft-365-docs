---
title: "Configure teams with protection for highly sensitive data"
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: high
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
- m365solution-3tiersprotection
- m365solution-securecollab
ms.custom:
- Ent_Solutions
- admindeeplinkSPO
recommendations: false
description: "Learn how to deploy teams with protection for highly sensitive data."
---

# Configure teams with protection for highly sensitive data

In this article, we look at setting up a team for a highly sensitive level of protection. Be sure you've completed the steps in [Deploy teams with baseline protection](configure-teams-baseline-protection.md) before following the steps in this article.

For this tier of protection, we create a sensitivity label that can be used across your organization for highly sensitive teams and files. Only members of your organization and guests that you have specified will be able to decrypt files that use this label. If you need to further isolate permissions so that only members of a specific team can decrypt files, see  [Deploy a team with security isolation](secure-teams-security-isolation.md).

The highly sensitive tier offers the following additional protections over the baseline tier:

- A sensitivity label for the team that allows you to turn guest sharing on or off and blocks access to SharePoint content for unmanaged devices. This label can also be used to classify and encrypt files.
- A more restrictive default sharing link type
- Only team owners can create private channels.
- Access requests for the associated SharePoint site are turned off.

## Video demonstration

Watch this video for a walkthrough of the procedures described in this article.
<br>
<br>
> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4NzI7]

## Guest sharing

Depending on the nature of your business, you may or may not want to enable guest sharing for teams that contain highly sensitive data. If you do plan to collaborate with people outside your organization in the team, we recommend enabling guest sharing. Microsoft 365 includes a variety of security and compliance features to help you share sensitive content securely. This is generally a more secure option than emailing content directly to people outside your organization.

For details about sharing with guests securely, see the following resources:

- [Limit accidental exposure to files when sharing with people outside your organization](./share-limit-accidental-exposure.md)
- [Create a secure guest sharing environment](./create-secure-guest-sharing-environment.md)

To allow or block guest sharing, we use a combination of a sensitivity label for the team and site-level sharing controls for the associated SharePoint site, both discussed later.

## Sensitivity labels

For the highly sensitive level of protection, we'll be using a sensitivity label to classify the team. This label can also be used to classify and encrypt individual files in this or other teams or in other file locations such as SharePoint or OneDrive. 

As a first step, you must enable sensitivity labels for Teams. See [Use sensitivity labels to protect content in Microsoft Teams, Office 365 Groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md) for details.

If you already have sensitivity labels deployed in your organization, consider how this label fits with your overall label strategy. You can change the name or settings if needed to meet the needs of your organization.

Once you have enabled sensitivity labels for Teams, the next step is to create the label.

To create a sensitivity label
1. Open the [Microsoft 365 compliance center](https://compliance.microsoft.com).
2. Under **Solutions**, click **Information protection**.
3. Click **Create a label**.
4. Give the label a name. We suggest **Highly sensitive**, but you can choose a different name if that one is already in use.
5. Add a display name and description, and then click **Next**.
6. On the **Define the scope for this label page**, select **Files & emails** and **Groups & sites** and click **Next**.
7. On the **Choose protection settings for files and emails** page, select **Encrypt files and emails**, and then click **Next**.
8. On the **Encryption** page, choose **Configure encryption settings**.
9. Under **Assign permissions to specific users and groups**, click **Assign permissions**.
10. Click **Add all users and groups in your organization**.
11. If there are guests who should have permissions to decrypt files, click **Add users or groups** and add them.
12.  Click **Save**, and then click **Next**.
13. On the *Auto-labeling for files and emails** page, click **Next**.
14. On the **Define protection settings for groups and sites** page, select **Privacy and external user access settings** and **Device access and external sharing settings** and click **Next**.
15. On the **Define privacy and external user access settings** page, under **Privacy**, select the **Private** option.
16. If you want to allow guest access, under **External user access**, select **Let Microsoft 365 Group owners add people outside your organization to the group as guests**.
17. Click **Next**.
18. On the **Define external sharing and device access settings** page, select **Control external sharing from labeled SharePoint sites**.
19. Under **Content can be shared with**, choose **New and existing guests** if you're allowing guest access or **Only people in your organization** if not.
20. Under **Access from unmanaged devices**, choose **Block access**. (If you're allowing guests and they don't have managed devices, you may want to choose **Allow limited, web-only access**.)
21. Click **Next**.
22. On the **Auto-labeling for database columns** page, click **Next**.
23. Click **Create label**, and then click **Done**.

Once you've created the label, you need to publish it to the users who will use it. For sensitive protection, we'll make the label available to all users. You publish the label in the Microsoft 365 compliance center, on the **Label policies** tab of the **Information protection** page. If you have an existing policy that applies to all users, add this label to that policy. If you need to create a new policy, see [Publish sensitivity labels by creating a label policy](../compliance/create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy).

## Create a team

Further configuration of the highly sensitive scenario is done in the SharePoint site associated with the team, so the next step is to create a team.

To create a team for highly sensitive information
1. In Teams, click **Teams** on the left side of the app, then click **Join or create a team** at the bottom of the teams list.
2. Click **Create team** (first card, top left corner).
3. Choose **Build a team from scratch**.
4. In the **Sensitivity** list, choose the **Highly sensitive** label that you just created.
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

## Shared channel settings

[Shared channels](/MicrosoftTeams/shared-channels) doesn't have team-level settings. The shared channel settings you configure in the Teams admin center and Azure AD will be available for all teams regardless of sensitivity.

## SharePoint settings

Each time you create a new team with the highly sensitive label, there are two steps to do in SharePoint:

- Update the guest sharing settings for the site in the SharePoint admin center to update the default sharing link to *People with existing access*.
- Update the site sharing settings in the site itself to prevent members from sharing files, folders, or the site, and turn off access requests.

### Site default sharing link settings

To update the site default sharing link type

1. Open the SharePoint admin center, and under **Sites**, select <a href="https://go.microsoft.com/fwlink/?linkid=2185220" target="_blank">**Active sites**</a>.
1. Select the site that is associated with team.
1. On the **Policies** tab, under **External sharing**, select **Edit**.
1. Under Default sharing link type, clear the **Same as organization-level setting** check box, and select **People with existing access**.
1. Select **Save**.

Note that if you add private or shared channels to the team, each creates a new SharePoint site with the default sharing settings. You can update them in the SharePoint admin center by selecting the sites associated with the team.

### Site sharing settings

To help ensure that the SharePoint site does not get shared with people who are not members of the team, we limit such sharing to owners. We also limit sharing of files and folders to team owners. This helps ensure that owners are aware whenever a file is shared with someone outside the team.

To configure owners-only site sharing
1. In Teams, navigate to the **General** tab of the team you want to update.
2. In the tool bar for the team, click **Files**.
3. Click the ellipsis, and then click **Open in SharePoint**.
4. In the tool bar of the underlying SharePoint site, click the settings icon, and then click **Site permissions**.
5. In the **Site permissions** pane, under **Site sharing**, click **Change how members can share**.
6. Under **Sharing permissions**, choose **Only site owners can share files, folders, and the site**.
7. Set **Allow access requests** to **Off**, and then click **Save**.

## See Also

[Create and configure sensitivity labels and their policies](../compliance/create-sensitivity-labels.md)
