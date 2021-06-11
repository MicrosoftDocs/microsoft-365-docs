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
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
description: "Manage feedback your users can send to Microsoft about Microsoft products."
---

# Manage Microsoft feedback for your organization

As the admin of a Microsoft 365 organization, there are now several policies to help you manage the feedback collection and the customer engagement experience of your users when using Microsoft 365 applications. You can create and use existing Azure Active directory groups in your organization for each of these policies. With these polices, you can control how different departments in your organization can send feedback to Microsoft. Microsoft reviews all feedback submitted by customers and uses this feedback to improve the product. Keeping the feedback experiences turned **On** allows you to see what your users are saying about the Microsoft products they're using. The feedback we collect from your users will soon be available in the Microsoft 365 admin center.

To learn more about the types of feedback and how Microsoft uses user feedback, see [Learn about Microsoft feedback for your organization](../misc/feedback-user-control.md).

The table below represents which apps and services are currently connected to the feedback policies shown in the feedback policies table below. See below the table for screenshot examples.

|**Apps & Services**|**In-product feedback** <br> |**In-product surveys** <br> |**Metadata collection** <br> |**Customer engagement** <br> |
|:-----|:-----|:-----|:-----|:-----|
|**Access**|Yes|Yes|Yes|Yes|
|**Excel**|Yes|Yes|Yes|Yes|
|**Office.com**|Coming soon|Coming soon|Coming soon|Coming soon|
|**OneNote**|Yes|Yes|Yes|Yes|
|**OneDrive**|[Some settings currently managed by other controls.](/onedrive/disable-contact-support-send-feedback)||||
|**Outlook**|Coming soon|Coming soon|Coming soon|Coming soon|
|**PowerPoint**|Yes|Yes|Yes|Yes|
|**Project**|Coming soon|Coming soon|Coming soon|Coming soon|
|**Publisher**|Yes|Yes|Yes|Yes|
|**SharePoint**|[Some settings currently managed by other controls.](/powershell/module/sharepoint-online/set-spotenant)||||
|**Teams**|[Some settings currently managed by other controls.](/microsoftteams/manage-feedback-policies-in-teams)||||
|**Word**|Yes|Yes|Yes|Yes|
|**Visio**|Yes|Yes|Yes|Yes|
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
|In-product feedback|At least 16.0.13328|At least 2.42|At least 16.0.13328|At least 16.42|Publicly available|
|In-product surveys|At least 16.0.13328|At least 2.42|At least 16.0.13426|At least 16.42|Pending rollout|
|Metadata collection|At least 16.0.13328|At least 2.42|At least 16.0.13328|At least 16.42|Publicly available|
|Customer engagement|At least 16.0.13328|At least 2.42|At least 16.0.13426|At least 16.42|Pending rollout|

## Specific policies you can configure

### Feedback policies

|**Policy name**|**Default state**|**Control summary**|
|:-----|:-----|:-----|
|Allow users to submit feedback to Microsoft|On|Controls feedback entry points across applications|
|Allow users to receive and respond to in-product surveys from Microsoft|On|Controls survey prompts within product|
|Allow users to include screenshots and attachments when they submit feedback to Microsoft|Off|Determines what metadata the user can decide to submit with feedback/survey|
|Allow Microsoft to follow up on feedback submitted by users|Off|Determines if user can share contact info with feedback/survey|
|Allow users to include log files and content samples when feedback is submitted to Microsoft|Off|Determines metadata the user can decide to submit with feedback/survey|

## Configure policies

1. Go to [https://config.office.com](https://config.office.com) and login as a user with global admin permissions.
1. Select **Customization** then **Policy Management**.
1. Select **Create**.
1. Enter **name** and **description**.
1. Choose the Azure Active directory groups that you want to configure.
1. Search for **Feedback** and **Survey**.
1. For each policy listed, set the value you want.

For more information, see [Overview of the Office cloud policy service](/deployoffice/overview-office-cloud-policy-service).

These policy settings are also available if you use Group Policy. To use these policy settings, download at least version 5146.1000 of the [Administrative Template files (ADMX/ADML)](https://www.microsoft.com/download/details.aspx?id=49030), released on March 22, 2021.

You can find these policy settings under User Configuration -> Policies -> Administrative Templates -> Microsoft Office 2016 -> Privacy -> Trust Center.

> [!NOTE]
> It takes a few hours for the client applications to update.
