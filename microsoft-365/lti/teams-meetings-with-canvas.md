---
title: Use Microsoft Teams meetings with Canvas
author: MicrosoftHeidi
ms.author: heidip
manager: jacktremper
ms.reviewer: sovaish
ms.date: 05/26/2021
audience: admin
ms.topic: how-to
ms.service: microsoft-365-business
f1.keywords:
- CSH
ms.collection: 
- M365-modern-desktop
- tier2
ms.localizationpriority: medium
ROBOTS: NOINDEX, NOFOLLOW
description: "Integrate Microsoft Teams meetings with Canvas"
---

# Use Microsoft Teams meetings with Canvas

Microsoft Teams meetings is a Learning Tools Interoperability (LTI) app that helps educators and students easily navigate between their Learning Management System (LMS) and Teams. Users can access their class teams associated with their course directly from within their LMS.

## Prerequisites Before Deployment

> [!NOTE]
> The current Teams Meetings LTI only supports syncing Canvas users with Microsoft Entra ID in a limited scope.
>
> - Your tenant must have a Microsoft Education license.
> - Only a single Microsoft tenant can be used for mapping users between Canvas and Microsoft.
> - If you plan to use the Microsoft Teams Sync feature of Canvas concurrently with Microsoft’s School Data Sync (SDS), don't include class and class roster data in your SDS sync. You can continue to use SDS to sync all other data including users, organizations, parent contacts, and demographics.
> - You can use Teams Meetings LTI without enabling **Course Sync**. However, you won't be able to use the **Add entire class** option. You can either type or copy and paste attendees' email addresses, or add channels of existing teams to the meetings.

## Microsoft Office 365 Admin

Before managing the Microsoft Teams integration within Instructure Canvas, it's important to have Canvas’s **Microsoft-Teams-Sync-for-Canvas** Azure app approved by your institution’s Microsoft Office 365 admin in your Microsoft Azure tenant before completing the Canvas admin setup.

1. Sign in to Canvas.

2. Select the **Admin** link in the global navigation, and then select your account.

3. In the admin navigation, select the **Settings** link, and then the **Integrations** tab.

   ![Canvas Teams Sync Updated png.](https://user-images.githubusercontent.com/87142492/128552407-78cb28e9-47cf-4026-954d-12dc3553af6f.png)

4. Enter your Microsoft tenant name, login attribute, domain suffix, and Microsoft Entra lookup attribute. These fields will be used for matching users in Canvas with users in Microsoft Entra ID.
   - The Login Attribute is the Canvas user attribute utilized for matching.
   - The Suffix field is optional and lets you specify a domain when there isn't an exact mapping between Canvas attributes and Microsoft Entra fields. For example, if your Canvas email is 'name@example.edu' while the UPN in Microsoft Entra is 'name', you can match users by entering 'example.edu' in the suffix field.
   - The Active Directory Lookup Attribute is the field on the Microsoft side which Canvas attributes are matched to. Select in between UPN, primary email address, or the email alias.

5. Select **Update Settings** once done.

6. To approve access for Canvas’s **Microsoft-Teams-Sync-for-Canvas** Azure app, select the **Grant tenant access** link. You'll be redirected to the Microsoft identity platform Admin Consent Endpoint.

   ![permissions.](media/permissions.png)

7. Select **Accept**.

   > [!NOTE]
   > Sync is a functionality that is managed by LMS partner and is used to sync membership at a course level to the Teams team using Microsoft graph APIs. This is primarily a functionality that an educator switches on as true at a course level. Subsequently any membership change done on LMS side for the addition or deletion of the members gets reflected using the Sync implemented by the LMS partner. Even before this process is enabled for an Educator the M365 education institute admin allows their educators to access sync using the Sync permission modal found below. These permissions are granted to the LMS partner to enable educators to sync membership between the LMS course and Teams Class teams.

8. Enable the Microsoft Teams sync by turning on the toggle.

   ![teams-sync.](media/teams-sync.png)

## Canvas Admin

Set up the Microsoft Teams LTI 1.3 Integration.

As a Canvas Admin, you'll need to add the Microsoft Teams meetings LTI app within your environment. Make a note of the LTI Client ID for the app.

- Microsoft Teams meetings - 170000000000703

1. Sign in to Canvas as an administrator.

2. Select the Admin link in the global navigation, and then select your account.

3. In the admin navigation, select the Developer Keys link, and then select the Inherited tab.

4. Enable the LTI apps you are going to deploy by selecting the ON state for each of the appropriate apps.

5. Access **Admin settings** > **Apps**.

6. Select **+ App** to add the Teams LTI apps.

   ![external-apps.](media/external-apps.png)

7. Select **By Client ID** for configuration type.

   ![add app.](media/add-app.png)

8. Enter the Client ID provided, and then select **Submit**.

   You'll notice the Microsoft Teams meetings LTI app name for the Client ID for confirmation.

9. Select **Install**.

   The Microsoft Teams meetings LTI app will be added to the list of external apps.

## Enable for Canvas Courses

In order to use the LTI within a course, an instructor of the Canvas course must enable the integrations sync. Each course must be enabled by an instructor for a corresponding Teams to be created; there's no global mechanism for Teams creation. This is designed out of caution to prevent unwanted Teams being created.

Please refer your instructors to [educator documentation](https://support.microsoft.com/topic/use-microsoft-teams-classes-in-your-lms-preview-ac6a1e34-32f7-45e6-b83e-094185a1e78a#ID0EBD=Instructure_Canvas) for enabling the LTI for each course and finishing the integration setup.
