---
title: Manage Microsoft OneLTI for any LMS
ms.author: danismith
author: DaniEASmith
manager: serdars
ms.reviewer: amitman 
audience: admin
ms.topic: article
ms.service: o365-administration
f1.keywords:
- CSH
ms.collection: M365-modern-desktop
ms.localizationpriority: medium
description: Learn how to conduct key Microsoft OneLTI management tasks including viewing, deleting, editing, and troubleshooting.
---

# Manage Microsoft OneLTI for any LMS

Microsoft OneLTI integrates with several LMSs including Canvas, Blackboard, and Moodle.

In this article, IT admins will find instructions on key OneLTI management tasks.

- [View an LTI registration](#view-an-lti-registration).
- [Delete an LTI registration](#delete-an-lti-registration).
- [Edit an LTI registration](#edit-an-lti-registration).
- [Troubleshoot issues with OneLTI](#troubleshoot-issues-with-onelti).
- [Report problems with OneLTI](#report-problems-with-onelti).

## View an LTI registration

If you would like to view the details of an LTI registration, follow the steps below.

1. Visit [Microsoft LTI Portal](https://lti.microsoft.com/).
2. Sign in with a Microsoft 365 administrator account.
3. In the registration list, find the LTI registration you wish to view.
4. Select the **eye icon** next to the listing.
5. The registration details panel will open.

## Delete an LTI registration

If you would like to delete a Microsoft OneLTI registration, follow the steps below.

1. Visit [Microsoft LTI Portal](https://lti.microsoft.com/).
2. Sign in with a Microsoft 365 administrator account.
3. In the registration list, find the LTI registration you wish to delete.
4. Select the **trash can icon** next to the listing.
5. In the confirmation dialog box, select **Delete** to confirm deletion.
6. You'll see a success message once it's deleted.

## Edit an LTI registration

Currently, we don't support editing an existing LTI registration after it’s added.

To change an LTI registration, you'll need to:

1. [Delete the existing registration](#delete-an-lti-registration).
2. Add a new registration.

## Troubleshoot issues with OneLTI

If you or your educators are experiencing issues with Microsoft OneLTI, here are some things you can do to troubleshoot.

### Issues while launching an LTI tool from the LMS

Educators might experience issues launching a Microsoft LTI tool in their LMS.

If so, here are some common issues and how to resolve them.

- **Cookies can't be found**
  - Third-party cookies need to be allowed for the **LMS URL** in the browser settings.
  - These cookies are needed to complete the LTI 1.3 handshake per the IMS specifications.
  - To learn how to update your browser's cookie settings, see [Allow cookies for LMS URLs in your browser](browser-cookies.md).

- **Registration details not found**
  - This issue happens when registration of the LTI tool wasn't completed or if the registration was deleted in the OneLTI admin portal.
  - The IT admin will need to complete registration of the LTI tool.

- **Some details from LMS aren't valid**
  - This issue happens when the details sent from the LMS in the tool launch request aren't aligned with the IMS LTI 1.3 specification.
  - The IT admin will need to reach out to [Microsoft's education support team](https://edusupport.microsoft.com/support?product_id=lti_apps&platform_id=web) if the issue persists.

### Issues with signing in to the registration portal

When signing in to the Microsoft LTI registration portal, you may have issues accessing the registration page or receive a sign-in error.

Here are some common sign-in issues and how to resolve them.

- **Authorization error**
  - If you see the error message, "Your account doesn’t have permission to access this page," then either:
    - The account doesn't belong to a registered tenant, or
    - The account doesn't belong to an educator or an admin.

  - For both these cases, you'll see a **Sign out & switch accounts** button.
    - Select this button or select the **Sign out** button under the user profile menu.
    - Sign in with an account that belongs to the tenant, an educator, or an admin.

  - If the tenant isn't registered, then the IT admin must register it before trying to register LTI integrations.

  - If after trying these steps, you still see this error, then sign out and sign in again.
    - You can also clear cookies and local storage for the LTI registration portal and `https://login.microsoftonline.com/`.
    - Try to sign in again.
    - If the issue persists, report the problem by selecting the **Report a problem** link at the top right.

- **Authentication error**
  - If you see the error message, “Authentication failed. Try again," the sign-in session may have expired.
    - Sign out and sign back in again.
    - You can also clear cookies and local storage for the LTI registration portal and `https://login.microsoftonline.com/`.
    - Try to sign in again.
    - If the issue persists, report the problem by selecting the **Report a problem** link at the top right.

- **Other errors**
  - For all other errors, you'll see the error message, “Something went wrong. Try again later.”
    - This could be an internal processing error.
    - Try signing in again after a few hours.
      - Select the **Go to Home page** button. This will navigate back to the landing page.
      - Select the **Go to registration portal** button to go back to the LTI registration portal.

## Report problems with OneLTI

To report any issues or submit feedback for Microsoft OneLTI, follow the steps below.

1. In the Microsoft OneLTI registration portal, select the **question mark icon** in the page header.
2. In the dropdown, select **Report a problem**.
3. The Microsoft Education Support page will open. Sign in with your Microsoft 365 credentials.
4. Fill out the form and submit.
