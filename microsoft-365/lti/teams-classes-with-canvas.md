---
title: Use Microsoft Teams classes with Canvas
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
description: "Integrate Microsoft Teams classes with Canvas"
---


# Use Microsoft Teams classes with Canvas

Microsoft Teams classes is a Learning Tools Interoperability (LTI) app that helps educators and students easily navigate between their Learning Management System (LMS) and Teams. Users can access their class teams associated with their course directly from within their LMS.

## Prerequisites Before Deployment

> [!NOTE]
> The current Class Teams LTI only supports syncing Canvas users with Microsoft Azure Active Directory (AAD) in a limited scope. 
> - Your tenant must have an exact match between a Canvas field (email, user ID, or SIS ID) and the UPN in Microsoft AAD. We are working to expand flexibility to the syncing functionality, but in the meantime, any users in Canvas not matched to a UPN in AAD will not be added to the Teams class synced with Canvas. 
> - Only a single Microsoft tenant can be used for mapping users between Canvas and Microsoft.
> - You will have to turn off SDS before using the Class Teams LTI in order to avoid duplication of groups.

## Microsoft Office 365 Admin

Before managing the Microsoft Teams integration within Instructure Canvas, it is important to have Canvas’s **Microsoft-Teams-Sync-for-Canvas** Azure app approved by your institution’s Microsoft Office 365 admin in your Microsoft Azure tenant before completing the Canvas admin setup.

1. Sign in to Canvas.

2. Select the **Admin** link in the global navigation, and then select your account.

3. In the admin navigation, select the **Settings** link, and then the **Integrations** tab.

4. Enable Microsoft Teams Sync by turning the toggle on.

   ![teams-sync](media/teams-sync.png)

5. Enter your Microsoft tenant name and login attribute.

   The login attribute will be used for associating the Canvas user with an Azure Active Directory user.

6. Select **Update Settings** once done.

7. To approve access for Canvas’s **Microsoft-Teams-Sync-for-Canvas** Azure app, select the **Grant tenant access** link. You'll be redirected to the Microsoft Identity Platform Admin Consent Endpoint.

   ![permissions](media/permissions.png)

8. Select **Accept**.

## Canvas Admin

Set up the Microsoft Teams LTI 1.3 Integration.

As a Canvas Admin, you'll need to add the Microsoft Teams classes LTI app within your environment. Make a note of the LTI Client ID for the app.

 - Microsoft Teams classes - 170000000000570

1. Access **Admin settings** > **Apps**.

2. Select **+ App** to add the Teams LTI apps.

   ![external-apps](media/external-apps.png)

3. Select **By Client ID** for configuration type.

   ![add app](media/add-app.png)

4. Enter the Client ID provided, and then select **Submit**.

   You'll notice the Microsoft Teams classes LTI app name for the Client ID for confirmation.

5. Select **Install**.

   The Microsoft Teams classes LTI app will be added to the list of external apps.
   
## Enabling the LTI app for Canvas courses

To use the LTI app within a course, an instructor of the Canvas course must enable integrations sync. Each course must be enabled by an instructor for a corresponding team to be created; there is no global mechanism for teams creation. This is designed as a precautionary measure to prevent unwanted teams from being created.

Refer your instructors to the [educator documentation](https://support.microsoft.com/topic/use-microsoft-teams-classes-in-your-lms-preview-ac6a1e34-32f7-45e6-b83e-094185a1e78a#ID0EBD=Instructure_Canvas) for enabling the LTI app for each course and completing the integration setup.
