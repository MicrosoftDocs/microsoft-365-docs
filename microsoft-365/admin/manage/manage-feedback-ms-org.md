---
title: "Manage Microsoft feedback for your organization"
f1.keywords:
- NOCSH
ms.author: Kwekua
author: Kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- admindeeplinkMAC
search.appverid:
- BCS160
- MET150
- MOE150
description: "Manage feedback your users can send to Microsoft about Microsoft products."
---

# Manage Microsoft feedback for your organization

As the admin of a Microsoft 365 organization, there are now several policies to help you manage the feedback collection and the customer engagement experience of your users when using Microsoft 365 applications. You can create and use existing Azure Active directory groups in your organization for each of these policies. With these polices, you can control how different departments in your organization can send feedback to Microsoft. Microsoft reviews all feedback submitted by customers and uses this feedback to improve the product. Keeping the feedback experiences turned **On** allows you to see what your users are saying about the Microsoft products they're using. The feedback we collect from your users is available in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

To learn more about the types of feedback and how Microsoft uses user feedback, see [Learn about Microsoft feedback for your organization](../misc/feedback-user-control.md).

The table below represents which apps and services are currently connected to the feedback policies shown in the feedback policies table below. See below the table for screenshot examples.

|**Apps & Services**|**In-product feedback** <br> |**In-product surveys** <br> |**Metadata collection** <br> |**Customer engagement** <br> |
|:-----|:-----|:-----|:-----|:-----|
|**Access**|Yes|Yes|Yes|Yes|
|**Excel**|Yes|Yes|Yes|Yes|
|**Forms**|Yes|Yes|Yes|Yes|
|**Intune Company Portal (Android)**|Yes|Yes|Yes|Yes|
|**Microsoft Stream (Android, iOS)**|Yes|Yes|Yes|Yes|
|**Microsoft Whiteboard**|Yes|Yes|Yes|Yes|
|**Office.com**|Yes|Yes|Yes|Yes|
|**OneNote**|Yes|Yes|Yes|Yes|
|**OneDrive**|[Some settings currently managed by other controls.](/onedrive/disable-contact-support-send-feedback)||||
|**Outlook (Web, iOS)**|Coming soon|Coming soon|Coming soon|Coming soon|
|**Outlook (Desktop, Android, Mac)**|Yes|Yes|Yes|Yes|
|**PowerPoint**|Yes|Yes|Yes|Yes|
|**Project**|Yes|Yes|Yes|Yes|
|**Publisher**|Yes|Yes|Yes|Yes|
|**SharePoint**|[Some settings currently managed by other controls.](/powershell/module/sharepoint-online/set-spotenant)||||
|**Teams**|[Some settings currently managed by other controls.](/microsoftteams/manage-feedback-policies-in-teams)||||
|**To Do**|Yes|Yes|Yes|Yes|
|**Word**|Yes|Yes|Yes|Yes|
|**Visio**|Yes|Yes|Yes|Yes|
|**Viva Goals**|Yes|Yes|Yes|Yes|
|**Viva Insights**|Yes|Yes|Yes|Yes|
|**Whiteboard**|Yes|Yes|Yes|Yes|
|**Yammer**|Yes|Yes|Yes|Yes|

[See here for some examples of in-product surveys and feedback.](/microsoft-365/admin/misc/feedback-user-control#in-product-surveys)

**Metadata collection**

:::image type="content" source="../../media/feedback-metadata2.png" alt-text="Screenshot: Feedback page showing metadata example":::

**Customer engagement**

:::image type="content" source="../../media/feedback-in-product-customer-engagement.png" alt-text="Screenshot: In-product customer research question example":::

## Before you begin

Your devices must be on a minimum build number to use these policies. See the table below for more information.

|**Build #**|**Win32**|**iOS**|**Android**|**Mac**|**Web**|
|:-----|:-----|:-----|:-----|:-----|:-----|
|In-product feedback|At least Version 2010|At least 2.42|At least 16.0.13328|At least 16.42|Publicly available|
|In-product surveys|At least Version 2010|At least 2.42|At least 16.0.13426|At least 16.42|Pending rollout|
|Metadata collection|At least Version 2010|At least 2.42|At least 16.0.13328|At least 16.42|Publicly available|
|Customer engagement|At least Version 2010|At least 2.42|At least 16.0.13426|At least 16.42|Pending rollout|

## Specific policies you can configure

### Feedback policies

|**Policy name**|**Default state**|**Control summary**|
|:-----|:-----|:-----|
|Allow users to access feedback portal|On|Manage user access to the feedback portal|
|Allow users to submit feedback to Microsoft|On|Controls feedback entry points across applications|
|Allow users to receive and respond to in-product surveys from Microsoft|On|Controls survey prompts within product|
|Allow users to include screenshots and attachments when they submit feedback to Microsoft|Off|Determines what metadata the user can decide to submit with feedback/survey|
|Allow Microsoft to follow up on feedback submitted by users|Off|Determines if user can share contact info with feedback/survey|
|Allow users to include log files and content samples when feedback is submitted to Microsoft|Off|Determines metadata the user can decide to submit with feedback/survey|

> [!NOTE]
> The **Allow users to access the feedback portal** policy is a cloud policy. This policy is not defined in ADMX and does not have a corresponding registry key available to set the policy. You should create a cloud policy to enforce it. This is a cloud policy because the feedback portal is a web application that makes a call to the cloud policy service, which is also a web application, requesting the policies for the person who signs in. If this policy is configured, the feedback portal will receive the configured policy value in the response from the cloud policy service.

## Configure policies

To configure these policy settings, you can use the Office cloud policy service. For more information, see [Overview of the Office cloud policy service](/deployoffice/overview-office-cloud-policy-service). You can search for "feedback" or "survey" within the Office cloud policy service UI to find the policy settings to configure them. 

These policy settings are also available if you use Group Policy. To use these policy settings, download at least version 5146.1000 of the [Administrative Template files (ADMX/ADML)](https://www.microsoft.com/download/details.aspx?id=49030), released on March 22, 2021.

You can find these policy settings under User Configuration\Policies\Administrative Templates\Microsoft Office 2016\Privacy\Trust Center.

> [!NOTE]
> It takes a few hours for the client applications to update.
