---
title: Enable the Report Message or the Report Phishing add-ins
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: Admin
ms.reviewer: dhagarwal
ms.topic: how-to
ms.date: 12/15/2022
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: 4250c4bc-6102-420b-9e0a-a95064837676
ms.collection:
  - m365-security
  - tier2
description: Learn how to enable the Report Message or the Report Phishing add-ins for Outlook and Outlook on the web, for individual users, or for your entire organization.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Enable the Microsoft Report Message or the Report Phishing add-ins

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
> If you're an admin in a Microsoft 365 organization with Exchange Online mailboxes, we recommend that you use the **Submissions** page in the Microsoft 365 Defender portal. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](submissions-admin.md).

The Microsoft Report Message and Report Phishing add-ins for Outlook and Outlook on the web (formerly known as Outlook Web App or OWA) makes it easy to report false positives (good email marked as bad) or false negatives (bad email allowed) to Microsoft and its affiliates for analysis.

Microsoft uses these user reported messages to improve the effectiveness of email protection technologies. For example, suppose that people are reporting many messages using the Report Phishing add-in. This information surfaces in the Security Dashboard and other reports. Your organization's security team can use this information as an indication that anti-phishing policies might need to be updated.

You can install either the Report Message or the Report Phishing add-in. If you want your users to report both spam and phishing messages, deploy the Report Message add-in in your organization.

The Report Message add-in provides the option to report both spam and phishing messages. Admins can enable the Report Message add-in for the organization, and individual users can install it for themselves.

The Report Phishing add-in provides the option to report only phishing messages. Admins can enable the Report Phishing add-in for the organization, and individual users can install it for themselves.

If you're an individual user, you can enable both the add-ins for yourself.

If you're a global administrator or an Exchange Online administrator, and Exchange is configured to use OAuth authentication, you can enable the Report Message and Report Phishing add-ins for your organization. Both add-ins are now available through [Centralized Deployment](../../admin/manage/centralized-deployment-of-add-ins.md).

After the add-in is installed and enabled, users will see the following icons:

- **Outlook for Windows**:

  - The **Report Message** icon in the Classic Ribbon:

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/OutlookReportMessageIcon.png" alt-text="The Report Message add-in using the Classic Ribbon in Outlook." lightbox="../../media/OutlookReportMessageIcon.png":::

  - The **Report Message** icon in the Simplified Ribbon: Click ![More commands icon.](../../media/m365-cc-sc-more-actions-icon.png) **More commands** \> **Protection** section \> **Report Message**.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/OutlookReportMessage-simplified.png" alt-text="The Report Message add-in using the Simplified Ribbon in Outlook." lightbox="../../media/OutlookReportMessage-simplified.png":::

  - The **Report Phishing** icon in the Classic Ribbon:

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/Outlook-ReportPhishing.png" alt-text="The Report Phishing add-in in Outlook." lightbox="../../media/Outlook-ReportPhishing.png":::

  - The **Report Phishing** icon in the Simplified Ribbon: Click ![More commands icon.](../../media/m365-cc-sc-more-actions-icon.png) **More commands** \> **Protection** section \> **Report Phishing**.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/Outlook-ReportPhishing-simplified.png" alt-text="The Report Phishing add-in using the Simplified Ribbon in Outlook." lightbox="../../media/Outlook-ReportPhishing-simplified.png":::

- **Outlook on the web**:

  - The Report Message add-in:

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/owa-report-message-icon.png" alt-text="The Report Message add-in icon in Outlook on the web." lightbox="../../media/owa-report-message-icon.png":::

  - The Report Phishing add-in:

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/OWA-ReportPhishing.png" alt-text="The Report Phishing add-in icon in Outlook on the web." lightbox="../../media/OWA-ReportPhishing.png":::

## What do you need to know before you begin?

- The Report Message and Report Phishing add-ins work with most Microsoft 365 subscriptions and the following products:
  - Outlook on the web
  - Outlook 2013 SP1 or later
  - Outlook 2016 for Mac
  - Outlook included with Microsoft 365 apps for Enterprise
  - Outlook for iOS and Android

- The add-ins are not available for shared, group, or delegated mailboxes (**Report message** will be greyed out).

- The add-ins are not available for on-premises Exchange mailboxes.

- Your existing web browser should work with the Report Message and Report Phishing add-ins. But, if you notice an add-in isn't available or not working as expected, try a different browser.

- For organizational installs, the organization needs to be configured to use OAuth authentication. For more information, see [Determine if Centralized Deployment of add-ins works for your organization](../../admin/manage/centralized-deployment-of-add-ins.md).

- Admins need to be a member of the Global admins role group. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).

- For more information on how to report a message using the Report Message feature, see [Report false positives and false negatives in Outlook](submissions-outlook-report-messages.md).

- Organizations that have a URL filtering or security solution (such as a proxy and/or firewall) in place, must have ipagave.azurewebsites.net and outlook.office.com endpoints allowed to be reached on HTTPS protocol.

- Currently, reporting messages in shared mailboxes or other mailboxes by a delegate using the add-ins is not supported. Messages are not sent to the [reporting mailbox](submissions-user-reported-messages-custom-mailbox.md) or to Microsoft. Built-in reporting in Outlook on the web sends messages reported by a delegate to the reporting mailbox and/or to Microsoft.

> [!IMPORTANT]
> Admins can view reported messages on the **Submissions** page at <https://security.microsoft.com/reportsubmission> **only** if both of the following settings are configured on the **User reported** page at <https://security.microsoft.com/securitysettings/userSubmission>:
>
> - The toggle on the **User reported** page is **On** ![Toggle on.](../../media/scc-toggle-on.png).
> - **Use the built-in "Report" button with "Phishing", "Junk", and "Not Junk options"** is selected.

## Use the built-in Report button in Outlook on the web

## Admin instructions

Install and configure the Report Message or Report Phishing add-ins for the organization.

> [!NOTE]
> It could take up to 12 hours for the add-in to appear in your organization.

### Get the Report Message or Report Phishing add-in for your organization

1. In the Microsoft 365 admin center at <https://admin.microsoft.com>, expand **Show all** if necessary, and then go to **Settings** \> **Integrated apps**. Or, to directly to the **Integrated apps** page, use <https://admin.microsoft.com/Adminportal/Home#/Settings/IntegratedApps>.

2. On the **Integrated apps** page, click ![Get apps icon.](../../media/m365-cc-sc-get-apps-icon.png)**Get apps**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/microsoft-365-admin-center-integrated-apps.png" alt-text="The Integrated apps page in the Microsoft 365 admin center where you click Get apps." lightbox="../../media/microsoft-365-admin-center-integrated-apps.png":::

3. In the **Microsoft 365 Apps** page that opens, enter **Report Message** in the ![Search icon.](../../media/search-icon.png) **Search** box.

   In the search results, click **Get it now** in the **Report Message** entry or the **Report Phishing** entry.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/microsoft-365-admin-center-report-message.png" alt-text="Search results for Report Message showing the Report Message and Report Phishing add-ins, and the Get it now buttons on each." lightbox="../../media/microsoft-365-admin-center-report-message.png":::

   > [!NOTE]
   > Although the screenshots in the remaining steps show the **Report Message** add-in, the steps are identical for the **Report Phishing** add-in.

4. The **Deploy New App** wizard opens. On the **Add users** page, configure the following settings:

   - **Is this a test deployment?**: Leave the toggle at ![Toggle off.](../../media/scc-toggle-off.png) **No**, or set the toggle to ![Toggle on.](../../media/scc-toggle-on.png) **Yes**.

   - **Assign users**: Select one of the following values:
     - **Just me**
     - **Entire organization**
     - **Specific users/groups**: Find and select users and groups in the search box. After each selection, the user or group appears in the **To be added** section that appears below the search box. To remove a selection, click ![Remove entry icon.](../../media/m365-cc-sc-remove-selection-icon.png) on the entry.

   - **Email notification**: By default the **Send email notification to assigned users** is selected. Click **View email sample** to open the Add-in deployment email alerts](/microsoft-365/admin/manage/add-in-deployment-email-alerts) article.

   > [!div class="mx-imgBorder"]
   > :::image type="content" source="../../media/microsoft-365-admin-center-deploy-new-app-add-users.png" alt-text="The Add users page of Deploy New App." lightbox="../../media/microsoft-365-admin-center-deploy-new-app-add-users.png":::

   When you're finished, click **Next**.

5. On the **Accept permissions requests** page, read the app permissions and capabilities information carefully before you click **Next**.

   > [!div class="mx-imgBorder"]
   > :::image type="content" source="../../media/microsoft-365-admin-center-deploy-new-app-accept-permissions-requests.png" alt-text="The Accept permissions requests page of Deploy New App." lightbox="../../media/microsoft-365-admin-center-deploy-new-app-accept-permissions-requests.png":::

6. On the **Review and finish deployment** page, review your settings. Click **Back** to make changes.

   When you're finished, click **Finish deployment**.

   > [!div class="mx-imgBorder"]
   > :::image type="content" source="../../media/microsoft-365-admin-center-deploy-new-app-review-and-finish.png" alt-text="The Review and finish deployment page of Deploy New App." lightbox="../../media/microsoft-365-admin-center-deploy-new-app-review-and-finish.png":::

7. A progress indicator appears on the **Review and finish deployment** page. If deployment of the add-in is successful, the page title changes to **Deployment completed**.

   > [!div class="mx-imgBorder"]
   > :::image type="content" source="../../media/microsoft-365-admin-center-deployment-complete.png" alt-text="The notification message of the deployment completed." lightbox="../../media/microsoft-365-admin-center-deployment-complete.png":::

   When you're finished, click **Done**.

   If you click **View this deployment**, the page closes and you're taken to the details of the add-in as described in the next section.

### Get the Report Message or the Report Phishing add-ins for your Microsoft 365 GCC or GCC High organization

Admins in Microsoft 365 Government Community Cloud (GCC) or GCC High need to use the steps in this section to get the Report Message or Report Phishing add-ins for their organizations.

> [!NOTE]
> It could take up to 24 hours for the add-in to appear in your organization.
>
> In U.S. Government organizations (Microsoft 365 GCC, GCC High, and DoD), reported messages are not sent to Microsoft for analysis. They are sent only to the reporting mailbox that you identify. For more information, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

1. In the Microsoft 365 admin center at <https://portal.office365.us/adminportal/home#/Settings/AddIns> open settings by selecting **Settings**.

2. On the settings page, select the **Add-ins** option. Then select **Deploy Add-in** followed by **upload custom apps**

3. On the upload custom apps sidepanel, select **I have a URL for the manifest file**.

4. In the **Add from URL** dialog that opens, enter one of the following URLs:
   - **Report Message**: <https://ipagave.azurewebsites.net/ReportMessageManifest/ReportMessageAzure.xml>
   - **Report Phishing**: <https://ipagave.azurewebsites.net/ReportPhishingManifest/ReportPhishingAzure.xml>

   When you're finished, click **Install**. In the success dialog, click **OK**.

5. Back on the **Add-ins** page, select the add-in you just installed, and then click ![Edit icon.](../../media/ITPro-EAC-EditIcon.png) **Edit**.

6. In the add-in properties dialog that opens, confirm or modify the following settings:
   - **Make this add-in available to users in your organization**.
   - **Specify user defaults**: Select one of the following settings:
     - **Optional, enabled by default**.
     - **Optional, disabled by default**.
     - **Mandatory, always enabled. Users can't disable this add-in**.

   When you're finished, click **Save**.

7. To fully configure user reported message settings, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

### View and edit settings for the Report Message or Report Phishing add-ins

1. In the Microsoft 365 admin center at <https://admin.microsoft.com>, expand **Show all** if necessary, and then go to **Settings** \> **Integrated apps**. Or, to directly to the **Integrated apps** page, use <https://admin.microsoft.com/Adminportal/Home#/Settings/IntegratedApps>.

   > [!NOTE]
   > Although the screenshots in the remaining steps show the **Report Message** add-in, the steps are identical for the **Report Phishing** add-in.

2. On the **Integrated apps** page, select the **Report Message** add-in or the **Report Phishing** add-in by doing one of the following steps:

   - In the **Name** column, click the icon or text for the add-in. This selection takes you to the **Overview** tab in the details flyout as described in the next steps.
   - In the **Name** column, click **⋮** **Edit row**, and then select ![Edit users icon.](../../media/m365-cc-sc-remove-selected-users-icon.png) **Edit users**. This selection takes you to the **Users** tab in the details flyout as described in the next steps.
   - In the **Name** column, click **⋮** **Edit row**, and then select ![Check usaged data icon.](../../media/m365-cc-sc-remove-selected-users-icon.png) **Check usage data**. This selection takes you to the **Usage** tab in the details flyout as described in the next steps.

   > [!div class="mx-imgBorder"]
   > :::image type="content" source="../../media/microsoft-365-admin-center-select-report-message-add-in.png" alt-text="Select the Report Message add-in on the Integrated apps page in the Microsoft 365 admin center." lightbox="../../media/microsoft-365-admin-center-select-report-message-add-in.png":::

3. The details flyout that opens contains the following tabs:

   - **Overview** tab:
     - **Basic info** section:
       - **Status**
       - **Type**: Add-in
       - **Test deployment**: **Yes** or **No**, depending on the option you selected when you [deployed the add-in](#get-the-report-message-or-report-phishing-add-in-for-your-organization) or the selection you change on the **Users** tab.
       - **Description**
       - **Host product**: Outlook
     - **Actions** section: Click **Remove app** to remove the app.
     - **Assigned users** section: Click **Edit users** to go to the **Users** tab.
     - **Usage** section: Click **Check usage data** to got to the **Usage** tab.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/microsoft-365-admin-center-report-message-add-in-details-overview-tab.png" alt-text="The Overview tab on the details flyout of the Report Message add-in in the Microsoft 365 admin center." lightbox="../../media/microsoft-365-admin-center-report-message-add-in-details-overview-tab.png":::

   - **Users** tab:
     - **Is this a test deployment?**: Leave the toggle at ![Toggle off.](../../media/scc-toggle-off.png) **No**, or set the toggle to ![Toggle on.](../../media/scc-toggle-on.png) **Yes**.
     - **Assign users** section: Select one of the following values:
       - **Just me**
       - **Entire organization**
       - **Specific users/groups**: Find and select users and groups in the search box. After each selection, the user or group appears in the **Added users** section that appears below the search box. To remove a selection, click ![Remove selection icon.](../../media/m365-cc-sc-remove.png) on the entry.

     - **Email notification** section: **Send email notification to assigned users** and **View email sample** are not selectable.

     If you made any updates on this tab, click **Update** to save your changes.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/microsoft-365-admin-center-report-message-add-in-details-users-tab.png" alt-text="The Users tab on the details flyout of the Report Message add-in in the Microsoft 365 admin center." lightbox="../../media/microsoft-365-admin-center-report-message-add-in-details-users-tab.png":::

   - **Usage** tab: The chart and details table shows the number of active users over time.
     - Filter the **Date range** to **7 days**, **30 days** (default), or **90 days**.
     - In the **Report** column, click ![Download icon.](../../media/m365-cc-sc-download-icon.png) **Download** to download the information filtered by **Date range** to the file named **UsageData.csv**.

   When you're finished viewing the information on the tabs, click ![Close icon.](../../media/m365-cc-sc-close-icon.png) **Close** to close the details flyout.

## User instructions

### Get the Report Message or Report Phishing add-ins for yourself

1. Do one of the following steps:

   - Open the Microsoft AppSource at <https://appsource.microsoft.com/marketplace/apps>. On the **AppSource** page, enter **Report message** in the ![Search icon.](../../media/search-icon.png) **Search** box, and then select the **Report Message** or **Report Phishing** in the results.

   :::image type="content" source="../../media/microsoft-appsource-find-report-message-add-in.png" alt-text="Search results on the Microsoft AppSource page for the Report Message add-in." lightbox="../../media/microsoft-appsource-find-report-message-add-in.png":::

   - Use one of the following URLs to go directly to the download page for the add-in:
     - **Report Message**: <https://appsource.microsoft.com/product/office/WA104381180>
     - **Report Phishing**: <https://appsource.microsoft.com/product/office/WA200002469>

   > [!NOTE]
   > Although the screenshots in the remaining steps show the **Report Message** add-in, the steps are identical for the **Report Phishing** add-in.

2. On the details page of the add-in, click **Get it now**.

   :::image type="content" source="../../media/ReportMessageGETITNOW.png" alt-text="The details page of the Report Message add-in where you click Get it now." lightbox="../../media/ReportMessageGETITNOW.png":::

3. If prompted, sign in with your Microsoft account credentials.

4. When the installation is finished, you'll see the following **Launch** page:

   :::image type="content" source="../../media/report-message-add-in-launch-page.png" alt-text="The Launch page of the Report Message add-in." lightbox="../../media/report-message-add-in-launch-page.png":::

### Get the Report Message or the Report Phishing add-ins for yourself in Microsoft 365 GCC or GCC High

Individual users in Microsoft 365 GCC or GCC High can't get the Report Message or Report Phishing add-ins using the Microsoft AppSource.

## Use the Report Message or the Report Phishing add-ins

You can use the Report Message or the Report Phishing add-ins to submit false positives (good email that was blocked or sent to the Junk Email folder) and false negatives (unwanted email or phishing that was delivered to the Inbox) in Outlook. For more information, see [Report false positives and false negatives in Outlook](submissions-outlook-report-messages.md).
