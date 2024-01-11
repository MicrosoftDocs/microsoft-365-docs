---
title: Allow cookies for LMS URLs in your browser
author: MicrosoftHeidi
ms.author: heidip
manager: jacktremper
ms.reviewer: amitman 
ms.date: 08/28/2023
audience: admin
ms.topic: article
ms.service: microsoft-365-enterprise
f1.keywords:
- CSH
ms.collection: 
- tier2
- ContentEnagagementFY24
ms.localizationpriority: medium
description: Learn how to allow cookies for LMS URLs in Edge, Chrome, and Firefox, and Safari browsers.
---

# Allow cookies for LMS URLs in your browser

Third-party browser cookies are needed to complete the LTI 1.3 handshake according to IMS Global standards. Therefore, when launching the LTI tool from a Learning Management System (LMS), the browser setting must allow third-party cookies for the LMS URL.

For more information on Microsoft's LTI capabilities, see [Integrating Microsoft products with your Learning Management System](index.md).

Here are the steps to allow the cookies in your browser.

## Allow cookies for LMS URLs in Microsoft Edge

1. In the Edge **Settings** window, select **Cookies and site permissions** > **Cookies and data stored** > **Manage and delete cookies and site data**.
1. Turn on **Allow sites to save and read cookie data (recommended)**.
1. Make sure **Block third-party cookies** is turned off.

If you must keep third-party cookies blocked:

1. In the Edge **Settings** window, select **Cookies and site permissions** > **Cookies and data stored** > **Manage and delete cookies and site data**.
1. Under **Allow**, select **Add** to add the domain URL of the LMS platform.
   1. For example, if the LMS platform is hosted at `https://contoso.com`, then that URL must be added under **Allow**.

![Screenshot of Microsoft Edge cookie settings page](media/edge-cookies.png)

## Allow cookies for LMS URLs in Google Chrome

1. In the Chrome **Settings** window, select the **Privacy and security** tab and then **Third-party cookies**.
1. Select the option for **Allow third-party cookies**.

If you must keep third-party cookies blocked:

1. Under **Customized behaviors**, select **Add**.
1. Add the domain URL of the LMS platform.
   1. For instance, if the LMS platform is hosted at `https://contoso.com`, then that URL must be used.

![Screenshot of Google Chrome cookie settings page](media/chrome-cookies.png)

## Allow cookies for LMS URLs in Mozilla Firefox

1. In the Firefox **Settings** window, select the **Privacy & Security** tab.
1. Under **Cookies and Site Data**, select **Manage Exceptions**.
1. In the **Address of website** text box, enter the URL of the LMS platform.
   1. For instance, if the LMS platform is hosted at `https://contoso.com`, then that URL must be used.
1. Select **Allow** to allow cookies for the website.
1. Select **Save Changes**.

![Screenshot of Mozilla Firefox cookie settings page](media/firefox-cookies.png)

## Allow cookies for LMS URLs in Safari

1. Select **Preferences** > **Privacy**.
1. Clear the **Prevent cross-site tracking** checkbox.

> [!NOTE]
> In you can't change the settings yourself because your browser is managed by your organization, reach out to your IT department.

