---
title: "Collaborate with guests on a document"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.collection: 
- SPO_Content
- M365-collaboration
- m365solution-3tiersprotection
- m365solution-securecollab
- m365initiative-externalcollab
ms.custom: 
- seo-marvel-apr2020
localization_priority: Normal
f1.keywords: NOCSH
recommendations: false
description: "In this article, you'll learn how to collaborate with guests on a document in SharePoint and OneDrive."
---

# Collaborate with guests on a document

If you need to collaborate with people outside your organization on documents in SharePoint or OneDrive, you can send them a sharing-link to the document. In this article, we'll walk through the Microsoft 365 configuration steps necessary to set up sharing-links for SharePoint and OneDrive for the needs of your organization.

## Video demonstration

This video shows the configuration steps described in this document.</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE450Vt?autoplay=false]

## Azure external collaboration settings

Sharing in Microsoft 365 is governed at its highest level by the [B2B external collaboration settings in Azure Active Directory](/azure/active-directory/external-identities/delegate-invitations). If guest-sharing is disabled or restricted in Azure AD, this setting overrides any sharing settings that you configure in Microsoft 365.

Check the B2B external collaboration settings to ensure that sharing with guests is not blocked.

![Screenshot of Azure Active Directory Organizational Relationships Settings page](../media/azure-ad-organizational-relationships-settings.png)

To set external collaboration settings

1. Log in to Azure Active Directory at [https://aad.portal.azure.com](https://aad.portal.azure.com).
2. In the left navigation pane, click **Azure Active Directory**.
3. Click **External identities**.
4. On the **Get started** screen, in the left navigation pane, click **External collaboration settings**.
5. Ensure that **Admins and users in the guest inviter role can invite** and **Members can invite** are both set to **Yes**.
6. If you made changes, click **Save**.

Note the settings in the **Collaboration restrictions** section. Make sure that the domains of the guests that you want to collaborate with aren't blocked.

If you work with guests from multiple organizations, you may want to restrict their ability to access directory data. This will prevent them from seeing who else is a guest in the directory. To do this, under **Guest user access restrictions**, select **Guest users have limited access to properties and membership of directory objects settings** or **Guest user access is restricted to properties and memberships of their own directory objects**.

## SharePoint organization-level sharing settings

In order for people outside your organization to have access to a document in SharePoint or OneDrive, the SharePoint and OneDrive organization-level sharing settings must allow for sharing with people outside your organization.

The organization-level settings for SharePoint determine the settings that will be available for individual SharePoint sites. Site settings cannot be more permissive than the organization-level settings. The organization-level setting for OneDrive determines the level of sharing that will be available in users' OneDrive libraries.

For SharePoint and OneDrive, if you want to allow unauthenticated file and folder sharing, choose **Anyone**. If you want to ensure that people outside your organization have to authenticate, choose **New and existing guests**. *Anyone* links is the easiest way to share: people outside your organization can open the link without authentication and are free to pass it on to others.

For SharePoint, choose the most permissive setting that will be needed by any site in your organization.

![Screenshot of SharePoint organization-level sharing settings](../media/sharepoint-organization-external-sharing-controls.png)


To set SharePoint organization-level sharing settings

1. In the Microsoft 365 admin center, in the left navigation pane, under **Admin centers**, click **SharePoint**.
2. In the SharePoint admin center, in the left navigation pane, under **Policies**, click **Sharing**.
3. Ensure that external sharing for SharePoint or OneDrive is set to **Anyone** or **New and existing guests**. (Note that the OneDrive setting cannot be more permissive than the SharePoint setting.)
4. If you made changes, click **Save**.

## SharePoint organization-level default link settings

The default file and folder link settings determine the link option that will be shown to users by default when they share a file or folder. Users can change the link type to one of the other options before sharing, if desired.

Keep in mind that this setting affects SharePoint sites in your organization, as well as OneDrive.

Choose a link from any of the following types which is then selected by default when users share files and folders:

- **Anyone with the link** - Choose this option if you expect to do a lot of unauthenticated file and folder sharing. If you want to allow *Anyone* links but are concerned about accidental unauthenticated sharing, consider one of the other options as the default. This link type is only available if you've enabled **Anyone** sharing.
- **Only people in your organization** - Choose this option if you expect most file and folder sharing to be with people inside your organization.
- **Specific people** - Consider this option if you expect to do a lot of file and folder sharing with guests. This type of link works with guests and requires them to authenticate.
 
![Screenshot of SharePoint organization-level files and folders sharing settings](../media/sharepoint-organization-files-folders-sharing-settings.png)


To set the SharePoint and OneDrive organization-level default link settings

1. Navigate to the Sharing page in the SharePoint admin center.
2. Under **File and folder links**, select the default sharing link that you want to use.
3. If you made changes, click **Save**.

To set the permission for the sharing link, under **Choose the permission that's selected by default for sharing links.**

1. Select **View** if you do not want unauthenticated users to make changes to the files and folders.
2. Select **Edit** if you want to allow unauthenticated users to make changes to the files and folders.

Note that the above two premission-options can be applied not only for guests/external users but also for internal users. The permission-option you choose is determined by self-discretion.

To set permissions for links that allow sharing with anyone

1. Under the **These links can give these permissions:** sub-pane, 
    1. From the **Files** drop-down list, 
        - Select **View and edit** if you want to allow unauthenticated users to make changes to the files.
        - Select **View** if you do not want unauthenticated users to make changes to the files.
    2. From the **Folders** drop-down list,
        - Select **View, edit, and upload** if you want to allow unauthenticated users to make changes to the folders.
        - Select **View** if you do not want unauthenticated users to make changes to the folders.

## SharePoint site-level sharing settings

If you're sharing files and folders that are in a SharePoint site, you also need to check the site-level sharing settings for that site.

![Screenshot of SharePoint site external sharing settings](../media/sharepoint-site-external-sharing-settings.png)

To set site-level sharing settings

1. In the SharePoint admin center, in the left navigation pane, expand **Sites** and click **Active sites**.
2. Select the site on which you want to share files and folders with guests.
3. Scroll right across the row (in which the selected site is present) and click anywhere in the **External sharing** column.
4. From the page that pops up, click **Policies** tab.
5. Under the **External sharing** pane, click **Edit**.
6. Ensure that sharing is set to **Anyone** or **New and existing guests**.
7. If you made changes, click **Save**.

## Invite users

Guest-sharing settings are now configured; so users can now share files and folders with people outside your organization. See [Share OneDrive files and folders](https://support.office.com/article/9fcc2f7d-de0c-4cec-93b0-a82024800c07) and [Share SharePoint files or folders](https://support.office.com/article/1fe37332-0f9a-4719-970e-d2578da4941c) for more information.

## See also

[Best practices for sharing files and folders with unauthenticated users](best-practices-anonymous-sharing.md)

[Limit accidental exposure to files when sharing with guests](share-limit-accidental-exposure.md)

[SharePoint and OneDrive integration with Azure AD B2B](/sharepoint/sharepoint-azureb2b-integration-preview)