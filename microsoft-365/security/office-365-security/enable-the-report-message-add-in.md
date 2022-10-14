---
title: Enable the Report Message or the Report Phishing add-ins
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: Admin
ms.topic: how-to

ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: 4250c4bc-6102-420b-9e0a-a95064837676
ms.collection:
  - m365-security
description: Learn how to enable the Report Message or the Report Phishing add-ins for Outlook and Outlook on the web, for individual users, or for your entire organization.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Enable the Report Message or the Report Phishing add-ins

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
> If you're an admin in a Microsoft 365 organization with Exchange Online mailboxes, we recommend that you use the **Submissions** page in the Microsoft 365 Defender portal. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md).

The Report Message and Report Phishing add-ins for Outlook and Outlook on the web (formerly known as Outlook Web App) makes it easy to report false positives (good email marked as bad) or false negatives (bad email allowed) to Microsoft and its affiliates for analysis.

Microsoft uses these submissions to improve the effectiveness of email protection technologies. For example, suppose that people are reporting many messages using the Report Phishing add-in. This information surfaces in the Security Dashboard and other reports. Your organization's security team can use this information as an indication that anti-phishing policies might need to be updated.

You can install either the Report Message or the Report Phishing add-in. If you want your users to report both spam and phishing messages, deploy the Report Message add-in in your organization.

The Report Message add-in provides the option to report both spam and phishing messages. Admins can enable the Report Message add-in for the organization, and individual users can install it for themselves.

The Report Phishing add-in provides the option to report only phishing messages. Admins can enable the Report Phishing add-in for the organization, and individual users can install it for themselves.

If you're an individual user, you can enable both the add-ins for yourself.

If you're a global administrator or an Exchange Online administrator, and Exchange is configured to use OAuth authentication, you can enable the Report Message add-in and the Report Phishing add-in for your organization. Both add-ins are now available through [Centralized Deployment](../../admin/manage/centralized-deployment-of-add-ins.md).

## What do you need to know before you begin?

- Both the Report Message add-in and the Report Phishing add-in work with most Microsoft 365 subscriptions and the following products:
  - Outlook on the web
  - Outlook 2013 SP1 or later
  - Outlook 2016 for Mac
  - Outlook included with Microsoft 365 apps for Enterprise
  - Outlook app for iOS and Android

- Both add-ins are not available for shared, group, or delegated mailboxes (the add-ins will be greyed out).

- Both add-ins are not available for on-premises Exchange mailboxes.

- Your existing web browser should work with both the Report Message and Report Phishing add-ins. But, if you notice the add-in isn't available or not working as expected, try a different browser.

- For organizational installs, the organization needs to be configured to use OAuth authentication. For more information, see [Determine if Centralized Deployment of add-ins works for your organization](../../admin/manage/centralized-deployment-of-add-ins.md).

- Admins need to be a member of the Global admins role group. For more information, see [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md).

- For more information on how to report a message using the Report Message feature, see [Report false positives and false negatives in Outlook](report-false-positives-and-false-negatives.md).

- Organizations that have a URL filtering or security solution (such as a proxy and/or firewall) in place, must have ipagave.azurewebsites.net and outlook.office.com endpoints allowed to be reached on HTTPS protocol.

> [!IMPORTANT]
> To view messages reported to Microsoft on the **User reported messages** tab at <https://security.microsoft.com/reportsubmission>, don't turn off the built-in reporting experience.

## Get the Report Message add-in

### Get the Report Message add-in for yourself

1. Go to the Microsoft AppSource at <https://appsource.microsoft.com/marketplace/apps> and search for the Report Message add-in. To go directly to the Report Message add-in, go to <https://appsource.microsoft.com/product/office/wa104381180>.

2. Click **GET IT NOW**.

   :::image type="content" source="../../media/ReportMessageGETITNOW.png" alt-text="The Get It Now report message." lightbox="../../media/ReportMessageGETITNOW.png":::

3. In the dialog that appears, review the terms of use and privacy policy, and then click **Continue**.

4. Sign in using your work or school account (for business use) or your Microsoft account (for personal use).

After the add-in is installed and enabled, you'll see the following icons:

- In Outlook, the icon looks like this:

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/OutlookReportMessageIcon.png" alt-text="The Report Message add-in icon for Outlook." lightbox="../../media/OutlookReportMessageIcon.png":::

- In Outlook on the web, the icon looks like this:

    > [!div class="mx-imgBorder"]
    > ![Outlook on the web Report Message add-in icon.](../../media/owa-report-message-icon.png)

### Get the Report Message add-in for your organization

> [!NOTE]
> It could take up to 12 hours for the add-in to appear in your organization.

1. In the [Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal/Home?#/homepage), go to **Settings** \> **Integrated apps**. Click **Get apps**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/microsoft-365-admin-center-integrated-apps.png" alt-text="The Microsoft 365 admin center Integrated apps." lightbox="../../media/microsoft-365-admin-center-integrated-apps.png":::

2. In the **Microsoft 365 Apps** page that appears, click in the **Search** box, enter **Report Message**, and then click **Search** ![Search icon.](../../media/search-icon.png). In the list of results, find and select **Report Message**.

3. The app details page opens. Select **Get It Now**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/microsoft-365-admin-center-report-message.png" alt-text="The Report Message add-in." lightbox="../../media/microsoft-365-admin-center-report-message.png":::

4. Complete the basic profile information, and then click **Continue**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/microsoft-365-admin-center-profile-info.png" alt-text="The Report Message add-in profile setup." lightbox="../../media/microsoft-365-admin-center-profile-info.png":::

5. The **Deploy New App** flyout opens. Configure the following settings. Click **Next** to go to the next page to complete setup.

   - **Add users**: Select one of the following values:
     - **Just me**
     - **Entire organization**
     - **Specific users / groups**

   - **Deployment**:
     - **Accept Permissions requests**: Read the app permissions and capabilities carefully before going to the next page.

        > [!div class="mx-imgBorder"]
        > :::image type="content" source="../../media/microsoft-365-admin-center-deploy-new-app.png" alt-text="The Accept permissions requests page." lightbox="../../media/microsoft-365-admin-center-deploy-new-app.png":::

     - **Finish deployment**: Review and finish deploying the add-in.
     - **Deployment completed**: Select **Done** to complete the setup.

        > [!div class="mx-imgBorder"]
        > :::image type="content" source="../../media/microsoft-365-admin-center-deployment-complete.png" alt-text="The notification message of the deployment completed." lightbox="../../media/microsoft-365-admin-center-deployment-complete.png":::

## Edit settings for the Report Message add-in

1. In the Microsoft 365 admin center, go to **Settings** \> **Integrated apps** \. Then find and select **Report Message** add-in.

2. In the flyout that appears, select **Edit users** to edit user settings.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/microsoft-365-admin-center-report-message-edit.png" alt-text="The Report Message flyout." lightbox="../../media/microsoft-365-admin-center-report-message-edit.png":::

3. To remove the add-in, select **Remove app** under **Actions** in the same flyout.

## Get the Report Phishing add-in

### Get the Report Phishing add-in for yourself

1. Go to the Microsoft AppSource at <https://appsource.microsoft.com/marketplace/apps> and search for the Report Phishing add-in.

2. Click **GET IT NOW**.

3. In the dialog that appears, review the terms of use and privacy policy, and then click **Continue**.

4. Sign in using your work or school account (for business use) or your Microsoft account (for personal use).

After the add-in is installed and enabled, you'll see the following icons:

- In Outlook, the icon looks like this:

  ![Report Phishing add-in icon for Outlook.](../../media/Outlook-ReportPhishing.png)

- In Outlook on the web, the icon looks like this:

    > [!div class="mx-imgBorder"]
    > ![Outlook on the web Report Phishing add-in icon.](../../media/OWA-ReportPhishing.png)

### Get the Report Phishing add-in for your organization

> [!NOTE]
> It could take up to 12 hours for the add-in to appear in your organization.

1. In the [Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal/Home?#/homepage), go to **Settings** \> **Integrated apps**. Click **Get apps**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/microsoft-365-admin-center-integrated-apps.png" alt-text="The Microsoft 365 admin center Integrated apps." lightbox="../../media/microsoft-365-admin-center-integrated-apps.png":::

2. In the **Microsoft 365 Apps** page that appears, click in the **Search** box, enter **Report Phishing**, and then click **Search** ![Search icon.](../../media/search-icon.png). In the list of results, find and select **Report Phishing**.

3. The app details page opens. Select **Get It Now**.

4. Complete the basic profile information, and then click **Continue**.

5. The **Deploy New App** flyout opens. Follow the steps [described above](enable-the-report-message-add-in.md#get-the-report-message-add-in-for-your-organization) to complete setup.

## Edit settings for the Report Phishing add-in

1. In the Microsoft 365 admin center, go to **Settings** \> **Integrated apps** \. Then find and select **Report Phishing** add-in.

2. In the flyout that appears, select **Edit users** to edit user settings.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/microsoft-365-admin-center-report-phishing-edit.png" alt-text="The Report Phishing flyout." lightbox="../../media/microsoft-365-admin-center-report-phishing-edit.png":::

3. To remove the add-in, select **Remove app** under **Actions** in the same flyout.

## Get the Report Message or the Report Phishing add-ins for the GCC and GCCH users

If you're a Government Community Cloud High (GCCH) or a Government Community Cloud (GCC) admin, use the following steps to get the Report Message or the Report Phishing add-ins for your organization. Note that if you're an individual user, you can't get the add-in using Microsoft AppSource.

> [!NOTE]
> It could take up to 24 hours for the add-in to appear in your organization. 

1. In the Microsoft 365 admin center, go to **Settings** \> **Add-ins**, and select **Deploy Add-In**. 

2. The **Deploy a new add-in** flyout opens. Click **Next**, and then select **Upload custom apps**.  

3. Select **I have a URL for the manifest file**. Use the following URLs to get the [Report Message](https://ipagave.azurewebsites.net/ReportMessageManifest/ReportMessageAzure.xml) and the [Report Phishing](https://ipagave.azurewebsites.net/ReportMessageManifest/ReportPhishingAzure.xml) add-ins. 

4. Choose which users will have access to the add-in and select a deployment method, and then select **Deploy**. 

5. To fully configure the settings, see [User reported message settings](user-submission.md). 

## Use the Report Message or the Report Phishing add-ins

You can use the Report Message or the Report Phishing add-ins to submit false positives (good email that was blocked or sent to junk folder) and false negatives (unwanted email or phish that was delivered to the inbox) in Outlook. For more information, see [Report false positives and false negatives in Outlook](report-false-positives-and-false-negatives.md).
