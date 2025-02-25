---
title: "Manage and monitor priority accounts"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 10/01/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- admindeeplinkMAC
description: "Monitor failed and delayed emailed messages sent to or from accounts who have high business impact."
---

# Manage and monitor priority accounts

In every Microsoft 365 organization, there are people that are essential, like executives, leaders, managers, or other users who have access to sensitive, proprietary, or high priority information.

To help your organization protect these accounts, you can now designate specific users as priority accounts and leverage app-specific features that provide them with extra protection. In the future, more apps and features will support priority accounts, and to start with, we've announced two capabilities: **priority account protection** and **Exchange Online priority account monitoring** including **premium mail flow monitoring**.

- **Priority account protection** - Microsoft Defender for Office 365 supports priority accounts as tags that can be used in filters in alerts, reports, and investigations. For more information, check out [User tags in Microsoft Defender for Office 365](../../security/office-365-security/user-tags-about.md).

  A natural question is, "Aren't all users a priority? Why not designate all users as priority accounts?" Yes, all users are a priority, but priority account protection offers the following additional benefits:

  - **Additional heuristics**: Our analysis of mail flow in the Microsoft datacenters indicates that mail flow patterns for company executives are different than the average employee. Priority account protection offers additional heuristics that are specifically tailored to company executives that wouldn't benefit a regular employee.
  - **Additional visibility in reporting**: In effect, information for all users (or all affected users) is already available in alerts, reports, and investigations. The priority accounts tag as a filter allows you to specifically target your investigations.

- **Exchange Online priority account monitoring** - Making sure core functionalities of Exchange Online run smoothly is important for priority account users. Scenarios such as Exchange licensing, Mailbox storage, Message limit, subfolders per folder, folder hierarchy and recoverable items can be monitored. For more information, check out [Exchange Online monitoring for Microsoft 365](../../enterprise/microsoft-365-exchange-monitoring.md).

- **Premium Mail Flow Monitoring** - Healthy mail flow can be critical to business success, and delivery delays or failures can have a negative impact on the business. You can choose a threshold for failed or delayed emails, receive alerts when that threshold is exceeded, and view a report of email issues for priority accounts. For more information, check out [Email issues for priority accounts report in the modern EAC](/exchange/monitoring/mail-flow-reports/mfr-email-issues-for-priority-accounts-report)

For security best practices for priority accounts, see [Security recommendations for priority accounts](../../security/office-365-security/priority-accounts-security-recommendations.md).

## Before you begin

The **Priority account protection** feature that's described in this topic is available only to organizations that meet the following requirements:

- Microsoft Defender for Office 365 Plan 2, including those with Office 365 E3, Office 365 E5, Microsoft 365 E5, or Microsoft 365 E5 Security.

The **Exchange Online priority account monitoring** and **Premium mail flow monitoring** features that are described in this topic is available only to organizations that meet the following requirements:

- Your organization needs to have a license count of at least 5,000, from either one of, or a combination of the following products: Office 365 E3, Microsoft 365 E3, Office 365 E5, Microsoft 365 E5. For example, your organization can have 3,000 Office 365 E3 licenses and 2,500 Microsoft 365 E5, for a total of 5,500 licenses from the qualifying products.
- Your organization needs to have at least 50 monthly active users for one or more core workloads – Teams, OneDrive for Business, SharePoint Online, Exchange Online and Microsoft 365 productivity apps.

> [!NOTE]
> You can monitor up to 250 priority accounts.

When you apply priority account protection to a mailbox, you should also apply priority account protection to users who have access to the mailbox (for example, the CEO and the CEO's executive assistant who manages the CEO's calendar).

<a name='add-priority-accounts-from-the-microsoft-365-defender-page'></a>

### Add priority accounts from the Microsoft Defender XDR page

Add priority accounts from the **Microsoft Defender XDR page**.

1. Go to  Microsoft Defender XDR at <a href="https://security.microsoft.com/" target="_blank">https://security.microsoft.com/</a>.

2. Go to **Settings** > **Email and Collaboration** > **User Tags** > **Create**.

3. The priority account tag is already created for you by default. By selecting **Edit** you can add users to the priority tag. Then, **Add members** > **Add** to add members to the priority account.

4. Select **Next** and  **Submit**.

You can also add priority accounts from the Active users page.

### Add priority accounts from Active users page

Add priority accounts from the Active users page.

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a>.

2. Go to **Users** > **Active users** and select the three dots (more actions) at the top of the page. Select **Manage priority accounts**.

3. Select **Add accounts**, and on the **Add Priority accounts** page, in the search field, type the name of the person you want to add to the priority accounts list.

4. Select the user and choose **Save**.

## Remove a user from the priority accounts list

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a>.

2. Go to **Setup** > **Organizational knowledge**, and choose **View** under **Monitor your most important accounts**.

3. On the **Monitor your most accounts** page, choose **Priority accounts** under **Manage this feature**.

4. On the **Priority accounts** page, select the user or users you want to remove from the list and choose, **Remove accounts**.

## Related topics

[Using Priority Accounts in Microsoft 365](https://techcommunity.microsoft.com/t5/microsoft-365-blog/using-priority-accounts-in-microsoft-365/ba-p/1873314)
