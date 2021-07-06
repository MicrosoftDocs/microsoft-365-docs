---
title: Use OneDrive Learning Tools Interoperability
ms.author: v-cichur
author: cichur
manager: serdars
ms.reviewer: amitman 
audience: admin
ms.topic: article
ms.service: o365-administration
f1.keywords:
- CSH
ms.collection: M365-modern-desktop
localization_priority: Normal
ROBOTS: NOINDEX, NOFOLLOW
description: "Create and grade assignments, build and curate course content, and collaborate on files in real time with the new OneDrive Learning Tools Interoperability App."
---

# Use Microsoft OneDrive LTI with Canvas

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## Integrate with Canvas

The person who performs this integration should be an admin of Canvas and an admin of the Microsoft 365 tenant.

1. Sign in to the Microsoft Azure portal with the tenant admin account. The Azure tenant administrator should also have the Group administrator role.

    ![group administrator highlighted](../media/lti-media/lti-group-admin.png)

2. Sign in to the Microsoft [OneDrive LTI portal](https://odltiappnl.azurewebsites.net/admin).

3. Accept the permissions to complete the sign-in.

    ![accept permissions](../media/lti-media/lti-permissions.png)

4. Select **Add LTI Tenant**.

     ![add LTI tenant](../media/lti-media/lti-add-tenant.png)

5. Select **LTI Consumer Platform** as **Canvas** from the dropdown.

6. Select **Canvas Base URL** and then select **Next**.

    ![select Canvas and add base URL](../media/lti-media/lti-canvas-base-url.png)

   The next screen shows fields that are confidential to you.

7. Select **Next** from ?? page. CAN REVIEWERS FILL IN THE BLANK HERE?

8. Select **Next** in the screen that shows information that's confidential to you.

   The final screen of the Azure portal shows the next steps for adding your Canvas instance.

9. Copy the Developer Keys from this screen. You'll use when you create the Canvas instance.

## Add the Canvas instance

1. In your Canvas instance, deselect **Admin** > **Developer Keys**.

2. Choose **LTI Key** in the dropdown on **Developer Key**.

   ![Get the LTI developer keys](../media/lti-media/lti-developer-keys.png)

3. Paste the developer keys here.

     ![Paste the developer keys](../media/lti-media/lti-developer-keys.png)

   The key gets created in **OFF** mode

   ![The created developer keys in the off mode](../media/lti-media/lti-copy-developer-keys.png)

4. Copy the highlighted text.
    This serves as Client ID in Microsoft OneDrive LTI portal.

5. Paste the text into the **Client ID** field in Microsoft OneDrive LTI portal, and then select **Next**.

6. Select **Save**.

7. View the settings by selecting **View LTI Tenants**.
