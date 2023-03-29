---
title: Manage Microsoft LMS Gateway for any LMS
ms.author: danismith
author: DaniEASmith
manager: serdars
ms.reviewer: amitman 
ms.date: 04/04/2022
audience: admin
ms.topic: article
ms.service: microsoft-365-business
f1.keywords:
- CSH
ms.collection: 
- M365-modern-desktop
- tier2
ms.localizationpriority: medium
description: Learn how to conduct key Microsoft LMS Gateway management tasks including viewing, deleting, editing, and troubleshooting.
---

# Manage Microsoft LMS Gateway for any LMS

Microsoft LMS Gateway integrates with several LMSs including Canvas, Blackboard, Moodle, Brightspace, and Schoology Learning.

In this article, IT admins will find instructions on key Microsoft LMS Gateway management tasks.

- [View an LTI registration](#view-an-lti-registration).
- [Delete an LTI registration](#delete-an-lti-registration).
- [Edit an LTI registration](#edit-an-lti-registration).
- [Troubleshoot issues with Microsoft LMS Gateway](#troubleshoot-issues-with-microsoft-lms-gateway).
- [Report problems with Microsoft LMS Gateway](#report-problems-with-lti-registration-portal).

> [!NOTE]
> The Microsoft LMS Gateway is only available to public cloud tenants. DoD, GCC, and GCC High tenants can't access the Microsoft LMS Gateway.

## View an LTI registration

If you would like to view the details of an LTI registration, follow the steps below.

1. Visit the [Microsoft LMS Gateway](https://lti.microsoft.com/).
2. Sign in with a Microsoft 365 administrator account.
3. In the registration list, find the LTI registration you wish to view.
4. Select the **eye icon** next to the listing.
5. The registration details panel will open.

## Delete an LTI registration

If you would like to delete an LTI registration, follow the steps below.

1. Visit the [Microsoft LMS Gateway](https://lti.microsoft.com/).
2. Sign in with a Microsoft 365 administrator account.
3. In the registration list, find the LTI registration you wish to delete.
4. Select the **trash can icon** next to the listing.
5. In the confirmation dialog box, select **Delete** to confirm deletion.
6. You'll see a success message once it's deleted.

## Edit an LTI registration

If you would like to edit an LTI registration, follow the steps below.

1. Visit the [Microsoft LMS Gateway](https://lti.microsoft.com/).
2. Sign in with a Microsoft 365 administrator account.
3. In the registration list, find the LTI registration you wish to edit.
4. Select the **edit pencil icon** next to the listing.
5. Edit the registration details.
6. Select the **Save and exit** button.

## Troubleshoot issues with Microsoft LMS Gateway

If you or your educators are experiencing issues with Microsoft LMS Gateway, here are some things you can do to troubleshoot.

### Issues while launching an LTI app from the LMS

Educators might experience issues launching a Microsoft LTI app in their LMS.

If so, here are some common issues and how to resolve them.

- **Cookies can't be found**
  - Third-party cookies need to be allowed for the **LMS URL** in the browser settings.
  - These cookies are needed to complete the LTI 1.3 handshake per IMS specifications.
  - To learn how to update your browser's cookie settings, see [Allow cookies for LMS URLs in your browser](browser-cookies.md).

- **Registration details not found**
  - This issue happens when registration of the LTI app wasn't completed or if the registration was deleted in the Microsoft LMS Gateway.
  - The IT admin will need to complete registration of the LTI app.

- **Some details from LMS aren't valid**
  - This issue happens when the details sent from the LMS in the app launch request aren't aligned with the IMS LTI 1.3 specification.
  - The IT admin will need to reach out to [Microsoft's education support team](https://edusupport.microsoft.com/support?product_id=lti_apps&platform_id=web) if the issue persists.

- **Issues with the LMS public keyset URL**
  - Ensure that the **public keyset URL** entered in the LTI registration is correct.
  - Also, make sure that the **public keyset URL** isn't restricted by your network settings for requests originating from the [Microsoft LMS Gateway](https://lti.microsoft.com/).

### Issues with signing in to the Microsoft LMS Gateway

When signing in to the Microsoft LMS Gateway, you may have issues accessing the registration page or receive a sign-in error.

Here are some common sign-in issues and how to resolve them.

- **Authorization error**
  - If you see the error message, "Your account doesn't have permission to access this page," then either:
    - The account doesn't belong to a registered tenant, or
    - The account doesn't belong to an educator or an admin.

  - For both these cases, you'll see a **Sign out & switch accounts** button.
    - Select this button or select the **Sign out** button under the user profile menu.
    - Sign in with an account that belongs to the tenant, an educator, or an admin.

  - If the tenant isn't registered, then the IT admin must register it before trying to register LTI integrations.

  - If after trying these steps, you still see this error, then sign out and sign in again.
    - You can also clear cookies and local storage for the Microsoft LMS Gateway and `https://login.microsoftonline.com/`.
    - Try to sign in again.
    - If the issue persists, report the problem by selecting the **Report a problem** link at the top right.

- **Authentication error**
  - If you see the error message, "Authentication failed. Try again," the sign-in session may have expired.
    - Sign out and sign back in again.
    - You can also clear cookies and local storage for the Microsoft LMS Gateway and `https://login.microsoftonline.com/`.
    - Try to sign in again.
    - If the issue persists, report the problem by selecting the **Report a problem** link at the top right.

- **Other errors**
  - For all other errors, you'll see the error message, "Something went wrong. Try again later."
    - This could be an internal processing error.
    - Try signing in again after a few hours.
      - Select the **Go to Home page** button. This will navigate back to the landing page.
      - Select the **Go to registration portal** button to go back to the Microsoft LMS Gateway.

### Report problems with LTI registration portal

To report any issues or submit feedback for the LTI registration portal, follow the steps below.

1. In the LTI registration portal, select the **question mark icon** in the page header.
2. In the dropdown, select **Report a problem**.
3. The Microsoft Education Support page will open. Sign in with your Microsoft 365 credentials.
4. Fill out the form and submit.
