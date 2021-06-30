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

# Integrate OneDrive LTI with Canvas

Integrating OneDrive LTI with Canvas is a two step process. The first step enables OneDrive in Canvas, and the second step makes the OneDrive LTI available within Canvas courses.

## Enable OneDrive LTI in Canvas

> [!IMPORTANT]
> The person who performs this integration should be an administrator of Canvas and an administrator of the Microsoft 365 tenant.

1. Sign into the Microsoft Azure portal with the tenant admin account. The Azure tenant administrator should also have the Group administrator role.
2. In a second browser window, sign into the [Microsoft OneDrive LTI Registration Portal](https://onedrivelti.microsoft.com/admin).
3. Select the **Admin Consent** button and accept the permissions.
4. Select the **Create new LTI Tenant** button. On the LTI Registration page select **Canvas** in the dropdown and enter the base URL of your Canvas instance.

:::image type="content" source="media/OneDrive-LTI-07.png" alt-text="The LTI tenant administration page, with a dropdown field for choosing the LTI consumer platform and a URL text field.":::

5. Copy the JSON by selecting the **Copy** button. This will be used to generate the key in Canvas.

:::image type="content" source="media/OneDrive-LTI-08.png" alt-text="An image showing the copy button that will copy the displayed JSON text and make it available for key generation in Canvas.":::

6. Sign into your Canvas instance as the administrator and select **Developer Keys** from the menu on the left side of the page. From the dropdown, create a developer key by choosing **LTI Key** from the dropdown on the upper right of the page.

SCREEN HERE

1. On the Configure page, in the **Method** dropdown, select **Paste JSON** as the method and paste the JSON text you copied in Step 5 in the text field that appears.
1. Save the key and it becomes available in Canvas in an **Off** state. Turn the key **On** and copy the key given in the **Details** column.

:::image type="content" source="media/OneDrive-LTI-19.png" alt-text="The Canvas page with the key set in an off state. It will need to be turned on and the key will need to be copied from the details column on this page.":::

9. Return to the OneDrive LTI Registration portal and paste the key in the **Canvas Client ID** field. Select **Next** when you're ready.

:::image type="content" source="media/OneDrive-LTI-20-Old.png" alt-text="The LTI tenant registration page, which shows the JSON text and the text box the key should be copied into.":::

10. Review and save your changes.
11. A success message will be displayed on successful registration.
12. Your registration details can also be reviewed by selecting the **View LTI Tenants** button on the home page.

## Enable OneDrive LTI 1.3 in Canvas Courses

A Canvas administrator can enable OneDrive LTI for all courses. If OneDrive LTI is needed in a specific course (and not all courses), the course educator needs to follow the same steps within the course settings.

1. Sign in as an administrator and go to the **Settings** section.
2. Go to the **Apps** section and select the **View App Configurations** button.
3. Select the **Add App** button.
4. In the **Configuration Type** dropdown, choose the **By Client ID** option.

:::image type="content" source="media/OneDrive-LTI-30.png" alt-text="The add app page, showing the By client ID option under the Configuration type dropdown menu.":::

5. Paste the value of the developer key generated previously in the **Client ID** field, and select the **Submit** button.
6. The OneDrive LTI won't show up immediately in the External Apps list. Refresh the browser page showing the list, and OneDrive LTI will be available.

## Collaboration Settings for OneDrive LTI 1.3 in Canvas Courses

For collaboration to work for educators and students, you shouldn't enable the collaboration setting. This setting is generally not enabled, but if the setting is enabled, follow these steps:

1. Sign in as an admin and go to the **Settings** section.
1. Go to **Feature Options** section, and then go to the **Course** section.
1. Set the **External Collaborations Tool** feature to be not enabled.
