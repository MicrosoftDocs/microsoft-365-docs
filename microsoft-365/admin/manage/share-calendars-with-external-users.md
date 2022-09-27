---
title: "Share calendars with external users"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- MSStore_Link
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: fb00dd4e-2d5f-4e8d-8ff4-94b2cf002bdd
description: "Enable calendar sharing in the Microsoft 365 admin center so users can share their calendars with anyone inside or outside the organization."
---

# Share Microsoft 365 calendars with external users

It's sometimes necessary for your users to schedule meetings with people outside your organization. To simplify the process of finding common meeting times, Microsoft 365 enables you to make calendars available to these people. These are people who need to see free and busy times for users in your organization, but don't have user accounts for your Microsoft 365 organization.

You can enable calendar sharing for all users in your organization in the Microsoft 365 admin center. Once sharing is enabled, your users can use Outlook Web App to share their calendars with anyone inside or outside the organization. People inside the organization can view the shared calendar along with their own calendar. People outside the organization will be sent a URL that they can use to view the calendar. Users in your organization decide when to share and how much to share.

> [!NOTE]
> If you want to share calendars with an organization that uses Exchange Server 2013 (an on-premises solution), the Exchange administrator will need to set up an authentication relationship with the cloud. This is known as federation, and must meet minimum software requirements. See [Sharing](/exchange/sharing-exchange-2013-help) for more information.
  
## Enable calendar sharing using the Microsoft 365 admin center

1. Sign in as a **Global Administator** to the admin center, go to **Settings** \> **Org settings**, and on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">**Services** tab</a>, select **Calendar**.
  
3. On the **Calendar** page, choose whether you want to let users share their calendars with people outside of your organization who have Microsoft 365 or Exchange. Choose whether you want to allow anonymous users (users without credentials) to access calendars via an email invitation.

4. Choose what type of calendar information to make available to users. You can allow all information, or limit it to time only or time, subject, and location only.

## External sharing sync interval

Instant syncing for sharing outside your tenant isn't supported currently. While you can share in these configurations, syncing will happen periodically. There are two types of cross-tenant sharing:

1. **Microsoft 365 to another Microsoft 365 user (if external sharing is enabled)**: A fully shared calendar is created, but the sync will happen approximately every three hours. Instant syncing will eventually be enabled for this setup.

2. **Microsoft 365 to an Outlook.com user**: If external sharing is disabled, sharing to another Microsoft 365 user also falls into this group. An ICS URL is generated when sharing, which the recipient can use to add to any calendar service. With an ICS subscription, the recipient’s calendar service chooses when to sync the ICS subscription to receive new updates. If the recipient is an Outlook.com or a Microsoft 365 user, the sync will happen approximately every three hours.

## Invite people to access calendars

Once sharing is enabled, calendar owners can extend invitations to specific users.

1. Open [Outlook on the Web](https://outlook.office365.com).

2. At the top of the page, select the app launcher and select **Calendar**. By default, your primary calendar is called "Calendar". If you created other calendars, you can select one of them to share instead. You cannot share calendars owned by other people.

3. Enter the name or email address of the person with whom you want to share your calendar in the **Send a sharing invitation in email** box.

4. Choose how much information you want this person to see:

     - **Can view when I'm busy** lets the person see when you are busy but does not include details such as the event location.

     - **Can view titles and locations** lets the person see when you are busy as well as the title and location of events.

     - **Can view all details** lets the person see all the details of your events.

     - **Can edit** lets the person see all details of your events and edit your calendar (only available when sharing with people in your organization).

5. Select **Share**. 

## Related content

[Turn external sharing on or off for a site](/sharepoint/change-external-sharing-site) (article)\
[Overview of the Microsoft 365 admin center](../admin-overview/admin-center-overview.md) (video)\
[Manage email and calendars](/admin) (link page)

