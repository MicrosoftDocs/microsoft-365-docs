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
ms.date: 6/20/2023
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
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Enable the Microsoft Report Message or the Report Phishing add-ins

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

> [!NOTE]
> If you're an admin in a Microsoft 365 organization with Exchange Online mailboxes, we recommend that you use the **Submissions** page in the Microsoft 365 Defender portal. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](submissions-admin.md).

The Microsoft Report Message and Report Phishing add-ins for Outlook and Outlook on the web (formerly known as Outlook Web App or OWA) makes it easy for users to report false positives and false negatives to Microsoft for analysis. False positives are good email that was blocked or sent to the Junk Email folder. False negatives are unwanted email or phishing that was delivered to the Inbox.

Microsoft uses these user reported messages to improve the effectiveness of email protection technologies. For example, suppose that people are reporting many messages using the Report Phishing add-in. This information surfaces in the Security Dashboard and other reports. Your organization's security team can use this information as an indication that anti-phishing policies might need to be updated.

The Report Message add-in provides the option to report both spam and phishing messages. The Report Phishing add-in provides the option to report phishing messages only.

Admins can install and enable the add-ins for the organization. Both add-ins are available through [Centralized Deployment](../../admin/manage/centralized-deployment-of-add-ins.md). Individual users can install the add-ins for themselves.

After the add-in is installed and enabled, users see the following icons based on their Outlook client:

- **Outlook for Windows**:

  - <u>The **Report Message** icon in the Classic Ribbon</u>:

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/OutlookReportMessageIcon.png" alt-text="The Report Message add-in using the Classic Ribbon in Outlook." lightbox="../../media/OutlookReportMessageIcon.png":::

  - <u>The **Report Message** icon in the Simplified Ribbon</u>: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More commands** \> **Report Message** in the **Protection** section.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/OutlookReportMessage-simplified.png" alt-text="The Report Message add-in using the Simplified Ribbon in Outlook." lightbox="../../media/OutlookReportMessage-simplified.png":::

  - <u>The **Report Phishing** icon in the Classic Ribbon</u>:

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/Outlook-ReportPhishing.png" alt-text="The Report Phishing add-in in Outlook." lightbox="../../media/Outlook-ReportPhishing.png":::

  - <u>The **Report Phishing** icon in the Simplified Ribbon</u>: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More commands** \> **Report phishing** in the **Protection** section.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/Outlook-ReportPhishing-simplified.png" alt-text="The Report Phishing add-in using the Simplified Ribbon in Outlook." lightbox="../../media/Outlook-ReportPhishing-simplified.png":::

- **Outlook on the web**:

  - <u>The Report Message add-in</u>:

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/owa-report-message-icon.png" alt-text="The Report Message add-in icon in Outlook on the web." lightbox="../../media/owa-report-message-icon.png":::

  - <u>The Report Phishing add-in</u>:

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/OWA-ReportPhishing.png" alt-text="The Report Phishing add-in icon in Outlook on the web." lightbox="../../media/OWA-ReportPhishing.png":::

## What do you need to know before you begin?

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md): Membership in the **Organization Management** role group.
  - [Exchange Online RBAC](/Exchange/permissions-exo/permissions-exo): Membership in the **Organization Management** role group.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator** role gives users the required permissions _and_ permissions for other features in Microsoft 365.

- For organizational installs, the organization needs to be configured to use OAuth authentication. For more information, see [Determine if Centralized Deployment of add-ins works for your organization](../../admin/manage/centralized-deployment-of-add-ins.md).

- The Report Message and Report Phishing add-ins work with most Microsoft 365 subscriptions and the following products:
  - Outlook on the web
  - Outlook 2013 SP1 or later
  - Outlook 2016 for Mac
  - Outlook included with Microsoft 365 apps for Enterprise
  - Outlook for iOS and Android

- Currently, reporting messages in shared mailboxes or other mailboxes by a delegate using the add-ins isn't supported. Messages aren't sent to the [reporting mailbox](submissions-user-reported-messages-custom-mailbox.md) or to Microsoft. Built-in reporting in Outlook on the web in shared mailboxes or other mailboxes by a delegate is supported. Messages are sent to the reporting mailbox or to Microsoft.

- The add-ins aren't available for on-premises Exchange mailboxes.

- For more information on how to report a message using reporting in Outlook, see [Report false positives and false negatives in Outlook](submissions-outlook-report-messages.md).

  > [!NOTE]
  > Reported messages are available to admins on the **User reported** tab of **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user> **only** if both of the following settings are configured on the **User reported settings** page at <https://security.microsoft.com/securitysettings/userSubmission>:
  >
  > - **Monitor reported messages in Outlook** is selected.
  > - **Use the built-in "Report" button in Outlook** is selected.

- Organizations that use URL filtering or a third-party security solution (for example, a proxy and/or firewall) must be able to reach the following URLs using the HTTPS protocol:
  - `ipagave.azurewebsites.net`
  - `outlook.office.com`

## Admin instructions

Install and configure the Report Message or Report Phishing add-ins for the organization.

> [!NOTE]
> It could take up to 12 hours for the add-in to appear in your organization.
>
> When you follow these instructions to centrally deploy the add-ins, a corresponding app registration is also deployed in Azure. If you delete the app registration for the add-in in Azure, the add-in is also deleted from the organization.

### Get the Report Message or Report Phishing add-in for your organization

1. In the Microsoft 365 admin center at <https://admin.microsoft.com>, expand **Show all** if necessary, and then go to **Settings** \> **Integrated apps**. Or, to go directly to the **Integrated apps** page, use <https://admin.microsoft.com/Adminportal/Home#/Settings/IntegratedApps>.

2. On the **Integrated apps** page, select :::image type="icon" source="../../media/m365-cc-sc-get-apps-icon.png" border="false"::: **Get apps**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/microsoft-365-admin-center-integrated-apps.png" alt-text="The Integrated apps page in the Microsoft 365 admin center where you select Get apps." lightbox="../../media/microsoft-365-admin-center-integrated-apps.png":::

3. In the **Microsoft 365 Apps** page that opens, enter **Report Message** in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box.

   In the search results, select **Get it now** in the **Report Message** entry or the **Report Phishing** entry to start the **Deploy New App** wizard.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/microsoft-365-admin-center-report-message.png" alt-text="Search results for Report Message showing the Report Message and Report Phishing add-ins, and the Get it now buttons on each." lightbox="../../media/microsoft-365-admin-center-report-message.png":::

   > [!NOTE]
   > Although the screenshots in the remaining steps show the **Report Message** add-in, the steps are identical for the **Report Phishing** add-in.

4. On the **Add users** page, configure the following settings:

   - **Is this a test deployment?**: Leave the toggle at :::image type="icon" source="../../media/scc-toggle-off.png" border="false"::: **No**, or set the toggle to :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: **Yes**.

   - **Assign users**: Select one of the following values:
     - **Just me**
     - **Entire organization**
     - **Specific users/groups**: Find and select users and groups in the search box. After each selection, the user or group appears in the **To be added** section that appears below the search box. To remove a selection, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: on the entry.

   - **Email notification**: By default, **Send email notification to assigned users** is selected. Select **View email sample** to open the [Add-in deployment email alerts](/microsoft-365/admin/manage/add-in-deployment-email-alerts) article.

   > [!div class="mx-imgBorder"]
   > :::image type="content" source="../../media/microsoft-365-admin-center-deploy-new-app-add-users.png" alt-text="The Add users page of Deploy New App." lightbox="../../media/microsoft-365-admin-center-deploy-new-app-add-users.png":::

   When you're finished on the **Add users** page, select **Next**.

5. On the **Accept permissions requests** page, read the app permissions and capabilities information carefully before you select **Next**.

   > [!div class="mx-imgBorder"]
   > :::image type="content" source="../../media/microsoft-365-admin-center-deploy-new-app-accept-permissions-requests.png" alt-text="The Accept permissions requests page of Deploy New App." lightbox="../../media/microsoft-365-admin-center-deploy-new-app-accept-permissions-requests.png":::

6. On the **Review and finish deployment** page, review your settings. Select **Back** to make changes.

   When you're finished on the **Review and finish deployment** page, select **Finish deployment**.

   > [!div class="mx-imgBorder"]
   > :::image type="content" source="../../media/microsoft-365-admin-center-deploy-new-app-review-and-finish.png" alt-text="The Review and finish deployment page of Deploy New App." lightbox="../../media/microsoft-365-admin-center-deploy-new-app-review-and-finish.png":::

   A progress indicator appears on the **Review and finish deployment** page.

7. On the **Deployment completed page**, you can select **view this deployment** to close the page and go to [the details of the add-in](#view-and-edit-settings-for-the-report-message-or-report-phishing-add-ins). Or, select **Done** to close the page.

   > [!div class="mx-imgBorder"]
   > :::image type="content" source="../../media/microsoft-365-admin-center-deployment-complete.png" alt-text="The notification message of the deployment completed." lightbox="../../media/microsoft-365-admin-center-deployment-complete.png":::

### Get the Report Message or the Report Phishing add-ins for your Microsoft 365 GCC or GCC High organization

Admins in Microsoft 365 Government Community Cloud (GCC) or GCC High need to use the steps in this section to get the Report Message or Report Phishing add-ins for their organizations.

> [!NOTE]
> It could take up to 24 hours for the add-in to appear in your organization.
>
> In U.S. Government organizations (Microsoft 365 GCC, GCC High, and DoD), reported messages aren't sent to Microsoft for analysis. They're sent only to the reporting mailbox that you identify for compliance reasons (data isn't allowed to leave the organization boundary). For more information, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

1. In the Microsoft 365 admin center at <https://portal.office365.us/adminportal/home#/Settings/AddIns>, select **Settings** \> **Add-ins** \> **Deploy Add-in** \> **Upload custom apps**.

2. In the **Upload custom apps** flyout that opens, select **I have a URL for the manifest file**.

4. In the **Add from URL** dialog that opens, enter one of the following URLs:
   - **Report Message**: <https://ipagave.azurewebsites.net/ReportMessageManifest/ReportMessageAzure.xml>
   - **Report Phishing**: <https://ipagave.azurewebsites.net/ReportPhishingManifest/ReportPhishingAzure.xml>

   When you're finished, select **Install**. In the success dialog, select **OK**.

5. Back on the **Add-ins** page, select the add-in you installed, and then select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**.

6. In the add-in properties dialog that opens, confirm or modify the following settings:
   - **Make this add-in available to users in your organization**.
   - **Specify user defaults**: Select one of the following settings:
     - **Optional, enabled by default**.
     - **Optional, disabled by default**.
     - **Mandatory, always enabled. Users can't disable this add-in**.

   When you're finished, select **Save**.

7. To fully configure user reported message settings, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

### View and edit settings for the Report Message or Report Phishing add-ins

1. In the Microsoft 365 admin center at <https://admin.microsoft.com>, expand **Show all** if necessary, and then go to **Settings** \> **Integrated apps**. Or, to go directly to the **Integrated apps** page, use <https://admin.microsoft.com/Adminportal/Home#/Settings/IntegratedApps>.

   > [!NOTE]
   > Although the screenshots in the remaining steps show the **Report Message** add-in, the steps are identical for the **Report Phishing** add-in.

2. On the **Deployed apps** tab of the **Integrated apps** page, select the **Report Message** add-in or the **Report Phishing** add-in by doing one of the following steps:

   - In the **Name** column, select the icon or text for the add-in. This selection takes you to the **Overview** tab in the details flyout as described in the next steps.
   - In the **Name** column, select **⋮** **Edit row**, and then select :::image type="icon" source="../../media/m365-cc-sc-add-internal-icon.png" border="false"::: **Edit users** to go to the **Users** tab in the details flyout as described in the next step.
   - In the **Name** column, select **⋮** **Edit row**, and then select :::image type="icon" source="../../media/m365-cc-sc-show-trends-icon.png" border="false"::: **Check usage data** to go to the **Usage** tab in the details flyout as described in the next step.

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
     - **Actions** section: Select **Remove app** to remove the app.
     - **Assigned users** section: Select **Edit users** to go to the **Users** tab.
     - **Usage** section: Select **Check usage data** to got to the **Usage** tab.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/microsoft-365-admin-center-report-message-add-in-details-overview-tab.png" alt-text="The Overview tab on the details flyout of the Report Message add-in in the Microsoft 365 admin center." lightbox="../../media/microsoft-365-admin-center-report-message-add-in-details-overview-tab.png":::

   - **Users** tab:
     - **Is this a test deployment?**: Leave the toggle at :::image type="icon" source="../../media/scc-toggle-off.png" border="false"::: **No**, or set the toggle to :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: **Yes**.
     - **Assign users** section: Select one of the following values:
       - **Just me**
       - **Entire organization**
       - **Specific users/groups**: Find and select users and groups in the search box. After each selection, the user or group appears in the **Added users** section that appears below the search box. To remove a selection, select :::image type="icon" source="../../media/m365-cc-sc-remove-icon.png" border="false"::: on the entry.

     - **Email notification** section: **Send email notification to assigned users** and **View email sample** aren't selectable.

     If you made any updates on this tab, select **Update** to save your changes.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/microsoft-365-admin-center-report-message-add-in-details-users-tab.png" alt-text="The Users tab on the details flyout of the Report Message add-in in the Microsoft 365 admin center." lightbox="../../media/microsoft-365-admin-center-report-message-add-in-details-users-tab.png":::

   - **Usage** tab: The chart and details table shows the number of active users over time.
     - Filter the **Date range** to **7 days**, **30 days** (default), or **90 days**.
     - In the **Report** column, select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Download** to download the information filtered by **Date range** to the file named **UsageData.csv**.

   When you're finished viewing the information on the tabs, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: **Close** to close the details flyout.

## User instructions

### Get the Report Message or Report Phishing add-ins for yourself

1. Do either of the following steps:

   - Open the Microsoft commercial marketplace at <https://appsource.microsoft.com/marketplace/apps>. On the **AppSource** page, enter **Report message** in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box, and then select the **Report Message** or **Report Phishing** in the results.

   :::image type="content" source="../../media/microsoft-appsource-find-report-message-add-in.png" alt-text="Search results on the Microsoft commercial marketplace page for the Report Message add-in." lightbox="../../media/microsoft-appsource-find-report-message-add-in.png":::

   - Use one of the following URLs to go directly to the download page for the add-in:
     - **Report Message**: <https://appsource.microsoft.com/product/office/WA104381180>
     - **Report Phishing**: <https://appsource.microsoft.com/product/office/WA200002469>

   > [!NOTE]
   > Although the screenshots in the remaining steps show the **Report Message** add-in, the steps are identical for the **Report Phishing** add-in.

2. On the details page of the add-in, select **Get it now**.

   :::image type="content" source="../../media/ReportMessageGETITNOW.png" alt-text="The details page of the Report Message add-in where you select Get it now." lightbox="../../media/ReportMessageGETITNOW.png":::

3. If prompted, sign in with your Microsoft account credentials.

4. When the installation is finished, you get the following **Launch** page:

   :::image type="content" source="../../media/report-message-add-in-launch-page.png" alt-text="The Launch page of the Report Message add-in." lightbox="../../media/report-message-add-in-launch-page.png":::

### Get the Report Message or the Report Phishing add-ins for yourself in Microsoft 365 GCC or GCC High

Individual users in Microsoft 365 GCC or GCC High can't get the Report Message or Report Phishing add-ins using the Microsoft commercial marketplace.

## Use the Report Message or the Report Phishing add-ins

In supported versions of Outlook, use the Report Message or the Report Phishing add-ins to submit false positives and false negatives. For more information, see [Report false positives and false negatives in Outlook](submissions-outlook-report-messages.md).
