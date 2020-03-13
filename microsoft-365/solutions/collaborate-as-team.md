---
title: "Collaborate with guests in a team"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: sharepoint-online
ms.collection: SPO_Content
localization_priority: Normal
f1.keywords: NOCSH
description: "Learn how to collaborate with guests in Teams."
---

# Collaborate with guests in a team

If you need to collaborate with guests across documents, tasks, and conversations, we recommend using Microsoft Teams. Teams provides all of the collaboration features available in Office and SharePoint with persistent chat and a customizable and extensible set of collaboration tools in a unified user experience.

In this article, we'll walk through the Microsoft 365 configuration steps necessary to set up a team for collaboration with guests.

## Video demonstration

This video shows the configuration steps described in this document.</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE44NTr?autoplay=false]

## Azure Organizational relationships settings

Sharing in Microsoft 365 is governed at its highest level by the organizational relationships settings in Azure Active Directory. If guest sharing is disabled or restricted in Azure AD, this will override any sharing settings that you configure in Microsoft 365.

Check the organizational relationships settings to ensure that sharing with guests is not blocked.

![Screenshot of Azure Active Directory Organizational Relationships Settings page](../media/azure-ad-organizational-relationships-settings.png)

To set organizational relationship settings

1. Log in to Microsoft Azure at [https://portal.azure.com](https://portal.azure.com).
2. In the left navigation, click **Azure Active Directory**.
3. In the **Overview** pane, click **Organizational relationships**.
4. In the **Organizational relationships** pane, click **Settings**.
5. Ensure that **Admins and users in the guest inviter role can invite** and **Members can invite** are both set to **Yes**.
6. If you made changes, click **Save**.

Note the settings in the **Collaboration restrictions** section. Make sure that the domains of the guests that you want to collaborate with aren't blocked.

## Teams guest access settings

Teams has a master on/off switch for guest access and a variety of settings available to control what guests can do in a team. The master switch, **Allow guest access in Teams** must be **On** for guest access to work in Teams.

Check to ensure that guest access is enabled in Teams and make any adjustment to the guest settings based on your business needs. Keep in mind that these settings affect all teams.

![Screenshot of Teams guest access toggle](../media/teams-guest-access-toggle-on.png)

To set Teams guest access settings

1. Log in to the Microsoft 365 admin center at [https://admin.microsoft.com](https://admin.microsoft.com).
2. In the left navigation, click **Show all**.
3. Under **Admin centers**, click **Teams**.
4. In the Teams admin center, in the left navigation, expand **Org-wide settings** and click **Guest access**.
5. Ensure that **Allow guest access in Teams** is set to **On**.
6. Make any desired changes to the additional guest settings, and then click **Save**.

> [!NOTE]
> It may take up to twenty-four hours for the Teams guest setting to become active after you turn it on.

## Office 365 Groups guest settings

Teams uses Office 365 Groups for team membership. The Office 365 Groups guest settings must be turned on in order for guest access in Teams to work.

![Screenshot of Office 365 Groups guest settings in  Microsoft 365 admin center](../media/office-365-groups-guest-settings.png)

To set Office 365 Groups guest settings

1. In the Microsoft 365 admin center, in the left navigation, expand **Settings**.
2. Click **Services & add-ins**.
3. In the list, click **Office 365 Groups**.
4. Ensure that the **Let group members outside your organization access group content** and **Let group owners add people outside your organization to groups** check boxes are both checked.
5. If you made changes, click **Save changes**.


## SharePoint organization level sharing settings

Teams content such as files, folders, and lists are all stored in SharePoint. In order for guests to have access to these items in Teams, the SharePoint organization-level sharing settings must allow for sharing with guests.

The organization-level settings determine what settings are available for individual sites, including sites associated with teams. Site settings cannot be more permissive than the organization-level settings.

If you want to allow file and folder sharing with unauthenticated people, choose **Anyone**. If you want to ensure that all guests have to authenticate, choose **New and existing guests**. Choose the most permissive setting that will be needed by any site in your organization.

![Screenshot of SharePoint organization-level sharing settings](../media/sharepoint-organization-external-sharing-controls.png)


To set SharePoint organization level sharing settings

1. In the Microsoft 365 admin center, in the left navigation, under **Admin centers**, click **SharePoint**.
2. In the SharePoint admin center, in the left navigation, click **Sharing**.
3. Ensure that external sharing for SharePoint is set to **Anyone** or **New and existing guests**.
4. If you made changes, click **Save**.


## SharePoint organization level default link settings

The default file and folder link settings determine which link option is shown to the user by default when they share a file or folder. Users can change the link type to one of the other options before sharing if desired.

Keep in mind that this setting affects all teams and SharePoint sites in your organization.

Choose the type of link that's selected by default when users share files and folders:

- **Anyone with the link** - Choose this option if you expect to do a lot of unauthenticated sharing of files and folders. If you want to allow *Anyone* links but are concerned about accidental unauthenticated sharing, consider one of the other options as the default. This link type is only available if you've enabled **Anyone** sharing.
- **Only people in your organization** - Choose this option if you expect most file and folder sharing to be with people inside your organization.
- **Specific people** - Consider this option if you expect to do a lot of file and folder sharing with guests. This type of link works with guests and requires them to authenticate.
 
![Screenshot of SharePoint organization-level files and folders sharing settings](../media/sharepoint-organization-files-folders-sharing-settings.png)


To set the SharePoint organization level default link settings

1. Navigate to the Sharing page in the SharePoint admin center.
2. Under **File and folder links**, select the default sharing link that you want to use.
3. If you made changes, click **Save**.

## Create a team

The next step is to create the team that you plan to use for collaborating with guests.

To create a team
1. In Teams, on the **Teams** tab, click **Join or create a team** at the bottom of the left pane.
2. Click **Create a team**.
3. Click **Build a team from scratch**.
4. Choose **Private** or **Public**.
5. Type a name and description for the team, and then click **Create**.
6. Click **Skip**.

We'll invite users later. Next, it's important to check the site-level sharing settings for the SharePoint site that is associated with the team.

## SharePoint site level sharing settings

Check the site-level sharing settings to make sure that they allow the type of access that you want for this team. For example, if you set the organization-level settings to **Anyone**, but you want all guests to authenticate for this team, then make sure the site-level sharing settings are set to **New and existing guests**.

![Screenshot of SharePoint site external sharing settings](../media/sharepoint-site-external-sharing-settings.png)


To set site-level sharing settings
1. In the SharePoint admin center, in the left navigation, expand **Sites** and click **Active sites**.
2. Select the site for the team that you just created.
3. In the ribbon, click **Sharing**.
4. Ensure that sharing is set to **Anyone** or **New and existing guests**.
5. If you made changes, click **Save**.

## Invite users

Guest sharing settings are now configured, so you can start adding internal users and guests to your team. 

To invite internal users to a team
1. In the team, click **More options** (**\*\*\***), and then click **Add member**.
2. Type the name of the person who you want to invite.
3. Click **Add**, and then click **Close**.

To invite guests to a team
1. In the team, click **More options** (**\*\*\***), and then click **Add member**.
2. Type the email address of the guest who you want to invite.
3. Click **Edit guest information**.
4. Type the guest's full name and click the check mark.
5. Click **Add**, and then click **Close**.

## See Also

[Best practices for sharing files and folders with unauthenticated users](best-practices-anonymous-sharing.md)

[Limit accidental exposure to files when sharing with guests](share-limit-accidental-exposure.md)

[Create a secure guest sharing environment](create-secure-guest-sharing-environment.md)

[Create a B2B extranet with managed guests](b2b-extranet.md)
