---
title: Report false positives and false negatives in Outlook
f1.keywords:
- NOCSH
ms.author: RatulaC
author: RatulaC
manager: dansimp
audience: Admin
ms.topic: how-to

localization_priority: Normal
ms.collection: 
  - M365-security-compliance
description: Learn how to report false positives and false negatives in Outlook and enable the Report Message and Report Phishing add-ins.
ms.technology: mdo
ms.prod: m365-security
---

# Report false positives and false negatives in Outlook

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
> If you're an admin in a Microsoft 365 organization with Exchange Online mailboxes, we recommend that you use the Submissions portal in the Security & Compliance Center. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md).

In Microsoft 365 organizations with mailboxes in Exchange Online or on-premises mailboxes using hybrid modern authentication, you can submit false positives (good email marked as spam), false negatives (bad email allowed), and phishing messages to Exchange Online Protection (EOP).

## What do you need to know before you begin?

- For the best user submission experience, use the Report Message and the Report Phishing add-ins.

- Note that this Report Message feature works for Outlook in all platforms—on the web, iOS, Android, and Desktop.

- If you're an admin in an organization with Exchange Online mailboxes, use the Submissions portal in the Security & Compliance Center. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md).

- You can configure reported messages to be copied or redirected to a mailbox that you specify. For more information, see [User submissions policies](user-submission.md).

- For more information about reporting messages to Microsoft, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## Use the Report Message feature

### Report junk and phishing messages

For messages in the Inbox or any other email folder except Junk Email, use the following method to report spam and phishing messages:

1. Click the **More actions** ellipses on the top-right corner of the selected message, click **Report message** from the dropdown menu, and then select **Junk** or **Phishing**.
  
  ![Report Message - More actions](../../media/more-actions-ellipses.png)

  ![Report Message - Menu and options](../../media/report-message-feature.png)

2. The selected messages will be sent to Microsoft for analysis and:

   - Moved to the Junk Email folder if it was reported as spam.

   - Deleted if it was reported as phishing.
   
   ### Report messages that are not junk

1. Click the **More actions** ellipses on the top-right corner of the selected message, click **Report message** from the dropdown menu, and then click **Not Junk**.  

  ![Report Message - More actions](../../media/more-actions-ellipses.png)

  ![Report Message - Menu and options](../../media/report-message-feature.png)

2. The selected message will be sent to Microsoft for analysis and moved to Inbox or any other specified folder.

## Enable the Report Message and Report Phishing add-ins

The Report Message and Report Phishing add-ins for Outlook and Outlook on the web (formerly known as Outlook Web App) enable people to easily report false positives (good email marked as bad) or false negatives (bad email allowed) to Microsoft and its affiliates for analysis. 

Microsoft uses these submissions to improve the effectiveness of email protection technologies. For example, suppose that people are reporting many messages using the Report Phishing add-in. This information surfaces in the Security Dashboard and other reports. Your organization's security team can use this information as an indication that anti-phishing policies might need to be updated. 

You can install either the Report Message or Report Phishing add-in. If you want your users to report both spam and phishing messages, deploy the Report Message add-in in your organization. For more information, see Enable the Report Message add-in. 

The Report Message add-in provides the option to report both spam and phishing messages. Admins can enable the Report Message add-in for the organization, and individual users can install it for themselves. 

The Report Phishing add-in provides the option to report only phishing messages. Admins can enable the Report Phishing add-in for the organization, and individual users can install it for themselves. 

If you're an individual user, you can enable both the add-ins for yourself.

f you're a global administrator or an Exchange Online administrator, and Exchange is configured to use OAuth authentication, you can enable the Report Message add-in and the Report Phishing add-in for your organization. Both add-ins are now available through [Centralized Deployment](../../admin/manage/centralized-deployment-of-add-ins.md).

## What do you need to know before you begin?

- Both the Report Message add-in and the Report Phishing add-in works with most Microsoft 365 subscriptions and the following products:

  - Outlook on the web
  - Outlook 2013 SP1 or later
  - Outlook 2016 for Mac
  - Outlook included with Microsoft 365 apps for Enterprise
  - Outlook app for iOS and Android

- Both add-ins are not available for shared mailboxes or mailboxes in on-premises Exchange organizations.

- You can configure reported messages to be copied or redirected to a mailbox that you specify. For more information, see [User submissions policies](user-submission.md).

- Your existing web browser should work with both the Report Message and Report Phishing add-ins. But, if you notice the add-in is not available or not working as expected, try a different browser.

- For organizational installs, the organization needs to be configured to use OAuth authentication. For more information, see [Determine if Centralized Deployment of add-ins works for your organization](../../admin/manage/centralized-deployment-of-add-ins.md).

- Admins need to be a member of the Global admins role group. For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

## Get the Report Message add-in

### Get the add-in for yourself

1. Go to the Microsoft AppSource at <https://appsource.microsoft.com/marketplace/apps> and search for the Report Message add-in. To go directly to the Report Message add-in, go to <https://appsource.microsoft.com/product/office/wa104381180>.

2. Click **GET IT NOW**.

   ![Report Message - Get It Now](../../media/ReportMessageGETITNOW.png)

3. In the dialog that appears, review the terms of use and privacy policy, and then click **Continue**.

4. Sign in using your work or school account (for business use) or your Microsoft account (for personal use).

After the add-in is installed and enabled, you'll see the following icons:

- In Outlook, the icon looks like this:

  ![Report Message add-in icon for Outlook](../../media/OutlookReportMessageIcon.png)

- In Outlook on the web, the icon looks like this:

  ![Outlook on the web Report Message add-in icon](../../media/report-message-icon-owa.png)

### Get the add-in for your organization

> [!NOTE]
> It could take up to 12 hours for the add-in to appear in your organization.

1. In the Microsoft 365 admin center, go to the go to the **Settings** \> **Add-ins** page at <https://admin.microsoft.com/AdminPortal/Home#/Settings/AddIns>. If you don't see the **Add-in** Page, go to the **Settings** \> **Integrated apps** \> **Add-ins** link on the top of the **Integrated apps** page.

2. Select **Deploy Add-in** at the top of the page, and then select **Next**.

   ![Services and add-ins page in the Microsoft 365 admin center](../../media/ServicesAddInsPageNewM365AdminCenter.png)

3. In the **Deploy a new add-in** flyout that appears, review the information, and then click **Next**.

4. On the next page, click **Choose from the Store**.

   ![Deploy a new add-in page](../../media/NewAddInScreen2.png)

5. In the **Select add-in** page that appears, click in the **Search** box, enter **Report Message**, and then click **Search** ![Search icon](../../media/search-icon.png). In the list of results, find **Report Message** and then click **Add**.

   ![Select add-in search results](../../media/NewAddInScreen3.png)

6. In the dialog that appears, review the licensing and privacy information, and then click **Continue**.

7. In the **Configure add-in** page that appears, configure the following settings:

   - **Assigned users**: Select one of the following values:

     - **Everyone** (default)
     - **Specific users / groups**
     - **Just me**

   - **Deployment method**: Select one of the following values:

     - **Fixed (Default)**: The add-in is automatically deployed to the specified users and they can't remove it.
     - **Available**: Users can install the add-in at **Home** \> **Get add-ins** \> **Admin-managed**.
     - **Optional**: The add-in is automatically deployed to the specified users, but they can choose to remove it.

   ![Configure add-in page](../../media/configure-add-in.png)

   When you're finished, click **Deploy**.

8. In the **Deploy Report Message** page that appears, you'll see a progress report followed by a confirmation that the add-in was deployed. After you read the information, click **Next**.

   ![Deploy Report Message page](../../media/deploy-report-message-page.png)

9. On the **Announce add-in** page that appears, review the information, and then click **Close**.

   ![Announce add-in page](../../media/announce-add-in-page.png)

## Review or edit settings for the Report Message add-in

1. In the Microsoft 365 admin center, go to the go to the **Settings** \> **Add-ins** page at <https://admin.microsoft.com/AdminPortal/Home#/Settings/AddIns>. If you don't see the **Add-in** Page, go to the **Settings** \> **Integrated apps** \> **Add-ins** link on the top of the **Integrated apps** page.

   ![Services and Add-Ins page in the new Microsoft 365 Admin Center](../../media/ServicesAddInsPageNewM365AdminCenter.png)

2. Find and select the **Report Message** add-in.

3. In the **Edit Report Message** flyout that appears, review and edit settings as appropriate for your organization. When you're finished, click **Save**.

   ![Settings for the Report Message add-in](../../media/EditReportMessageAddIn.png)

## Get the Report Phishing add-in

### Get the add-in for yourself

1. Go to the Microsoft AppSource at <https://appsource.microsoft.com/marketplace/apps> and search for the Report Phishing add-in.

2. Click **GET IT NOW**.

3. In the dialog that appears, review the terms of use and privacy policy, and then click **Continue**.

4. Sign in using your work or school account (for business use) or your Microsoft account (for personal use).

After the add-in is installed and enabled, you'll see the following icons:

- In Outlook, the icon looks like this:

  ![Report Phishing add-in icon for Outlook](../../media/Outlook-ReportPhishing.png)

- In Outlook on the web, the icon looks like this:

  ![Outlook on the web Report Phishing add-in icon](../../media/OWA-ReportPhishing.png)

### Get the add-in for your organization

> [!NOTE]
> It could take up to 12 hours for the add-in to appear in your organization.

1. In the Microsoft 365 admin center, go to the go to the **Settings** \> **Add-ins** page at <https://admin.microsoft.com/AdminPortal/Home#/Settings/AddIns>. If you don't see the **Add-in** Page, go to the **Settings** \> **Integrated apps** \> **Add-ins** link on the top of the **Integrated apps** page.

2. Select **Deploy Add-in** at the top of the page, and then select **Next**.

   ![Services and add-ins page in the Microsoft 365 admin center](../../media/ServicesAddInsPageNewM365AdminCenter.png)

3. In the **Deploy a new add-in** flyout that appears, review the information, and then click **Next**.

4. On the next page, click **Choose from the Store**.

   ![Deploy a new add-in page](../../media/NewAddInScreen2.png)

5. In the **Select add-in** page that appears, click in the **Search** box, enter **Report Phishing**, and then click **Search** ![Search icon](../../media/search-icon.png). In the list of results, find **Report Phishing** and then click **Add**.

6. In the dialog that appears, review the licensing and privacy information, and then click **Continue**.

7. In the **Configure add-in** page that appears, configure the following settings:

   - **Assigned users**: Select one of the following values:

     - **Everyone** (default)
     - **Specific users / groups**
     - **Just me**

   - **Deployment method**: Select one of the following values:

     - **Fixed (Default)**: The add-in is automatically deployed to the specified users and they can't remove it.
     - **Available**: Users can install the add-in at **Home** \> **Get add-ins** \> **Admin-managed**.
     - **Optional**: The add-in is automatically deployed to the specified users, but they can choose to remove it.

   When you're finished, click **Deploy**.

8. In the **Deploy Report Phishing** page that appears, you'll see a progress report followed by a confirmation that the add-in was deployed. After you read the information, click **Next**.

9. On the **Announce add-in** page that appears, review the information, and then click **Close**.

## Review or edit settings for the Report Phishing add-in

1. In the Microsoft 365 admin center, go to the go to the **Settings** \> **Add-ins** page at <https://admin.microsoft.com/AdminPortal/Home#/Settings/AddIns>. If you don't see the **Add-in** Page, go to the **Settings** \> **Integrated apps** \> **Add-ins** link on the top of the **Integrated apps** page.

2. Find and select the **Report Phishing** add-in.

3. In the **Edit Report Phishing** flyout that appears, review, and edit settings as appropriate for your organization. When you're finished, click **Save**.

## View and review reported messages

To review messages that users report to Microsoft, you have these options:

- Use the Admin Submissions portal. For more information, see [View user submissions to Microsoft](admin-submission.md#view-user-submissions-to-microsoft).

- Create a mail flow rule (also known as a transport rule) to send copies of reported messages. For instructions, see [Use mail flow rules to see what your users are reporting to Microsoft](use-mail-flow-rules-to-see-what-your-users-are-reporting-to-microsoft.md).