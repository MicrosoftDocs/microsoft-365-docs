---
title: Use Microsoft Teams with Canvas
author: jennplatt
ms.author: avering
manager: michal.gideoni
ms.reviewer: sovaish
last.review.by: avering
last.review.date: 07/07/2025
ms.date: 07/07/2025
audience: admin
ms.topic: how-to
ms.service: msteams
ms.subservice: teams-education
f1.keywords:
- CSH
ms.collection: 
- M365-modern-desktop
- tier2
ms.localizationpriority: medium
ROBOTS: NOINDEX, NOFOLLOW
description: "Integrate Microsoft Teams with Canvas"
---

# Use Microsoft Teams with Canvas

Microsoft Teams is a Learning Tools Interoperability (LTI) app that helps educators and students easily navigate between their Learning Management System (LMS) and Teams. Users can access their class teams associated with their course directly from within their LMS.

## Prerequisites Before Deployment

> [!NOTE]
> The current Teams only supports syncing Canvas users with Microsoft Entra ID in a limited scope.
>
> - Your tenant must have a Microsoft Education license (A1 or higher).
> - A single Microsoft tenant only can be used for mapping users between Canvas and Microsoft.
> - Your tenant must have an exact match between a Canvas field (email, Unique User ID, SIS ID, or Integration ID) and a field in Microsoft Entra ID (User Principal Name (UPN), Primary Email Address (Mail), or Email Alias (mailNickname).
> - You must disable the Team Creation Option in School Data Sync (SDS) and perform a [Group Cleanup](/schooldatasync/group-cleanup) to avoid duplication of classes, if you use SDS to create classes and groups. SDS can still be used to sync organization and user data.

## Enable the Microsoft Teams app in Canvas

To begin the integration, you need to enable the app in Canvas by enabling the developer keys, enabling the Microsoft Teams Sync, and approving the Microsoft-Teams-Sync-for-Canvas app. Approving the app can only be performed by a Microsoft tenant admin that can approve apps.

**To enable Microsoft Teams Sync and approve access for the app**:

1. Sign in to Canvas as an administrator.

2. Select the **Admin** link in the global navigation, and then select your account.
3. In the admin navigation, select the **Developer Keys** link, and then select the **Inherited** tab.
4. Enable the LTI apps you're going to deploy by selecting the **ON** state for each of the appropriate apps.

5. In the admin navigation, select the **Settings** link, and then the **Integrations** tab.

6. Enable Microsoft Teams Sync by turning the toggle on. This sync allows classes to be created in Teams based on the enrollment of a course.

   ![Canvas Teams Sync Updated png.](https://user-images.githubusercontent.com/87142492/128225881-abdfc52d-dc9e-48ad-aec5-f6617c6436f3.png)

7. Fill out the following fields with the appropriate information. These fields will be used for matching users in Canvas with users in Microsoft Entra ID.
   - The **Tenant Name** is your Microsoft tenant name.
   - The **Login Attribute** is one of the following Canvas user attributes used for mapping:
      - **Email** is the Canvas user's default email address. If users change their default email address in Canvas, their enrollment in a course could be blocked from syncing to Teams.
      - **Unique User ID** is the user's Canvas login ID.
      - **SIS User ID** is the ID value that is populated from the Student Information System (SIS) and is viewable on the user's profile page.
      - **Integration ID** is only populated via SIS imports and is viewable on the user's profile page. Typically, this unique identifier is provided by the institution and used in account trusts or consortia situations to identify users across multiple accounts.

   - The **Suffix** field is optional and lets you specify a domain when there isn't an exact mapping between Canvas attributes and Microsoft Entra fields. For example, if your Canvas email is 'name@example.edu' while the UPN in Microsoft Entra is 'name', you can match users by entering '@example.edu' in the suffix field. The domain should be entered in this field with the preceding @.
   - The Active Directory Lookup Attribute is the field in Microsoft Entra ID to which Canvas attributes are matched. Select in between UPN, primary email address, or the email alias.

8. Select **Update Settings**.

9. To approve access for Canvas’s **Microsoft-Teams-Sync-for-Canvas** Azure app, select the **Grant tenant access** link. You'll be redirected to the Microsoft identity platform Admin Consent Endpoint.

   ![permissions.](media/permissions.png)

   > [!NOTE]
   > This step must be performed by a Microsoft tenant admin that can approve apps.

10. Select **Accept**.
