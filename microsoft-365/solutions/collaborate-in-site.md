---
title: Collaborate with guests in a site (IT Admins)
ms.author: ruihu
author: maggierui
manager: jtremper
ms.date: 05/31/2024
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.collection: 
- highpri
- Tier1
- SPO_Content
- M365-collaboration
- m365solution-3tiersprotection
- m365solution-securecollab
- m365initiative-externalcollab
ms.custom: 
- seo-marvel-apr2020
- admindeeplinkSPO
ms.localizationpriority: medium
f1.keywords: NOCSH
recommendations: false
description: "Learn about the Microsoft 365 configuration steps necessary to set up a SharePoint site for collaboration with guests."
---

# Collaborate with guests in a site (IT Admins)

If you need to collaborate with guests across documents, data, and lists, you can use a SharePoint site. Modern SharePoint sites are connected to Microsoft 365 Groups and can manage the site membership and provide additional collaboration tools such as a shared mailbox and a calendar.

In this article, we'll walk through the Microsoft 365 configuration steps necessary to set up a SharePoint site for collaboration with guests.

## Video demonstration

This video shows the configuration steps described in this document.</br>

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=614e2a1a-6b9c-421e-bab0-a94e9a9520d9]

## Microsoft Entra External ID external collaboration settings

Sharing in Microsoft 365 is governed at its highest level by the [external collaboration settings in Microsoft Entra External ID](/azure/active-directory/external-identities/delegate-invitations). If guest sharing is disabled or restricted in Microsoft Entra External ID, this setting overrides any sharing settings that you configure in Microsoft 365.

Check the external collaboration settings to ensure that sharing with guests isn't blocked.

![Screenshot of Microsoft Entra External collaboration Settings page.](../media/azure-ad-organizational-relationships-settings.png)

To set external collaboration settings

1. Sign in to Microsoft Entra External ID at [https://entra.microsoft.com/](https://entra.microsoft.com/).
1. In the left navigation pane, expand **External identities**.
1. Select **External collaboration settings**.
1. Ensure that either **Member users and users assigned to specific admin roles can invite guest users including guests with member permissions** or **Anyone in the organization can invite guest users including guests and non-admins** is selected.
1. If you made changes, select **Save**.

Note the settings in the **Collaboration restrictions** section. Make sure that the domains of the guests that you want to collaborate with aren't blocked.

If you work with guests from multiple organizations, you might want to restrict their ability to access directory data. This prevents them from seeing who else is a guest in the directory. To do this, under **Guest user access restrictions**, select **Guest users have limited access to properties and membership of directory objects settings** or **Guest user access is restricted to properties and memberships of their own directory objects**.

## Microsoft 365 Groups guest settings

Modern SharePoint sites use Microsoft 365 Groups to control site access. The Microsoft 365 Groups guest settings must be turned on in order for guest access in SharePoint sites to work.

![Screenshot of Microsoft 365 Groups guest settings in  Microsoft 365 admin center.](../media/office-365-groups-guest-settings.png)

To set Microsoft 365 Groups guest settings

1. In the Microsoft 365 admin center, in the left navigation pane, expand **Settings**.
1. Select **Org settings**.
1. In the list, select **Microsoft 365 Groups**.
1. Ensure that the **Let group owners add people outside your organization to Microsoft 365 Groups as guests** and **Let guest group members access group content** check boxes are both checked.
1. If you made changes, select **Save changes**.

## SharePoint organization-level sharing settings

In order for guests to have access to SharePoint sites, the SharePoint organization-level sharing settings must allow for sharing with guests.

The organization-level settings determine the settings that are available for individual sites. Site settings can't be more permissive than the organization-level settings.

If you want to allow unauthenticated file and folder sharing, choose **Anyone**. If you want to ensure that all people outside your organization have to authenticate, choose **New and existing guests**. Choose the most permissive setting that's needed by any site in your organization.

![Screenshot of SharePoint organization-level sharing settings.](../media/sharepoint-organization-external-sharing-controls.png)


To set SharePoint organization-level sharing settings

1. In the SharePoint admin center, in the left navigation pane, under **Policies**, select <a href="https://go.microsoft.com/fwlink/?linkid=2185222" target="_blank">**Sharing**</a>.
1. Ensure that external sharing for SharePoint is set to **Anyone** or **New and existing guests**.
1. If you made changes, select **Save**.

## Create a site

The next step is to create the site that you plan to use for collaborating with guests.

To create a site
1. In the SharePoint admin center, under **Sites**, select <a href="https://go.microsoft.com/fwlink/?linkid=2185220" target="_blank">**Active sites**</a>.
1. Select **Create**.
1. Select **Team site**.
1. Type a site name and enter a name for the Group owner (site owner).
1. Under **Advanced settings**, choose if you want this site to be a public or private one.
1. Select **Next**.
1. Select **Finish**.

We'll invite users later. Next, it's important to check the site-level sharing settings for this site.

## SharePoint site-level sharing settings

Check the site-level sharing settings to make sure that they allow the type of access that you want for this site. For example, if you set the organization-level settings to **Anyone**, but you want all guests to authenticate for this site, then make sure the site-level sharing settings are set to **New and existing guests**.

Note that the site can't be shared with unauthenticated people (**Anyone** setting), but individual files and folders can.

You can also use [sensitivity labels to control external sharing settings for SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md).

![Screenshot of SharePoint site external sharing settings.](../media/sharepoint-site-external-sharing-settings.png)

To set site-level sharing settings
1. In the SharePoint admin center, in the left navigation pane, expand **Sites** and select <a href="https://go.microsoft.com/fwlink/?linkid=2185220" target="_blank">**Active sites**</a>.
1. Select the site for the team that you just created.
1. On the **Settings** tab, select **More sharing settings**.
1. Ensure that sharing is set to **Anyone** or **New and existing guests**.
1. If you made changes, select **Save**.

## Invite users

Guest sharing settings are now configured, so you can start adding internal users and guests to your site. Site access is controlled through the associated Microsoft 365 group, so we'll be adding users there.

To invite internal users to a group

1. Navigate to the site where you want to add users.
1. Select **Members** link in the upper right, which denotes the member count.
1. Select **Add members**.
1. Type the names or email addresses of the users that you want to invite to the site, and then select **Save**.

Guests can't be added to the Microsoft 365 group from the site. For information about how to add guest to a group, see [Adding guests to Microsoft 365 Groups](https://support.microsoft.com/office/bfc7a840-868f-4fd6-a390-f347bf51aff6).

## See also

[Best practices for sharing files and folders with unauthenticated users](best-practices-anonymous-sharing.md)

[Limit accidental exposure to files when sharing with guests](share-limit-accidental-exposure.md)

[Create a secure guest sharing environment](create-secure-guest-sharing-environment.md)

[Create a B2B extranet with managed guests](b2b-extranet.md)

[SharePoint and OneDrive integration with Microsoft Entra External ID](/sharepoint/sharepoint-azureb2b-integration-preview)
