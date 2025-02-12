---
title: Collaborate with guests on a document (IT Admins)
author: DaniEASmith
ms.author: danismith
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
description: "In this article, you'll learn how to collaborate with guests on a document in SharePoint and OneDrive."
---

# Collaborate with guests on a document (IT Admins)

If you need to collaborate with people outside your organization on documents in SharePoint or OneDrive, you can send them a sharing-link to the document. In this article, we'll walk through the Microsoft 365 configuration steps necessary to set up sharing-links for SharePoint and OneDrive for the needs of your organization.

## Video demonstration

This video shows the configuration steps described in this document.</br>

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=b495cdf8-1838-418e-8872-94a56907170a]

## Microsoft Entra External ID external collaboration settings

Sharing in Microsoft 365 is governed at its highest level by the [external collaboration settings in Microsoft Entra External ID](/azure/active-directory/external-identities/delegate-invitations). If guest-sharing is disabled or restricted in Microsoft Entra External ID, this setting overrides any sharing settings that you configure in Microsoft 365.

Check the external collaboration settings to ensure that sharing with guests isn't blocked.

![Screenshot of Microsoft Entra External ID Organizational Relationships Settings page.](../media/azure-ad-organizational-relationships-settings.png)

To set external collaboration settings

1. Sign in to Microsoft Entra External ID at [https://entra.microsoft.com/](https://entra.microsoft.com/).
1. In the left navigation pane, expand **External identities**.
1. Select **External collaboration settings**.
1. Ensure that either **Member users and users assigned to specific admin roles can invite guest users including guests with member permissions** or **Anyone in the organization can invite guest users including guests and non-admins** is selected.
1. If you made changes, select **Save**.

Note the settings in the **Collaboration restrictions** section. Make sure that the domains of the guests that you want to collaborate with aren't blocked.

If you work with guests from multiple organizations, you might want to restrict their ability to access directory data. This prevents them from seeing who else is a guest in the directory. To do this, under **Guest user access restrictions**, select **Guest users have limited access to properties and membership of directory objects settings** or **Guest user access is restricted to properties and memberships of their own directory objects**.

## SharePoint organization-level sharing settings

In order for people outside your organization to have access to a document in SharePoint or OneDrive, the SharePoint and OneDrive organization-level sharing settings must allow for sharing with people outside your organization.

The organization-level settings for SharePoint determine the settings that are available for individual SharePoint sites. Site settings can't be more permissive than the organization-level settings. The organization-level setting for OneDrive determines the level of sharing that's available in users' OneDrive libraries.

For SharePoint and OneDrive, if you want to allow unauthenticated file and folder sharing, choose **Anyone**. If you want to ensure that people outside your organization have to authenticate, choose **New and existing guests**. *Anyone* links are the easiest way to share: people outside your organization can open the link without authentication and are free to pass it on to others.

For SharePoint, choose the most permissive setting that's needed by any site in your organization.

![Screenshot of SharePoint organization-level sharing settings.](../media/sharepoint-organization-external-sharing-controls.png)


To set SharePoint organization-level sharing settings

1. In the SharePoint admin center, in the left navigation pane, under **Policies**, select <a href="https://go.microsoft.com/fwlink/?linkid=2185222" target="_blank">**Sharing**</a>.
1. Ensure that external sharing for SharePoint or OneDrive is set to **Anyone** or **New and existing guests**. (Note that the OneDrive setting can't be more permissive than the SharePoint setting.)
1. If you made changes, select **Save**.

## SharePoint organization-level default link settings

The default file and folder link settings determine the link option that's shown to users by default when they share a file or folder. Users can change the link type to one of the other options before sharing, if desired.

Keep in mind that this setting affects SharePoint sites in your organization, as well as OneDrive.

Choose a link from any of the following types, which is then selected by default when users share files and folders:

- **Anyone with the link** - Choose this option if you expect to do a lot of unauthenticated file and folder sharing. If you want to allow *Anyone* links but are concerned about accidental unauthenticated sharing, consider one of the other options as the default. This link type is only available if you've enabled **Anyone** sharing.
- **Only people in your organization** - Choose this option if you expect most file and folder sharing to be with people inside your organization.
- **Specific people** - Consider this option if you expect to do many file and folder sharing with guests. This type of link works with guests and requires them to authenticate.
 
![Screenshot of SharePoint organization-level files and folders sharing settings.](../media/sharepoint-organization-files-folders-sharing-settings.png)

To set the SharePoint and OneDrive organization-level default link settings

1. Go to <a href="https://go.microsoft.com/fwlink/?linkid=2185222" target="_blank">**Sharing**</a> in the SharePoint admin center.
1. Under **File and folder links**, select the default sharing link that you want to use.
1. If you made changes, select **Save**.

To set the permission for the sharing link, under **Choose the permission that's selected by default for sharing links.**

1. Select **View** if you don't want users to make changes to the files and folders.
1. Select **Edit** if you want to allow users to make changes to the files and folders.

Optionally, choose an expiration time for *Anyone* links.

To set permissions for links that allow sharing with anyone

1. Under the **These links can give these permissions:** subpane, 
    1. From the **Files** drop-down list, 
        - Select **View and edit** if you want to allow unauthenticated users to make changes to the files.
        - Select **View** if you don't want unauthenticated users to make changes to the files.
    2. From the **Folders** drop-down list,
        - Select **View, edit, and upload** if you want to allow unauthenticated users to make changes to the folders.
        - Select **View** if you don't want unauthenticated users to make changes to the folders.

## SharePoint site-level sharing settings

If you're sharing files and folders that are in a SharePoint site, you also need to check the site-level sharing settings for that site.

![Screenshot of SharePoint site external sharing settings.](../media/sharepoint-site-external-sharing-settings.png)

To set site-level sharing settings
1. In the SharePoint admin center, in the left navigation pane, expand **Sites** and select <a href="https://go.microsoft.com/fwlink/?linkid=2185220" target="_blank">**Active sites**</a>.
1. Select the site for the team that you just created.
1. On the **Settings** tab, select **More sharing settings**.
1. Ensure that sharing is set to **Anyone** or **New and existing guests**.
1. If you made changes, select **Save**.

## Invite users

Guest-sharing settings are now configured; so users can now share files and folders with people outside your organization. See [Share OneDrive files and folders](https://support.office.com/article/9fcc2f7d-de0c-4cec-93b0-a82024800c07) and [Share SharePoint files or folders](https://support.office.com/article/1fe37332-0f9a-4719-970e-d2578da4941c) for more information.

## See also

[Best practices for sharing files and folders with unauthenticated users](best-practices-anonymous-sharing.md)

[Limit accidental exposure to files when sharing with guests](share-limit-accidental-exposure.md)

[SharePoint and OneDrive integration with Microsoft Entra External ID](/sharepoint/sharepoint-azureb2b-integration-preview)
