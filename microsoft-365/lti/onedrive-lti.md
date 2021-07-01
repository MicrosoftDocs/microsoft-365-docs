---
title: Use Microsoft OneDrive Learning Tools Interoperability
ms.author: heidip
author: MicrosoftHeidi
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
description: "Create and grade assignments, build and curate course content, and collaborate on files in real time with the new Microsoft OneDrive Learning Tools Interoperability App."
---

# Integrate Microsoft OneDrive LTI with Canvas

Integrating Microsoft OneDrive LTI with Canvas is a two step process. The first step enables Microsoft OneDrive in Canvas, and the second step makes the Microsoft OneDrive LTI available within Canvas courses.

## Recommended browser settings

- Cookies should be enabled for Microsoft OneDrive.
- Popups should not be blocked for Microsoft OneDrive.

> [!NOTE]
> - Cookies are not enabled by default in the Chrome browser incognito mode, and will need to be enabled.
> - Microsoft OneDrive LTI works in the private mode in Microsoft Edge browser. Ensure that you have not blocked cookies (which are enabled by default).

## Enable Microsoft OneDrive LTI in Canvas

> [!IMPORTANT]
> The person who performs this integration should be an administrator of Canvas and an administrator of the Microsoft 365 tenant.

1. Sign into the [Microsoft OneDrive LTI Registration Portal](https://onedrivelti.microsoft.com/admin).
2. Select the **Admin Consent** button and accept the permissions.
3. Select the **Create new LTI Tenant** button. On the LTI Registration page select **Canvas** in the dropdown and enter the base URL of your Canvas instance.

> [!NOTE]
> If your Canvas instance is, for example, [https://contoso.test.instructure.com](https://contoso.test.instructure.com), then this complete URL should be entered.

:::image type="content" source="media/OneDrive-LTI-07.png" alt-text="The LTI tenant administration page, with a dropdown field for choosing the LTI consumer platform and a URL text field.":::

4. Copy the JSON by selecting the **Copy** button (an icon on the right that shows two pages on top of one another). This will be used to generate the key in Canvas.

:::image type="content" source="media/OneDrive-LTI-08.png" alt-text="An image showing the copy button that will copy the displayed JSON text and make it available for key generation in Canvas.":::

5. Sign into your Canvas instance as the administrator and select **Developer Keys** from the menu on the left side of the page. From the dropdown, create a developer key by choosing **LTI Key** from the dropdown on the upper right of the page.

:::image type="content" source="media/OneDrive-LTI-14.png" alt-text="A screenshot showing the left-hand navigation bar with Developer Keys selected, and the LTI key entry selected from a dropdown on the right of the page.":::

6. On the Configure page, in the **Method** dropdown, select **Paste JSON** as the method and paste the JSON text you copied in Step 5 in the text field that appears.
7. Save the key, and it becomes available in Canvas in an **Off** state. Turn the key **On** and copy the key given in the **Details** column to be used in the next step.

:::image type="content" source="media/OneDrive-LTI-19.png" alt-text="The Canvas page with the key set in an off state. It will need to be turned on and the key will need to be copied from the details column on this page.":::

8. Return to the Microsoft OneDrive LTI Registration portal and paste the key in the **Canvas Client ID** field. Select **Next** when you're ready.

:::image type="content" source="media/OneDrive-LTI-20.png" alt-text="The LTI tenant registration page, which shows the JSON text and the text box the key should be copied into.":::

9. Review and save your changes. A message will be displayed on successful registration.
10. Your registration details can also be reviewed by selecting the **View LTI Tenants** button on the home page.

## Enable Microsoft OneDrive LTI in Canvas Courses

A Canvas administrator can enable Microsoft OneDrive LTI for all courses. If Microsoft OneDrive LTI is needed in a specific course (and not all courses), the course educator needs to follow the same steps within the course settings.

1. Sign in as an administrator and go to the **Settings** section.
2. Go to the **Apps** section and select the **View App Configurations** button.
3. Select the **Add App** button.
4. In the **Configuration Type** dropdown, choose the **By Client ID** option.
5. Paste the value of the developer key generated previously in the **Client ID** field, and select the **Submit** button.

:::image type="content" source="media/OneDrive-LTI-31.png" alt-text="The add app page, showing the By client ID option under the Configuration type dropdown menu.":::

## Collaboration Settings for Microsoft OneDrive LTI in Canvas Courses

> [!IMPORTANT]
> For collaboration to work for educators and students, you shouldn't enable the collaboration setting. To make sure the setting isn't enabled, follow the steps below.

1. Sign in as an admin and go to the **Settings** section.
1. Go to **Feature Options** section, and then go to the **Course** section.
1. Set the **External Collaborations Tool** feature to be not enabled.

> [!IMPORTANT]
> Collaboration can be assigned to individual students and to groups of students. Assigning to individual students works by default. To be able to assign collaboration to group of students, follow these steps:
> - Login as admin and go to the **Developer Keys** section.
> - Find the key with value 170000000000710 and set it to **On**.
