---
title: "Microsoft product feedback and insights for your organization"
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

# Microsoft product feedback and insights for your organization

As the admin of a Microsoft 365 organization, there are now several policies to help you manage the feedback collection and the customer engagement experience of your users when using Microsoft 365 applications. You can create and use existing Azure Active directory groups in your organization for each of these policies. With these polices, you can control how different departments in your organization can send feedback to Microsoft. Microsoft reviews all feedback submitted by customers and uses this feedback to improve the product. Keeping the feedback experiences turned **On** allows you to see what your users are saying about the Microsoft products they're using. The feedback we collect from your users will soon be available in the Microsoft 365 admin center.

Better understanding of customer voice. An effective insight solution allows surfacing of customer issues quickly for large volume of customer feedback. 

Faster resolution of customer issues. Both IT admins and Microsoft desire to solve customer issues and increase productivity of the end user. Unsolicited feedback and survey responses are usually more in the moment and faster to resolve. However, the majority of customer pain points are usually solved via tickets, filed by admins.  

Incentive for customers to keep the surveys on. Due to GDPR requirements, Microsoft will release survey controls so that customers can turn on/off surveys and feedback as they wish. Project ProSight can potentially help customers solve issues in the moment and provide valuable insights from feedback data. This is an incentive to keep the surveys on so both Microsoft and customer can work together to improve end users productivity and experience.  

Improving NPS by addressing end user and admin feedback closer to the source. With Admins having ‘line of sight’ to their end user feedback, and addressing them before filing tickets, it is hypothesized that we can improve NPS for both admins and end users.  

As an employee experience manager or IT admin, I want to understand the key issues that users in my organization are facing when they use Microsoft 365 products, so that I can work with Microsoft address them. I should be able to obtain this insight from NPS surveys that Microsoft collected, in the Admin Center portal.  

I should be able to see what NPS surveys are available 

I should be able to see insights for each survey, and for each survey, 

I should be able to see the geo locations of the users who have submitted feedback 

I should be able to see the responses per OS or platform 

I should be able to see total counts, and trend lines for the past 6 months. There is no customer data at present to support longer or shorter trends, so it is  

I should be able to see verbatim feedback, the top topics for those verbatim feedback if available, and be able to search with keywords.  

I should be able to select and filter on date, NPS surveys, product, platform, and build/version 

I should be able to export the data as a raw csv file.  

I should be able to see the contact information for the user who submitted the response if they provided contact information and allowed contact when they filled out the survey.

I should be able to see feedback from different audiences, including admins and end users.  

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

1. Go to [https://config.office.com](https://config.office.com) and login.
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
