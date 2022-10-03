---
title: Integrate Microsoft OneDrive LTI with Desire2Learn Brightspace
ms.author: danismith
author: DaniEASmith
manager: serdars
ms.reviewer: amitman 
audience: admin
ms.topic: article
ms.service: microsoft-365-business
ms.collection: m365initiative-edu
ms.localizationpriority: medium
description: Create and grade assignments, build and curate course content, and collaborate on files in real time with the new Microsoft OneDrive Learning Tools Interoperability for Desire2Learn Brightspace.
---

# Integrate Microsoft OneDrive LTI with Desire2Learn Brightspace

This guide provides IT admins steps for registering the OneDrive LTI app for the Desire2Learn (D2L) Brightspace LMS.

For an overview of Microsoft LTI, see [Integrating Microsoft products with your Learning Management System (LMS)](index.md).

The steps to add the OneDrive LTI app are:

1. [Step 1: Add the new Microsoft OneDrive LTI app](#step-1-add-the-new-microsoft-onedrive-lti-app).
1. [Step 2: Deploy the LTI app in users' Brightspace experience](#step-2-deploy-the-lti-app-in-users-brightspace-experience).
1. [Step 3: Turn off the older OneDrive app](#step-3-turn-off-the-older-onedrive-app).
1. [Step 4: Turn on the new OneDrive LTI app on the Quicklinks activity bar](#step-4-turn-on-the-new-onedrive-lti-app-on-the-quicklinks-activity-bar-optional) (optional).

> [!IMPORTANT]
> The person who performs this integration should be an administrator of Brightspace and an administrator of the Microsoft 365 tenant.
>
> The source documentation for LTI 1.3 settings is located in the [LTI Advantage - Administrator Guide](https://community.brightspace.com/s/article/LTI-Advantage-Administrator-Guide).

## Step 1: Add the new Microsoft OneDrive LTI app

### Register a new Microsoft OneDrive LTI app

1. Sign into the [Microsoft OneDrive LTI Registration Portal](https://onedrivelti.microsoft.com/admin).
1. Select the **Admin Consent** button and accept the permissions.
    1. If this step isn't performed, the following step will give you an error, and you won't be able to take this step for an hour once you've gotten the error.
1. Select the **Create new LTI Tenant** button.
1. In the **LTI Consumer Platform** list, select **D2L Brightspace**.
1. In the **D2L Brightspace Base URL** field, enter your Brightspace base URL, like `https://testschool.brightspace.com`.
1. Select the **Next** button. The **Register LTI 1.3 App** page will load.
    1. Keep this page open in its own tab when completing the next set of steps.

### Add Microsoft LTI registration details to Brightspace

1. In a new tab, open your Brightspace admin site to register the new Microsoft LTI app.
1. Navigate to **Admin** > **Manage Extensibility** and select **LTI Advantage**.
1. Select **Register App**.
1. Register your app as **standard**.
1. Enter a name for the app, like `OneDrive LTI`.
1. Enter the domain of the URL where you registered the LTI app, like `https://onedrivelti.microsoft.com`.
1. Using the details given in the Microsoft LTI Registration Portal, copy and paste the **Redirect URL**, **OpenID Connect Login URL**, and **Keyset URL** into Brightspace.
    1. Paste Microsoft's **Redirect URL** into Brightspace's **ToolOIDCLaunchRedirectUri** field.
    1. Paste Microsoft's **OpenID Connect Login URL** into Brightspace's **OIDCLoginInitiationUri** field.
    1. Paste Microsoft's **Keyset URL** in Brightspace's **ToolPublicJwksUri** field.
1. Select the **Deep Linking** extension.
1. Select **Register**.
1. You'll be shown Brightspace registration details.
    1. Keep this page open in its own tab when completing the next set of steps.

### Add Brightspace LTI registration details to the Microsoft LTI Registration Portal

After the app is registered in Brightspace, copy values from Brightspace's registration portal into Microsoft's LTI registration portal.

1. Navigate back your open tab of Microsoft's **Register LTI 1.3 App** page.
1. Copy Brightspace registration details and paste them into Microsoft's LTI Registration Portal.
    1. Paste Brightspace's **Issuer** into Microsoft's **LTI Issuer** field.
    2. Paste Brightspace's **OpenID Connect Authentication Endpoint** into Microsoft's **LTI Authorize URL** field.
    3. Paste Brightspace's **Brightspace Keyset URL** into Microsoft's **LTI Public Jwks URL** field.
    4. Paste Brightspace's **Brightspace OAuth2 Access Token URL** into Microsoft's **LTI Access Token URL** field.
    5. Paste Brightspace's **Client ID** into Microsoft's **LTI Client ID** field.
1. Select the **Next** button.
1. Select the **Save** button.
1. A message saying *LTI consumer was created successfully.* will appear.
1. Review your registration details by selecting the **View LTI Tenants** button on the home page.

## Step 2: Deploy the LTI app in users' Brightspace experience

After Microsoft OneDrive LTI and Brightspace are connected, you need to deploy the OneDrive LTI app in users' Brightspace experience.

1. Sign into your Brightspace admin site.
1. Select the LTI app that you created.
1. Enter in a deployment a name.
1. Select all security settings except **Classlist** and **Anonymous**.
1. Don't set configuration settings.
1. Select **Create Deployment**.
1. Choose the org units you want to use the new LTI app. You can select the root org to include everyone or select individual org units.

### Create links to the OneDrive LTI app in users' Brightspace experience

1. Sign into your Brightspace admin site.
1. Select the Brightspace OneDrive LTI app you created. Deployment details will appear.
1. Select **View Links**.
1. Select **Create a link**.
1. Enter in a name for the link.
1. Paste the **Redirect URL** into the **URL** field.
1. Set the **Type** to **Deep Linking Quicklink**.
1. Select the **Save and Close** button.

The OneDrive LTI app will now show up in **Add Existing Content** and **QuickLinks** in Brightspace. The link will show a generic *link* icon rather than a OneDrive *cloud* icon. Also, the title will reflect the name provided in the app's LTI link settings.

## Step 3: Turn off the older OneDrive app

The OneDrive LTI app is now available to users, but the older OneDrive app must now be turned off.

1. Sign in to your Brightspace admin portal.
1. Navigate to **Admin** > **Config Variable Browser**
1. Locate the variable titled **d2l.3rdParty.OneDrive.EnableOneDrivePicker** and set the value to **off**.

## Step 4: Turn on the new OneDrive LTI app on the Quicklinks activity bar (optional)

To add the OneDrive LTI app to Brightspace's activity bar, set an org unit **Config Variable** to the **link ID** of the LTI app.

You'll need to repeat these steps for every org ID (or parent org ID) where you want the OneDrive LTI app to appear in the activity bar.

### Collect the Link IDs

1. Sign in to your Brightspace admin portal.
1. Navigate to **Admin** > **External Learning Tools** > **LTI Advantage Deployments** > **View Links** at the bottom of the page.
1. Navigate to the correct link, and then move your mouse to the URL at the top of the browser.
    1. For example, `https://example.desire2learn.com/d2l/le/ltiadvantage/deployments/3bfcc0b7-2fb6-4ffe-b353-95b520d4bae6/links/details/25988`.
1. Copy the digits after the final `/` in the URL.
    1. For example, using the URL above, copy `25988`.

### Update the Config Variables

1. In the Brightspace admin portal, navigate to **Admin** > **Config Variable Browser**.
1. Locate the variable titled **3rdparty.microsoft.onedriveLTI.linkId**, and paste the copied URL to the **link ID** field for the org units where OneDrive LTI should appear.
    1. This value is a number.

## Common questions concerning the OneDrive LTI app

### Does the new OneDrive LTI FilePicker support personal accounts?

Yes, personal accounts are allowed to open OneDrive to upload the files. There's a checkbox in the app in the OneDrive LTI registration portal to allow multiple accounts or not. If checked, personal accounts are allowed.

### Does the FilePicker support multiple languages?

The OneDrive LTI FilePicker looks at the LTI language setting parameter passed from the LMS, and (as backup) the browser setting (since the former is an optional claim) to determine the language to use.
