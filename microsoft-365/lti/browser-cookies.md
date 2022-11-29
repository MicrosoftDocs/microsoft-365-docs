---
title: Allow cookies for LMS URLs in your browser
ms.author: danismith
author: DaniEASmith
manager: serdars
ms.reviewer: amitman 
audience: admin
ms.topic: article
ms.service: microsoft-365-business
f1.keywords:
- CSH
ms.collection: M365-modern-desktop
ms.localizationpriority: medium
description: Learn how to allow cookies for LMS URLs in Edge, Chrome, and Firefox, and Safari browsers.
---

# Allow cookies for LMS URLs in your browser

Third-party browser cookies are needed to complete the LTI 1.3 handshake according to IMS Global standards. Therefore, when launching the LTI tool from a Learning Management System (LMS), the browser setting must allow third-party cookies for the LMS URL.

Here are the steps to allow the cookies in your browser.

# [Microsoft Edge](#tab/edge)

## Allow cookies for LMS URLS in Microsoft Edge

1. In the Edge **Settings** window, select **Cookies and site permissions** > **Cookies and data stored** > **Manage and delete cookies and site data**.
2. Turn on **Allow sites to save and read cookie data (recommended)**, and make sure that **Block third-party cookies** is turned off.

If you must keep third-party cookies blocked:

1. In the Edge **Settings** window, select **Cookies and site permissions** > **Cookies and data stored** > **Manage and delete cookies and site data**.
2. Under **Allow**, select **Add** to add the domain URL of the LMS platform.
   1. For example, if the LMS platform is hosted at `https://contoso.com`, then that URL must be added under **Allow**.

![Screenshot of Microsoft Edge cookie settings page](media/edge-cookies.png)

# [Google Chrome](#tab/chrome)

## Allow cookies for LMS URLS in Google Chrome

1. In the Chrome **Settings** window, on the **Privacy and security** tab, select **Cookies and other site data**.

2. Under **Sites that can always use cookies**, select **Add**, and then select the **Including third-party cookies on this site** checkbox.

3. Add the domain URL of the LMS platform.
   1. For instance, if the LMS platform is hosted at `https://contoso.com`, then that URL must be used.

![Screenshot of Google Chrome cookie settings page](media/chrome-cookies.png)

# [Mozilla Firefox](#tab/firefox)

## Allow cookies for LMS URLS in Mozilla Firefox

1. In the Firefox **Settings** window, select the **Privacy & Security** tab.

2. Under **Cookies and Site Data**, select **Manage Exceptions**.

3. In the **Address of website** text box, enter the URL of the LMS platform.
   1. For instance, if the LMS platform is hosted at `https://contoso.com`, then that URL must be used.

4. Select **Allow** to allow cookies for the entered website.

5. Select **Save Changes**.

![Screenshot of Mozilla Firefox cookie settings page](media/firefox-cookies.png)

# [Safari](#tab/safari)

## Allow cookies for LMS URLS in Safari

1. Select **Preferences** > **Privacy**.

2. Clear the **Prevent cross-site tracking** checkbox.

---

> [!NOTE]
> In you can't change the settings yourself (your browser is managed by your organization), reach out to your IT department.
