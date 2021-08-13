---
title: Use Microsoft Teams meetings with Canvas
ms.author: v-cichur
author: cichur
manager: serdars
ms.reviewer: sovaish
audience: admin
ms.topic: article
ms.service: o365-administration
f1.keywords:
- CSH
ms.collection: M365-modern-desktop
localization_priority: Normal
ROBOTS: NOINDEX, NOFOLLOW
description: "Integrate Microsoft Teams meetings with Canvas"
---


# Use Microsoft Teams meetings with Canvas

Microsoft Teams meetings is a Learning Tools Interoperability (LTI) app that helps educators and students easily navigate between their Learning Management System (LMS) and Teams. Users can access their class teams associated with their course directly from within their LMS.

## Prerequisites Before Deployment

> [!NOTE]
> The current Teams Meetings LTI only supports syncing Canvas users with Microsoft Azure Active Directory (AAD) in a limited scope. 
> - Your tenant must have an Microsoft Education license.
> - Only a single Microsoft tenant can be used for mapping users between Canvas and Microsoft.
> - You will have to turn off SDS before using the Class Teams LTI in order to avoid duplication of groups.

## Microsoft Office 365 Admin

Before managing the Microsoft Teams integration within Instructure Canvas, it is important to have Canvas’s **Microsoft-Teams-Sync-for-Canvas** Azure app approved by your institution’s Microsoft Office 365 admin in your Microsoft Azure tenant before completing the Canvas admin setup.

1. Sign in to Canvas.

2. Select the **Admin** link in the global navigation, and then select your account.

3. In the admin navigation, select the **Settings** link, and then the **Integrations** tab.

![Canvas Teams Sync Updated png](https://user-images.githubusercontent.com/87142492/128552407-78cb28e9-47cf-4026-954d-12dc3553af6f.png)

4. Enter your Microsoft tenant name, login attribute, domain suffix, and AAD lookup attribute. These fields will be used for matching users in Canvas with users in Microsoft Azure Active Directory. 
   * The Login Attribute is the Canvas user attribute utilized for matching.
   * The Suffix field is optional and lets you specify a domain when there isn't an exact mapping between Canvas attributes and Microsoft AAD fields. For example, if your Canvas email is 'name@example.edu' while the UPN in Microsoft AAD is 'name', you can match users by entering 'example.edu' in the suffix field.
   * The Active Directory Lookup Attribute is the field on the Microsoft side which Canvas attributes are matched to. Select in between UPN, primary email address, or the email alias.

5. Select **Update Settings** once done.

6. To approve access for Canvas’s **Microsoft-Teams-Sync-for-Canvas** Azure app, select the **Grant tenant access** link. You'll be redirected to the Microsoft Identity Platform Admin Consent Endpoint.

   ![permissions](media/permissions.png)

7. Select **Accept**. 

> [!NOTE]
> Sync is a functionality that is managed by LMS partner and is used to sync membership at a course level to the Teams team using Microsoft graph APIs. This is primarily a functionality that an educator switches on as true at a course level. Subsequently any membership change done on LMS side for the addition or deletion of the members gets reflected using the Sync implemented by the LMS partner. Even before this process is enabled for an Educator the M365 education institute admin allows their educators to access sync using the Sync permission modal found below. These permissions are granted to the LMS partner to enable educators to sync membership between the LMS course and Teams Class teams.

8. Enable the Microsoft Teams sync by turning the toggle on.

   ![teams-sync](media/teams-sync.png)

## Canvas Admin

Set up the Microsoft Teams LTI 1.3 Integration.

As a Canvas Admin, you'll need to add the Microsoft Teams meetings LTI app within your environment. Make a note of the LTI Client ID for the app.

 - Microsoft Teams meetings - 170000000000703

1. Access **Admin settings** > **Apps**.

2. Select **+ App** to add the Teams LTI apps.

   ![external-apps](media/external-apps.png)

3. Select **By Client ID** for configuration type.

   ![add app](media/add-app.png)

4. Enter the Client ID provided, and then select **Submit**.

   You'll notice the Microsoft Teams meetings LTI app name for the Client ID for confirmation.

5. Select **Install**.

   The Microsoft Teams meetings LTI app will be added to the list of external apps.

6. Enable the app by navigating to the developer keys in the Canvas admin account, selecting inherited, and turning the toggle "on" for Microsoft Teams Meetings.
   
## Enable for Canvas Courses

In order to use the LTI within a course, an instructor of the Canvas course must enable the integrations sync. Each course must be enabled by an instructor for a corresponding Teams to be created; there is no global mechanism for Teams creation. This is designed out of caution to prevent unwanted Teams being created.

Please refer your instructors to [educator documentation](https://support.microsoft.com/en-us/topic/use-microsoft-teams-classes-in-your-lms-preview-ac6a1e34-32f7-45e6-b83e-094185a1e78a#ID0EBD=Instructure_Canvas) for enabling the LTI for each course and finishing the integration setup.
