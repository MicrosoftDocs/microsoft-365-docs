---
title: "Collaborate with guests in a site"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: sharepoint-online
localization_priority: Normal
f1.keywords: NOCSH
description: "Learn how to collaborate with guests in a SharePoint site."
---

# Collaborate with guests in a site

If you need to collaborate with guests across documents, data, and lists, you can use a SharePoint site. Modern SharePoint sites are connected to Office 365 Groups which can manage the site membership and provide additional collaboration tools such as a shared mailbox and calendar.

In this article, we'll walk through the Microsoft 365 configuration steps necessary to set up a SharePoint site for collaboration with guests.

## Video demonstration

This video shows the configuration steps described in this document.</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE44Llg?autoplay=false]

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

## Office 365 Groups guest settings

Modern SharePoint sites use Office 365 Groups to control site access. The Office 365 Groups guest settings must be turned on in order for guest access in SharePoint sites to work.

![Screenshot of Office 365 Groups guest settings in  Microsoft 365 admin center](media/office-365-groups-guest-settings.png)

To set Office 365 Groups guest settings

1. In the Microsoft 365 admin center, in the left navigation, expand **Settings**.
2. Click **Services & add-ins**.
3. In the list, click **Office 365 Groups**.
4. Ensure that the **Let group members outside your organization access group content** and **Let group owners add people outside your organization to groups** check boxes are both checked.
5. If you made changes, click **Save changes**.


## SharePoint organization level sharing settings

In order for guests to have access to SharePoint sites, the SharePoint organization-level sharing settings must allow for sharing with guests.

The organization-level settings determine what settings are available for individual sites. Site settings cannot be more permissive than the organization-level settings.

If you want to allow unauthenticated file and folder sharing, choose **Anyone**. If you want to ensure that all people outside your organization have to authenticate, choose **New and existing guests**. Choose the most permissive setting that will be needed by any site in your organization.

![Screenshot of SharePoint organization-level sharing settings](media/sharepoint-organization-external-sharing-controls.png)


To set SharePoint organization level sharing settings

1. In the Microsoft 365 admin center, in the left navigation, under **Admin centers**, click **SharePoint**.
2. In the SharePoint admin center, in the left navigation, click **Sharing**.
3. Ensure that external sharing for SharePoint is set to **Anyone** or **New and existing guests**.
4. If you made changes, click **Save**.

## Create a site

The next step is to create the site that you plan to use for collaborating with guests.

To create a site
1. In the SharePoint admin center, under **Sites**, click **Active sites**.
2. Click **Create**.
3. Click **Team site**.
4. Type a site name and enter a name for the Group owner (site owner).
5. Under **Advanced settings**, choose if you want this to be a public or private site.
6. Click **Next**.
7. Click **Finish**.

We'll invite users later. Next, it's important to check the site-level sharing settings for this site.

## SharePoint site level sharing settings

Check the site-level sharing settings to make sure that they allow the type of access that you want for this site. For example, if you set the organization-level settings to **Anyone**, but you want all guests to authenticate for this site, then make sure the site-level sharing settings are set to **New and existing guests**.

Note that the site cannot be shared with unauthenticated people (**Anyone** setting), but individual files and folders can.

![Screenshot of SharePoint site external sharing settings](media/sharepoint-site-external-sharing-settings.png)

To set site-level sharing settings
1. In the SharePoint admin center, in the left navigation, expand **Sites** and click **Active sites**.
2. Select the site that you just created.
3. In the ribbon, click **Sharing**.
4. Ensure that sharing is set to **Anyone** or **New and existing guests**.
5. If you made changes, click **Save**.

## Invite users

Guest sharing settings are now configured, so you can start adding internal users and guests to your site. Site access is controlled through the associated Office 365 Group, so we'll be adding users there.

To invite internal users to a group
1. Navigate to the site where you want to add users.
2. Click **Members** in the upper right.
3. Click **Add members**.
4. Type the names or email addresses of the users that you want to invite to the site, and then click **Save**.

Guest users can't be added from the site. You need to add them using Outlook on the web.

To invite guests to a group
1. In Outlook on the web, under **Groups**, click the group where you want to add members.
2. Open the group contact card, and then, under **More options** (...), click **Add members**.
3. Type the email addresses of the guests that you want to invite, and then click **Add**.
4. Click **Close**.

## See Also

[Best practices for sharing files and folders with unauthenticated users](best-practices-anonymous-sharing.md)

[Limit accidental exposure to files when sharing with guests](sharing-limit-accidental-exposure.md)

[Create a secure guest sharing environment](create-a-secure-guest-sharing-environment.md)

[Create a B2B extranet with managed guests](b2b-extranet.md)

