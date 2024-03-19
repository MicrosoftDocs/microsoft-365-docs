---
title: Integrate Microsoft OneDrive LTI with Canvas
author: MicrosoftHeidi
ms.author: heidip
manager: jacktremper
ms.reviewer: amitman 
ms.date: 06/21/2021
audience: admin
ms.topic: article
ms.service: microsoft-365-business
f1.keywords:
- CSH
ms.collection: 
- M365-modern-desktop
- tier2
ms.localizationpriority: medium
description: Create and grade assignments, build and curate course content, and collaborate on files in real time with the Microsoft OneDrive LTI for Canvas.
---

# Integrate Microsoft OneDrive LTI with Canvas

This article is for education IT admins who need to set up the Microsoft OneDrive LTI for Canvas.

For instructions for educators on how to use the OneDrive LTI in Canvas, see [Use Microsoft OneDrive with your LMS](https://support.microsoft.com/topic/use-microsoft-onedrive-with-your-lms-c2ddeb48-f695-4267-94f2-14f7ff1b7bdd).

Integrating Microsoft OneDrive LTI with Canvas is a two-step process. The first step enables Microsoft OneDrive in Canvas, and the second step makes the Microsoft OneDrive LTI available within Canvas courses.

## Recommended browser settings

- Cookies should be enabled for Microsoft OneDrive.
- Popups shouldn't be blocked for Microsoft OneDrive.

> [!NOTE]
>
> - Cookies are not enabled by default in the Chrome browser incognito mode, and will need to be enabled.
> - Microsoft OneDrive LTI works in the private mode in Microsoft Edge browser. Ensure that you have not blocked cookies (which are enabled by default).

## Enable Microsoft OneDrive LTI in Canvas

> [!IMPORTANT]
> The person who performs this integration should be an administrator of Canvas and an administrator of the Microsoft 365 tenant.

1. Sign into the <a href="https://onedrivelti.microsoft.com/admin" target="_blank">Microsoft OneDrive LTI Registration Portal</a>
2. Select the **Admin Consent** button and accept the permissions.

   > [!CAUTION]
   > If this step isn't performed, the following step will give you an error, and you won't be able to take this step for an hour once you've gotten the error.

3. Select the **Create new LTI Tenant** button. On the LTI Registration page, select **Canvas** in the dropdown and enter the base URL of your Canvas instance.

   > [!NOTE]
   > If your Canvas instance is, for example, `https://contoso.test.instructure.com`, then the complete URL should be entered.

   :::image type="content" source="media/OneDrive-LTI-07.png" alt-text="The LTI tenant administration page, with a dropdown field for choosing the LTI consumer platform and a URL text field.":::

4. Copy the JSON by selecting the **Copy** button (an icon on the right that shows two pages on top of one another). This will be used to generate the key in Canvas.

   :::image type="content" source="media/OneDrive-LTI-08.png" alt-text="An image showing the copy button that will copy the displayed JSON text and make it available for key generation in Canvas.":::

5. Sign into your Canvas instance as the administrator and select **Developer Keys** from the menu on the left side of the page. From the dropdown, create a developer key by choosing **LTI Key** from the dropdown on the upper right of the page.

   :::image type="content" source="media/OneDrive-LTI-14.png" alt-text="A screenshot showing the left-hand navigation bar with Developer Keys selected, and the LTI key entry selected from a dropdown on the right of the page.":::

6. On the Configure page, in the **Method** dropdown, select **Paste JSON** as the method and paste the JSON text you copied in Step 4 in the text field that appears.

    > [!TIP]
    > **Optional Step:** If your school's educators wish to control for themselves which links appear in their courses' navigation, you can modify the ``default`` parameter in the copied JSON. The ``default`` parameter is set to ``enabled`` automatically; however, changing the ``default`` parameter to ``disabled`` allows educators to choose their own courses' navigation.
    >
    > For more information on how educators can modify their course navigation links, see [How do I manage Course Navigation links?](https://community.canvaslms.com/t5/Instructor-Guide/How-do-I-manage-Course-Navigation-links/ta-p/1020)

7. Next, expand the **Additional settings** dropdown and set the **Privacy Level** to **Public**. 
  
   Setting the **Privacy Level** to **Public** allows course members' names to appear to other members for collaboration.

8. Save the key, and it becomes available in Canvas in an **Off** state. Turn the key **On** and copy the key given in the **Details** column to be used in the next step.

   :::image type="content" source="media/OneDrive-LTI-19.png" alt-text="The Canvas page with the key set in an off state. It will need to be turned on and the key will need to be copied from the details column on this page.":::

9. Return to the Microsoft OneDrive LTI Registration portal and paste the key in the **Canvas Client ID** field. Select **Next** when you're ready.

   :::image type="content" source="media/OneDrive-LTI-20.png" alt-text="The LTI tenant registration page, which shows the JSON text and the text box the key should be copied into.":::

10. Review and save your changes. A message will be displayed on successful registration.

11. Your registration details can also be reviewed by selecting the **View LTI Tenants** button on the home page.

Future releases may require additional admin consent. In those cases, you'll need to repeat only steps 1 and 2.

## Enable Microsoft OneDrive LTI in Canvas Courses

A Canvas administrator can enable Microsoft OneDrive LTI for all courses. If Microsoft OneDrive LTI is needed in a specific course (and not all courses), the course educator needs to follow the same steps within the course settings.

1. Sign in as an administrator and go to the **Settings** section.
2. Go to the **Apps** section and select the **View App Configurations** button.
3. Select the **Add App** button.
4. In the **Configuration Type** dropdown, choose the **By Client ID** option.
5. Paste the value of the developer key generated previously in the **Client ID** field, and select the **Submit** button.

:::image type="content" source="media/OneDrive-LTI-31.png" alt-text="The add app page, showing the By client ID option under the Configuration type dropdown menu.":::

## Collaboration Settings for Microsoft OneDrive LTI in Canvas Courses

For OneDrive Collaborations to work for educators and students, ensure the **External Collaborations Tools** setting is turned off. To turn off the **External Collaborations Tool** setting, follow the steps below.

1. Sign to Canvas as an admin and go to the **Settings** section.
1. Go to **Feature Options** section, and then go to the **Course** section.
1. Set the **External Collaborations Tool** toggle to the off position.

Collaborations can be assigned to individual students and to groups of students in a course. Collaborations in Canvas Groups isn't currently supported.

Assigning to individual students works by default. To assign collaboration to groups of students, follow these steps:

1. Sign into Canvas as an admin and go to the **Developer Keys** section.
1. Find the key with value `170000000000710` and set it to **On**.
