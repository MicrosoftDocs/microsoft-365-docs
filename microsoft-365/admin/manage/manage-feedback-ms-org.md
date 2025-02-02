---
title: "Manage Microsoft feedback for your organization"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 11/19/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- admindeeplinkMAC
description: "Manage feedback your users can send to Microsoft about Microsoft products."
---

# Manage Microsoft feedback for your organization

As the admin of a Microsoft 365 organization, there are several policies to help you manage the feedback collection and the customer engagement experience of your users when using Microsoft 365 applications. You can create and use existing Microsoft Entra groups in your organization for each of these policies. With these policies, you can control how different departments in your organization can send feedback to Microsoft.

Microsoft reviews all feedback submitted by customers and uses this feedback to improve the product experiences for users, including by improving the quality of AI-generated responses and troubleshooting product issues. Keeping the feedback experiences enabled allows you to see what your users are saying about the Microsoft products they're using. The feedback we collect from your users is available in the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=2024339).

> [!NOTE]
> Microsoft acts as a data processor for your tenant's feedback. As the tenant administrator, you can manage your tenant's feedback in the Microsoft 365 admin center. For more information, see [How can I see my user's feedback?](../misc/feedback-user-control.md#how-can-i-see-my-users-feedback)

To learn more about the types of feedback and how Microsoft uses user feedback, see [Learn about Microsoft feedback for your organization](../misc/feedback-user-control.md).

The following table represents which apps and services are currently connected to the feedback policies shown in the [Feedback policies table](#feedback-policies). For examples of in-product feedback and surveys, see [Feedback types](/microsoft-365/admin/misc/feedback-user-control#feedback-types).

|**Apps & Services**|**In-product feedback** |**In-product surveys**|**Metadata collection** |**Customer engagement** |
|:-----|:-----|:-----|:-----|:-----|
|**Access**|Yes|Yes|Yes|Yes|
|**Clipchamp**|Yes|Yes|Yes|No|
|**Excel**|Yes|Yes|Yes|Yes|
|**Forms**|Yes|Yes|Yes|Yes|
|**Intune Company Portal (Android)**|Yes|Yes|Yes|Yes|
|**Microsoft Stream (Android, iOS)**|Yes|Yes|Yes|Yes|
|**Microsoft Whiteboard**|Yes|Yes|Yes|Yes|
|**Microsoft365.com**|Yes|Yes|Yes|Yes|
|**OneNote**|Yes|Yes|Yes|Yes|
|**OneDrive**|Some settings are managed by other controls. For more information, see [Prevent users from contacting Microsoft directly](/onedrive/disable-contact-support-send-feedback).||||
|**Outlook**|Yes|Yes|Yes|Yes|
|**PowerPoint**|Yes|Yes|Yes|Yes|
|**Project**|Yes|Yes|Yes|Yes|
|**Publisher**|Yes|Yes|Yes|Yes|
|**SharePoint**|Yes|Yes|Yes|Yes|
|**Teams**|Some settings are managed by other controls. For more information, see [Manage feedback policies in Microsoft Teams](/microsoftteams/manage-feedback-policies-in-teams).||Yes||
|**To Do**|Yes|Yes|Yes|Yes|
|**Word**|Yes|Yes|Yes|Yes|
|**Visio**|Yes|Yes|Yes|Yes|
|**Viva Connections**|Yes|No|Yes|Yes|
|**Viva Engage**|Yes|Yes|Yes|Yes|
|**Viva Glint**|Yes|Yes|Yes|Yes|
|**Viva Goals**|Yes|Yes|Yes|Yes|
|**Viva Insights**|Yes|Yes|Yes|Yes|
|**Viva Pulse**|Yes|Yes|Yes|Yes|

## Feedback policies

> [!IMPORTANT]
> If you’re an admin in a United States government environment, see the [Feedback policies in United States government environments](#feedback-policies-in-united-states-government-environments) section later in this article.

When the following policies are set to **Not Configured**, it has the same effect as if you set the policies to **Enabled**.

|**Policy name**|**Control summary**|
|:-----|:-----|:-----|
|Allow users to access feedback portal|Manage user access to the feedback portal where users can follow up on their feedback and participate in community feedback.|
|Allow users to submit feedback to Microsoft|Controls feedback entry points across applications.|
|Allow users to receive and respond to in-product surveys from Microsoft|Controls survey prompts within product.|
|Allow users to include screenshots and attachments when they submit feedback to Microsoft|Allows users to choose relevant files, screen recordings, and screenshots to help Microsoft better understand and troubleshoot their feedback.|
|Allow Microsoft to follow up on feedback submitted by users|Determines if user can share contact info with feedback/survey for follow-up by Microsoft. Also allows users to get notified of feedback status changes. Users can manage communications settings in the feedback portal.|
|Allow users to include log files and content samples when feedback is submitted to Microsoft|Allows users to include Microsoft generated files such as additional log files and content samples when relevant to feedback they're submitting. Examples may include Microsoft 365 Copilot prompt and response interactions.|

> [!NOTE]
> The **Allow users to access the feedback portal** policy is only available in Cloud Policy service for Microsoft 365. This policy isn't available in Group Policy and doesn't have a corresponding registry key available to set the policy.

## Configure policies

To configure these policy settings, you can use Cloud Policy service for Microsoft 365. For more information, see [Overview of Cloud Policy service for Microsoft 365](/microsoft-365-apps/admin-center/overview-cloud-policy). You can search for "feedback" or "survey" within Cloud Policy UI to find the policy settings to configure them.

These policy settings are also available if you use Group Policy. To use these policy settings, download the most current version of the [Administrative Template files (ADMX/ADML)](https://www.microsoft.com/download/details.aspx?id=49030). You can find these policy settings under User Configuration\Policies\Administrative Templates\Microsoft Office 2016\Privacy\Trust Center.

> [!NOTE]
> After you apply policies, it can take a few hours for the client applications to update.

## Feedback policies in United States government environments

The following information only applies to United States government customers using Microsoft 365 (or Office 365) Government Community Cloud (GCC), GCC High, or DoD offerings.

### GCC environment

- Cloud Policy service for Microsoft 365 is available in this environment as of September 24, 2024.
- Not all products currently support feedback collection in this environment, but we're working to implement that support. To prepare for feedback collection, we recommend you review and configure the policy settings in the way that is appropriate for your organization.
- When the **Allow users to submit feedback to Microsoft** policy is set to **Not Configured** in this environment, it has the same effect as if you set the policy to **Disabled**.
- The Feedback portal and in-product surveys aren’t available in this environment, so setting these policies won’t have any effect at this time.
- The following policies are always treated as **Disabled** in this environment regardless of how you set the policies:
  - Allow users to include screenshots and attachments when they submit feedback to Microsoft
  - Allow Microsoft to follow up on feedback submitted by users
  - Allow users to include log files and relevant content samples when feedback is submitted to Microsoft.

### GCC High or DoD environment

- Feedback collection isn’t enabled in these environments, so setting these feedback policies with Group Policy has no effect.
- Cloud Policy service for Microsoft 365 isn’t available in these environments.