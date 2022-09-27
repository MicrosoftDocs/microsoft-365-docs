---
title: "What's new in the Microsoft 365 admin center?"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: overview
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
search.appverid:
- MET150
- MOE150
- FRP150
ms.custom: 
- MACDashWhatsNew
- AdminSurgePortfolio
- admindeeplinkMAC
description: "The Microsoft 365 admin center - learn about the features that were added this month."
---

# What's new in the Microsoft 365 admin center

::: moniker range="o365-21vianet"

> [!NOTE]
> Some of the information in this article might not apply to Office 365 operated by 21Vianet.

::: moniker-end

We're continuously adding new features to [the Microsoft 365 admin center](admin-overview/admin-center-overview.md), fixing issues we learn about, and making changes based on your feedback. Some features get rolled out at different speeds to our customers. If you aren't seeing a feature yet, [try adding yourself to targeted release](manage/release-options-in-office-365.md).

And if you'd like to know what's new with other Microsoft cloud services:

- [What's new in Azure Active Directory](/azure/active-directory/fundamentals/whats-new)
- [What's new in the Exchange admin center](/Exchange/whats-new)
- [What's new in Microsoft Intune](/mem/intune/fundamentals/whats-new)
- [What's new in the Microsoft Purview compliance portal](/Office365/SecurityCompliance/whats-new)
- [What's new in Microsoft 365 Defender](../security/mtp/whats-new.md)
- [What's new in the SharePoint admin center](/sharepoint/what-s-new-in-admin-center)
- [Office updates](/OfficeUpdates/)
- [How to check Windows release health](/windows/deployment/update/check-release-health)

## August 2022

### Date filter in the Net Promoter Score (NPS) survey insights dashboard

Based on your feedback, we are introducing a new function in the NPS survey insights dashboard that allows Admins like you to filter the Net Promoter Score (NPS) data and insights per date, so that you can access details based on your date range preference.

With this change, you will be able to look at the NPS survey insights based on the following date ranges:

- Past 30 days
- Past 90 days
- Past 180 days

To access, go to **Health** > **Product feedback** > **NPS survey insights tab**.

:::image type="content" source="../media/nps-date-filter.png" alt-text="Screenshot: Date filter in the NPS survey insights dashboard" lightbox="../media/nps-date-filter.png":::

Learn more about [NPS survey insights](/microsoft-365/admin/manage/manage-feedback-product-insights).

For questions or feedback related to NPS survey insights, contact us at Prosight@microsoft.com.


## July 2022

### Multi-tenant billing relationships

You can now create multi-tenant billing relationships with other tenants. A multi-tenant billing relationship lets you securely share your organization's billing account with other tenants, while maintaining control over your billing data.

This feature is available to organizational account customers with a Microsoft Customer Agreement.

For more information, see [Manage billing across multiple tenants in the Microsoft 365 admin center](../commerce/billing-and-payments/manage-multi-tenant-billing.md).

## May 2022

### Role based access controls (RBAC)

There are four new roles in the Microsoft 365 admin center for management of custom security attributes. These roles are available for everyone to use in the Microsoft 365 admin center under **Roles**.

- **Attribute Assignment Administrator**   Assign custom security attribute keys and values to supported Azure AD objects.

- **Attribute Assignment Reader**   Reads custom security attribute keys and values for supported Azure AD objects.

- **Attribute Definition Administrator**   Define and manage the definition of custom security attributes.

- **Attribute Definition Reader**   Reads the definition of custom security attributes.

There's also a new role that allows you to give admins only the access they need to manage Virtual Visits.

- **Virtual Visits Administrator**   Manage and share Virtual Visits information and metrics from admin centers or the Virtual Visits app.

For more information about these roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).

### Quick Assist

We've moved Quick Assist to the Windows Store to enhance the performance and security of the app. The Windows Quick Assist app allows you and your end-users to receive or provide PC assistance over a remote connection.

With the new Quick Assist Store app, you should see a significant improvement in passcode generation times and a reduction in application errors.

For more information, see [Solve PC problems over a remote connection](https://support.microsoft.com/windows/solve-pc-problems-over-a-remote-connection-b077e31a-16f4-2529-1a47-21f6a9040bf3) and [Install Quick Assist](https://support.microsoft.com/windows/install-quick-assist-c17479b7-a49d-4d12-938c-dbfb97c88bca)

## April 2022

### NPS Sentiment Insights

NPS survey insights is an AI-driven dashboard available in the Microsoft 365 admin center.

In the admin center, go to **Health** > **Product feedback** > **NPS survey insights**.

This feature helps admins like you obtain actionable insights derived from Microsoft NPS surveys your users have responded to. Learn more at [Microsoft product NPS feedback and insights for your organization](manage/manage-feedback-product-insights.md).

Based on your feedback, we're introducing a new feature that identifies the sentiment for each NPS verbatim feedback, so that you can learn what your users are feeling regarding Microsoft 365 products. Sentiment labels such as **Positive**, **Negative** and **Other** are assigned to the NPS verbatim feedback.

:::image type="content" source="../media/product-feedback-nps-verbatims.png" alt-text="Screenshot: Product feedback dashboard on the NPS surveys insights tab":::

With the sentiment feature on the NPS survey insights dashboard you'll be able to:

- Visualize sentiment trend for the last 12 months based on the NPS verbatim feedback.

- Identify the sentiment per app and platform.

Three sentiments are available:

:::image type="content" source="../media/sentiment-examples.png" alt-text="Screenshot: Sentiment examples and descriptions":::

To provide you with a better experience using the NPS survey insight dashboard, we suggest checking the following items:

- Encourage your users to submit feedback.

- Confirm [in-product survey policies](https://config.office.com) are enabled.

- Improve diagnosability by enabling [Windows Error Reporting](/windows/win32/wer/windows-error-reporting).

> [!NOTE]
> If you're an enterprise customer and you're interested in joining our design sessions, send us an email at: prosight@microsoft.com

### Microsoft 365 admin center search

You can now view all search results in a separate browser page by searching in global search and selecting **Enter**.

With our new separate page of search results, you can explore a more comprehensive list of results and easily return to the browser page for a more efficient search experience.

:::image type="content" source="../media/whats-new-search-page.png" alt-text="Screenshot: New Microsoft 365 admin center browser search page":::

### Search in distribution lists to add Priority Accounts

Previously, you could only tag priority accounts by searching for them using the person's name, e-mail address or job title. With this update, you can now search for people to add to priority accounts in a distribution list. This allows you to bulk add people in an efficient way and reduces the time needed to tag individual people in your organization.

:::image type="content" source="../media/search-by-distribution-list-priority-accounts.png" alt-text="Screenshot: Search for priority accounts to add using a distribution list":::

- You can tag up to 50 users from a distribution list as priority accounts in a single action.

- Additional information about the user like department and job title has been introduced on the Priority Accounts page.

- You can only tag user accounts within distribution lists, and not the list itself. Users who have already been tagged won’t show up in your distribution list search.

## March 2022

### Microsoft 365 Lighthouse GA

Small and medium businesses often rely on trusted IT partners to manage their IT environments. We’re making it easier for partners to secure customers at scale with the general availability of [Microsoft 365 Lighthouse](https://aka.ms/March1SMBPartnerBlog), a multi-tenant administration portal for Managed Service Providers (MSPs). Microsoft 365 Lighthouse provides a complete experience for customers by empowering their partners to quickly identify and act on threats, anomalous sign-ins, and device compliance alerts to keep them safe.

:::image type="content" source="../media/lighthouse.png" alt-text="Screenshot: Microsoft 365 Lighthouse dashboard":::

Microsoft 365 Lighthouse is an IT partner service only, and it’s available to partners who are enrolled in the Cloud Solution Provider (CSP) program and are managing customers who have up to 1000 licensed users with Microsoft 365 Business Premium, Microsoft 365 E3, or Microsoft Defender for Business (in preview) subscriptions. If you’re a Microsoft CSP-enrolled IT Partner, Microsoft 365 Lighthouse is available at no cost to your organization and is designed to help your business scale and grow. Check out the [Microsoft 365 Lighthouse help library](../lighthouse/m365-lighthouse-overview.md) for more information.

To get started using Microsoft 365 Lighthouse, see [Sign up for Microsoft 365 Lighthouse](../lighthouse/m365-lighthouse-sign-up.md). To learn more about Microsoft 365 Lighthouse, Defender for Business, and Microsoft 365 Business Premium, [join us for our Partner webinar series](https://aka.ms/M365MDBSeries).

## February 2022

### Net promoter score (NPS) survey insights

You can now view NPS survey data and insights from your users in the Microsoft 365 admin center. With this new feature you can obtain actionable insights from NPS survey responses from your end users, and achieve higher end user delight by addressing any issues and concerns.

In the admin center, go to **Health** > **Product feedback** > **NPS survey insights**.

:::image type="content" source="../media/feedback-whatsnew.png" alt-text="Screenshot: Showing the Feedback page in the Microsoft 365 admin center":::

We've identified the common themes from user feedback. Then we used machine learning models techniques to train the data sets and automatically organize the feedback into Top Topics.

There are nine topics available. Look out for more topics in future updates.

:::image type="content" source="../media/feedback-nine-topics.png" alt-text="Screenshot: Showning the 9 new feedback topics":::

The NPS survey insight dashboard also contains these three new reports and pivots:

- NPS monthly NPS trend volume for the last 12 months
- Able to identify passives, promoters, and detractors
- NPS volume per platform and app

To provide you with a better experience using the NPS survey insight dashboard:

- Encourage your end users to submit feedback
- Confirm in-product surveys policies are enabled
- Improve diagnosis by turning on Windows Error Reporting

Learn more at [Microsoft product NPS feedback and insights for your organization](manage/manage-feedback-product-insights.md).  

> [!NOTE]
> If you're interested in joining our design sessions, send us an email at: prosight@microsoft.com

### Microsoft 365 admin center video training

We've updated our Microsoft 365 admin center video training. Go to the [Admin training video library](https://go.microsoft.com/fwlink/?linkid=2197659) page to learn how to set up and manage Microsoft 365 for your business.

:::image type="content" source="../media/admin-library-vid-training.png" alt-text="Screenshot: Showing the admin center video training library":::

## July 2021

### Microsoft 365 admin center search

You can now search for incident IDs in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2091030" target="_blank">Microsoft 365 admin center</a>. You may learn about current incidents through social media, industry publications or from other admins. You can now go to the admin center to look up more details about the incident and to understand the impact to your organization. Just search for the incident ID in the admin center.

:::image type="content" source="../media/incident-id.png" alt-text="Screenshot: Searching for incident ID in the admin center":::

### Support ticket insight for Premier organizations

We've added 2 graphs called **Volume trend** and **Volume trend by product** to give you visual insights about your support volume.

The liner graph under **Volume trend** tab highlights the trend if support cases are increasing or decreasing for your organization month over month. You can hover on the graph to check the number of support cases created in each month.

:::image type="content" source="../media/SuppInsight-voltrnd.PNG" alt-text="Screenshot: Graph that highlights the trend if support cases are increasing or decreasing for your organization month over month":::

The **Volume trend by product** graph shows the top 3 products of each month with the highest support cases. We've enabled filtering in the table and you can now filter the results by **Product**, **Severity**, and **Date**.

:::image type="content" source="../media/SuppInsight-voltrndproduct.PNG" alt-text="Screenshot: Graph shows the top 3 products of each month with the highest support cases":::

We've also added 2 new fields, **Severity** and **Closed Date** in the **View Service Request** table to give you more insights about your tickets.

:::image type="content" source="../media/SuppInsight-date-sev.PNG" alt-text="Screenshot: Table that shows support ticket sorting by severity and date.":::

To check out these updates in <a href="https://go.microsoft.com/fwlink/p/?linkid=2166757" target="_blank">Microsoft 365 admin center</a>, go to **Support** > **View Service requests** in left navigation pane.

## June 2021

### Microsoft 365 admin center search

We've added a couple of new categories to Search functionality.

- You can now search for Microsoft 365 admin roles in global search and quickly view and manage role assignments from any page. For example, search for **Intune administrator**.

- You can now find simplified setup experiences through global search. This can help you and your team quickly get started with how to use new features. For example, search for **set password to never expire**.

To learn more about search in the admin center, see [Search in the Microsoft 365 admin center](manage/search-in-the-mac.md).
