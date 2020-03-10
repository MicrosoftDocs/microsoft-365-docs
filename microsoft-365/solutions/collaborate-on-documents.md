---
title: "Collaborate with guests on a document"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: sharepoint-online
ms.collection: SPO_Content
localization_priority: Normal
f1.keywords: NOCSH
description: "Learn how to collaborate with guests on a document in SharePoint and OneDrive."
---

# Collaborate with guests on a document

If you need to collaborate with people outside your organization on documents in SharePoint or OneDrive, you can send them a sharing link to the document. In this article, we'll walk through the Microsoft 365 configuration steps necessary to set up sharing links for SharePoint and OneDrive for the needs of your organization.

## Video demonstration

This video shows the configuration steps described in this document.</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE450Vt?autoplay=false]

## Azure Organizational relationships settings

Sharing in Microsoft 365 is governed at its highest level by the organizational relationships settings in Azure Active Directory. If guest sharing is disabled or restricted in Azure AD, this will override any sharing settings that you configure in Microsoft 365.

Check the organizational relationships settings to ensure that sharing with guests is not blocked.

![Screenshot of Azure Active Directory Organizational Relationships Settings page](media/azure-ad-organizational-relationships-settings.png)

To set organizational relationship settings

1. Log in to Microsoft Azure at [https://portal.azure.com](https://portal.azure.com).
2. In the left navigation, click **Azure Active Directory**.
3. In the **Overview** pane, click **Organizational relationships**.
4. In the **Organizational relationships** pane, click **Settings**.
5. Ensure that **Admins and users in the guest inviter role can invite** and **Members can invite** are both set to **Yes**.
6. If you made changes, click **Save**.

Note the settings in the **Collaboration restrictions** section. Make sure that the domains of the guests that you want to collaborate with aren't blocked.

## SharePoint organization level sharing settings

In order for people outside your organization to have access to a document in SharePoint or OneDrive, the SharePoint and OneDrive organization-level sharing settings must allow for sharing with people outside your organization.

The organization-level settings for SharePoint determine what settings are available for individual SharePoint sites. Site settings cannot be more permissive than the organization-level settings. The organization-level setting for OneDrive determines what level of sharing is available in users' OneDrive libraries.

For SharePoint and OneDrive, if you want to allow unauthenticated file and folder sharing, choose **Anyone**. If you want to ensure that people outside your organization have to authenticate, choose **New and existing guests**. *Anyone* links are the easiest way to share: people outside your organization can open the link without authentication and are free to pass it on to others.

For SharePoint, choose the most permissive setting that will be needed by any site in your organization.

![Screenshot of SharePoint organization-level sharing settings](media/sharepoint-organization-external-sharing-controls.png)


To set SharePoint organization level sharing settings

1. In the Microsoft 365 admin center, in the left navigation, under **Admin centers**, click **SharePoint**.
2. In the SharePoint admin center, in the left navigation, click **Sharing**.
3. Ensure that external sharing for SharePoint or OneDrive is set to **Anyone** or **New and existing guests**. (Note that the OneDrive setting cannot be more permissive than the SharePoint setting.)
4. If you made changes, click **Save**.

## SharePoint organization level default link settings

The default file and folder link settings determine which link option is shown to the user by default when they share a file or folder. Users can change the link type to one of the other options before sharing if desired.

Keep in mind that this setting affects SharePoint sites in your organization, as well as OneDrive.

Choose the type of link that's selected by default when users share files and folders:

- **Anyone with the link** - Choose this option if you expect to do a lot of unauthenticated file and folder sharing. If you want to allow *Anyone* links but are concerned about accidental unauthenticated sharing, consider one of the other options as the default. This link type is only available if you've enabled **Anyone** sharing.
- **Only people in your organization** - Choose this option if you expect most file and folder sharing to be with people inside your organization.
- **Specific people** - Consider this option if you expect to do a lot of file and folder sharing with guests. This type of link works with guests and requires them to authenticate.
 
![Screenshot of SharePoint organization-level files and folders sharing settings](media/sharepoint-organization-files-folders-sharing-settings.png)


To set the SharePoint and OneDrive organization level default link settings

1. Navigate to the Sharing page in the SharePoint admin center.
2. Under **File and folder links**, select the default sharing link that you want to use.
3. If you made changes, click **Save**.

## SharePoint site level sharing settings

If you're sharing files and fodlers that are in a SharePoint site, you also need to check the site-level sharing settings for that site.

![Screenshot of SharePoint site external sharing settings](media/sharepoint-site-external-sharing-settings.png)

To set site-level sharing settings
1. In the SharePoint admin center, in the left navigation, expand **Sites** and click **Active sites**.
2. Select the site that you just created.
3. In the ribbon, click **Sharing**.
4. Ensure that sharing is set to **Anyone** or **New and existing guests**.
5. If you made changes, click **Save**.

## Invite users

Guest sharing settings are now configured, so users can now share files and folders with people outside your organization. See [Share OneDrive files and folders](https://support.office.com/article/9fcc2f7d-de0c-4cec-93b0-a82024800c07) and [Share SharePoint files or folders](https://support.office.com/article/1fe37332-0f9a-4719-970e-d2578da4941c) for more information.

## See Also

[Best practices for sharing files and folders with unauthenticated users](best-practices-anonymous-sharing.md)

[Limit accidental exposure to files when sharing with guests](sharing-limit-accidental-exposure.md)