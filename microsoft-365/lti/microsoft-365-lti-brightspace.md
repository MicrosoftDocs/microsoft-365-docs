---
title: Deploy the Microsoft 365 LTI® app in Brightspace by D2L
description: Learn how to deploy the Microsoft 365 Learning Tool Interoperability (LTI) app in Brightspace by D2L.
author: jennplatt
ms.author: avering
manager: michal.gideoni
ms.date: 10/06/2025
audience: admin
ms.topic: how-to
ms.service: microsoft-365-education
ms.collection: 
- M365-modern-desktop
- m365initiative-edu
- tier2
- m365-education
- all-education
ms.localizationpriority: medium
---
# Deploy the Microsoft 365 LTI® app in Brightspace by D2L

This guide provides steps for deploying the Microsoft 365 Learning Tool Interoperability® (LTI) app in Brightspace.

  :::image type="content" source="./media/brightspace.png" alt-text="Screenshot of Brightspace." border="true":::

> [!IMPORTANT]
> The person who deploys this integration should be an Administrator role in the learning management system (LMS). A person in your organization who is a Microsoft 365 Global Administrator is also needed to help complete the configuration of the app before first time use.
>
> By installing and using the Microsoft Education LTI app, educators and students can transmit grades to the LMS where the terms of use and privacy policy of that application apply.

## LMS requirements for the integration

### User matching between Microsoft 365/Entra ID and the LMS

To fully integrate with your LMS environment and perform tasks on behalf of users like populating students and co-teachers into OneNote Class Notebooks, setting file permissions, or sending grades from Assignments to the LMS gradebook, the Microsoft 365 LTI app must be able to map Student and Teacher identities between the LMS and the Microsoft 365 Entra ID directory services. It's required to populate the LMS user Email field (which is the same email value returned from the LTI Names and Roles Provisioning Service) with the user's Microsoft 365/Entra User UPN or Primary Email address. Verify this for people in every course that will use the integration to ensure the Microsoft apps can match LMS users.

## One-time setup by an LMS administrator

**To register the application in the Microsoft registration portal:**

1. Sign in with your **Microsoft 365** user account to the [Microsoft Registration Portal](https://lti.microsoft.com/registration).

1. Select **Add new registration**.

1. Select **Microsoft 365 LTI** and then select **Next**.

1. Enter a friendly **Registration** name (for example: "Microsoft 365 for Brightspace") and select **D2L/Brightspace** as the LMS platform (during Preview, ‘Other' can be selected). Select **Next**.

1. You're given a list of keys that need to be added to a registration you'll do in Brightspace. Copy these names and values; they're needed to complete the next few steps.

1. Leave your browser window open while you complete the tool registration steps. The Microsoft tool registration is completed later when the LMS Client ID and Deployment ID are available.

**To register the new extensibility tool, add a deployment, and add links to the tool to your courses in Brightspace:**

1. Log into Brightspace as an Administrator or Super Administrator with permission to **Manage Extensibility** and **External Tools**.

1. In Brightspace, navigate to **Admin Tools** **(gear icon)** > **Manage Extensibility**, select the **LTI Advantage** tab, and then select the **Register Tool** button.

1. Select the **Standard** registration radio button and enter the values listed in the table:

    | **Field in Brightspace** | **Value** |
    |---|---|
    | **Name** | Microsoft 365 LTI |
    | **Domain** | Copy the **Target Link URL** value from the Microsoft registration. |
    | **Redirect URLs** | Copy the **Redirect URL** value from the Microsoft registration. |
    | **OpenID Connect Login URL** | Copy the **Open ID connection URL** value from the Microsoft registration. |
    | **Target Link URI** | Copy the **Target Link URL** value from the Microsoft registration. |

1. Check the following **Extensions** options, and add the following **Substitution Parameters** to the registration:

    :::image type="content" source="./media/brightspace-extensions-2.png" alt-text="Screenshot of Brightspace extensions." border="true":::

1. Select the **Register** button.

1. A modal with Brightspace registration details appears. **Copy these names and values as they need to be entered into the Microsoft Registration Portal to complete registration.** You can return to the registration to copy the values later if needed.

**To add a deployment of Microsoft Education in your D2L Brightspace courses:**

1. Navigate to **Admin Tools** > **External Learning Tools**.

1. Select **New Deployment**.

1. Select **Microsoft 365 LTI** as the **Tool** and enter **Microsoft 365 LTI** as the **Name**.

1. Select ***all*** Security Settings ***except*** **Anonymous** (including Org Unit information, User Information, Link Information).
  
    :::image type="content" source="./media/brightspace-security-settings.png" alt-text="Screenshot of security settings." border="true":::

1. In Configuration Settings, select **Grades created by LTI will be included in Final Grade**. Make sure that **Open as External Resource** is **not** checked.

   :::image type="content" source="./media/brightspace-configuration-settings.png" alt-text="Screenshot of configuration settings." border="true":::

1. Select **Add Org Units**. Select the orgs you wish to deploy to, or the **root org** or **all** units to deploy the app for all orgs by searching for the Organization name and selecting **All Descendants**

1. Select **Create Deployment** and confirm the deployment. A pop-up appears, showing the Deployment ID. Save it with the Name chosen on step 3, as it will be required in the Microsoft Registration Portal.

**To save the values obtained from Brightspace in the Microsoft tool registration portal:**

1. On the **LMS provided registration keys** tab, select **Next** to navigate to **LMS provided registration keys**. Enter the values listed in the table that were copied from Brightspace in the previous steps.

    | **Microsoft registration field** | **Brightspace registration value** |
    |---|---|
    | **Issuer ID URL** | Issuer |
    | **Client ID** | Client ID |
    | **Keyset URL** | Brightspace Keyset URL |
    | **Platform authentication URL** | OpenID Connect Authentication Endpoint |
    | **Deployment ID** | Deployment ID |
    | **Access Token URL** | Brightspace OAuth2 Access Token URL |

1. Select **Next**, review the **Review and save** page, and then select **Save and exit** to complete the update.

You now have a tool registration configured in the Microsoft registration portal and both a registration and a deployment of the tool in Brightspace. The next steps create links in Brightspace to add to courses.

**To add links to the Microsoft Education tools in your D2L Brightspace courses:**

1. In Brightspace, navigate to **Admin Tools** > **External Learning Tools**.

1. Select **Microsoft 365 LTI**.

1. Scroll down to select **View Links**.

**To create a Basic Launch Link for course navbars:**

1. Select **New Link**.

1. Enter **Microsoft Education** as the **Name**.

1. For the **URL**, enter: `https://lti.edu.cloud.microsoft/tool`.

1. For the **Type**, select **Basic Launch**.

1. Select **Save and Close** to create the link.

**To create a Deep Linking Quicklink for content activities:**

1. Select **New Link**.

1. Enter **Microsoft Education Activity** as the **Name**.

1. For the **URL**, enter: `https://lti.edu.cloud.microsoft/tool`.

1. Select **Deep Linking Quicklink** for the **Type**.

1. Create a **Custom Parameter** named **launchType** with value **courseAssignments**.

1. Select **Save and Close** to create the link.

**To create a Deep Linking Insert Stuff link for documents:**

1. Select **New Link.**

1. Enter **Microsoft 365 Document** as the **Name**.

1. For the **URL**, enter: `https://lti.edu.cloud.microsoft/tool`

1. Select **Deep Linking Quicklink** for the **Type**.

1. Create a **Custom Parameter** named **launchType** with value **link-selection**.

1. Select **Save and Close** to create the link.

**To create a Deep Linking Quicklink link for document collaborations:**

1. Select **New Link**.

1. Enter **Microsoft 365 Document Collaboration** as the **Name**.

1. For the **URL**, enter: `https://lti.edu.cloud.microsoft/tool`

1. Select **Deep Linking Quicklink** for the **Type**.

1. Create a **Custom Parameter** named **launchType** with value **collaborations**.

1. Select **Save and Close** to create the link.

**To create a Widget link to add to course homepage layouts:**

1. Select **New Link**.

1. Enter **Microsoft Education** as the **Name**.

1. For the **URL**, enter: `https://lti.edu.cloud.microsoft/tool`.

1. For the **Type**, select **Widget**.

1. Select **Save and Close** to create the link.

**To add links to your Navigation and Themes for instructors to use in their courses:**

1. Navigate to **Admin Tools** > **Navigation and Themes**.

1. Select the Navbar that you wish to modify and then **Add Links**.

1. Select **Create Custom Link**.

1. Enter **Microsoft Education** as the **Name**.

1. For the **URL**, select **Insert Quicklink**, and then **Microsoft Education**.

1. Select **Same window** for **Behavior**.

1. Select **Create**.

1. Ensure that the **Microsoft Education** checkbox is selected, and then select **Add**.

1. Drag the Microsoft Education link to your preferred location in the Navbar.

1. Select **Save and Close**.

## Turn on the new Microsoft 365 LTI app on the Quicklinks Activity Bar

The Microsoft 365 LTI app is now available to users, and the older OneDrive app can now be turned off (if ready to migrate over).

1. Navigate to **Admin > Config Variable Browser**.
1. Locate the variable titled **d2l.3rdParty.OneDrive.EnableOneDrivePicker** and set the value to **off**.

To add the Microsoft 365 LTI app to Brightspace's activity bar for quick access, you need to set an org unit **Config Variable** to the link ID of the LTI app.

> [!NOTE]
> You need to repeat these steps for every org ID (or parent org ID) where you want the Microsoft 365 LTI app to appear in the activity bar.

**To collect the Link ID:**

1. Navigate to **Admin Tools** by selecting the gear icon at the top right.
1. Select **Manage Extensibility** to view the **LTI Advantage Deployments** list.
1. Select the **Microsoft 365 LTI** LTI Advantage app you created.
1. Scroll to the bottom of the page and select **View Deployments**.
1. Select the **Microsoft 365 LTI** app deployment you created.
1. Scroll down to the bottom of the page and select **View Links**.
1. Select the **Microsoft 365 Document** link with the **Deep Linking Quicklink** type.
1. Move your mouse to the URL address bar in your browser.
1. Copy the numeric digits after the final / in the URL. For example, if the link url is `https://example.desire2learn.com/d2l/le/ltiadvantage/deployments/3bfcc0b7-2fb6-4ffe-b353-95b520d4bae6/links/details/259`, copy the 259 numeric value.

**To update the Config Variables:**

1. In the Brightspace admin portal, navigate to **Admin Tools** by selecting the top right gear icon.
1. Select **Config Variable Browser**.
1. In the **All Variables** menu on the left, navigate to **3rdParty > Microsoft > OneDriveLTI**. You should see the variable name **3rdparty.microsoft.onedriveLTI.linkId** in the right pane.
1. Select the **LinkId variable** name.
1. On the **LinkId configuration** screen, select **Add Value** to select an **Org Unit** and paste the numeric Link ID value you collected previously.
1. You need to repeat this for each Org Unit you wish to use the **Quicklinks Activity Bar**.
1. To have this setting applied to descendant org types of those you added, you can edit the **Cascading Org Unit Types** and select which types and in which order the settings will apply.

## First-time configuration by an LMS administrator

You must launch the app for the first time as a user with the **Brightspace System Administrator** role to complete the configuration for your deployment and activate the tool. Users won't have access until you complete this step!

1. As a Brightspace System Administrator, access any Course that has the Microsoft Education link added.

1. Continue with the [**Microsoft 365 LTI first-time configuration steps**](microsoft-365-lti-first-time-configuration.md) to complete the configuration for your organization.

## Ongoing use by instructors and students in a course

On first access, users must sign in using their Microsoft 365 (Microsoft Entra) account.

Learn more about Microsoft 365 LTI application scenarios for Instructors and Students
<!-- -->
## Browser settings

- Cookies should be allowed for Microsoft apps.

- Popups shouldn't be blocked for Microsoft apps.

If you receive an error message regarding cookies being blocked, check your browser's address bar for an icon to allow third-party cookies and popups. If this issue persists, review your settings related to cookies and popups to make sure they're allowed for this app.

## Getting help and giving feedback

- LMS and Microsoft 365 admins can contact Microsoft [Education Support](https://aka.ms/edusupport) to help resolve configuration and deployment issues, for themselves or on behalf of users.

- Educators and Learners can contact support or give feedback directly from the app through the help and feedback menu.

:::image type="content" source="./media/help-and-feedback.png" alt-text="Screenshot of link to send feedback for Microsoft 365 LTI." border="true":::

Learning Tools Interoperability® (LTI®) is a trademark of the 1EdTech Consortium, Inc. (**[**1edtech.org**](https://1edtech.org)**)
