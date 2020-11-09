---
title: "Manage and monitor priority accounts"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- Adm_O365
ms.custom: AdminSurgePortfolio
description: "Monitor failed and delayed emailed messages sent to or from accounts who have high business impact."
---

# Manage and monitor priority accounts

As the admin of a Microsoft 365 organization, you have people that are essential to running your organization, like executives, leaders, managers or other users who have access to sensitive or high priority information.

To help your organization protect these accounts, you can now tag specific users as priority accounts and leverage app-specific features designed for them: priority account protection and premium mail flow monitoring.

- **Priority account protection** - Microsoft Defender for Office 365 (formerly Office 365 Advanced Threat Protection) supports priority accounts as system tags that can be used in filters in alerts, reports, and investigations. For more information, check out [User tags in Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/user-tags?view=o365-worldwide).
- **Premium Mail Flow Monitoring** - Healthy mail flow can be critical to business success, and delivery delays or failures can have a negative impact on the business. You can monitor mail flow for up to 250 priority accounts. You can choose a threshold for failed or delayed emails, receive alerts when that threshold is exceeded, and view a report of email issues for priority accounts. For more information, check out [Email issues for priority accounts report in the modern EAC](https://docs.microsoft.com/en-us/exchange/monitoring/mail-flow-reports/mfr-email-issues-for-priority-accounts-report).

## Before you begin

The **Priority account protection** feature that's described in this topic is available only to organizations that meet the following requirements:

- Office 365 ATP Plan 1 or Plan 2.

The **Premium Mail Flow Monitoring** feature that's described in this topic is available only to organizations that meet both of the following requirements:

- Office 365 E3 or Microsoft 365 E3, or Office 365 E5 or Microsoft 365 E5.
- At least 10,000 licenses and at least 50 monthly active Exchange Online users.

### Add priority accounts from the Setup page

Add priority accounts from the **Setup page**.

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.

2. Go to **Setup** > **Organizational knowledge**, and choose **View** under **Monitor your most important accounts**.

3. Select **Get Started** or **Manage**.

4. On the **Add Priority accounts** page, in the search field, type the name or email address of the person you want to add to the priority accounts list. You can also set your email threshold for failed or delayed emails and get a weekly report of issues for priority accounts.

5. Select the user and choose **Save**.

You can also add priority accounts from the Active users page.

### Add priority accounts from Active users page

Add priority accounts from the Active users page.

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.

2. Go to **Users** > **Active users**, and choose **...** at the top of the page. Select **Manage priority accounts**.

3. Select **Add accounts**, and on the **Add Priority accounts** page, in the search field, type the name of the person you want to add to the priority accounts list.

4. Select the user and choose **Save**.

## Monitor your priority accounts

You can monitor the email status of your priority accounts in the Microsoft 365 admin center on the **Setup** page. You can actively monitor up to 250 accounts.

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.

2. Select **Setup** and choose **View** next to **Premium Monitoring** to see the status of your priority accounts.

## Email issues for priority accounts

You can track email issues for priority accounts by going to the the **Email issues for priority accounts** report in the Exchange admin center. For more info, check out [Email issues for priority accounts](https://docs.microsoft.com/exchange/monitoring/mail-flow-reports/mfr-email-issues-for-priority-accounts-report).

## Remove a user from the priority accounts list

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.

2. Go to **Setup** > **Organizational knowledge**, and choose **View** under **Monitor your most important accounts**.

3. On the **Monitor your most accounts** page, choose **Priority accounts** under **Manage this feature**.

4. On the **Priority accounts** page, select the user or users you want to remove from the list and choose, **Remove accounts**.

## Related topics
Link to blog.