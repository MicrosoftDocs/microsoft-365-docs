---
title: "Set up the Standard or Targeted release options"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: 3b3adfa4-1777-4ff0-b606-fb8732101f47
description: "Learn how to set up the release option for new product and features updates in the Microsoft 365 admin center."
---

# Set up the Standard or Targeted release options

> [!IMPORTANT]
> The Microsoft 365 updates described in this article apply to Microsoft 365, SharePoint Online, and Exchange Online. These release options are targeted, best effort ways to release changes to Microsoft 365 but cannot be guaranteed at all times or for all updates. They do not apply to Microsoft 365 Apps, Skype for Business, Microsoft Teams, and related services. For information about release options for Microsoft 365 Apps, see [Overview of update channels for Microsoft 365 Apps](/deployoffice/overview-update-channels).

With Microsoft 365, you receive new product updates and features as they become available instead of doing costly updates every few years. You can manage how your organization receives these updates. For example, you can sign up for an early release so that your organization receives updates first. You can designate that only certain individuals receive the updates. Or, you can remain on the default release schedule and receive the updates later. This article explains the different release options and how you can use them for your organization.

## How it works - release validation

Any new release is first tested and validated by the feature team, then by the entire Microsoft 365 feature team, followed by all of Microsoft. After internal testing and validation, the next step is a **Targeted release** (formerly known as First release) to customers who opt in. At each release ring, Microsoft collects feedback and further validates quality by monitoring key usage metrics. This series of progressive validation is in place to make sure the worldwide-release is as robust as possible. The releases are pictured in the following figure. 
  
![Release validation rings for Microsoft 365.](../../media/73611ed3-2d8c-4e7b-8074-9f03b239f9ed.png)
  
For significant updates, customers are initially notified by the [Microsoft 365 Roadmap](https://products.office.com/business/office-365-roadmap). As an update gets closer to rolling out, it is communicated through your [Microsoft 365 Message center](https://admin.microsoft.com/Adminportal/Home?source=applauncher#/MessageCenter).

> [!NOTE]
> You need a Microsoft 365 or Azure AD account to access your Message center through the [admin center](/office365/admin/admin-overview/admin-center-overview). Microsoft 365 home plan users do not have an admin center.

## Standard release

This is the default option where you and your users receive the latest updates when they're released broadly to all customers.
  
A good practice is to leave the majority of users in **Standard release** and IT Pros and power users in **Targeted release** to evaluate new features and prepare teams to support business users and executives. 
  
> [!NOTE]
> If you switch from targeted release back to standard release track, your users may lose access to features that haven't reached standard release yet. 
  
## Targeted release

With this option, you and your users can be the first to see the latest updates and help shape the product by providing early feedback. You can choose to have individuals or the entire organization receive updates early.
  
> [!IMPORTANT]
> - Large or complex updates may take longer than others so that no users are adversely affected. There is no guarantee on the exact timeline of a release.
> - Targeted release is not currently available for customers with either the Office 365 GCC plan or the Office 365 GCC High and DoD plan.
  
### Targeted release for entire organization

If you [Set up the release option in the admin center](#set-up-the-release-option-in-the-admin-center) for this option, all your users will get the Targeted release experience. For organizations with more than 300 users, we recommend using a test subscription for this option. For test subscription information, please reach out to your Microsoft contact. 
  
### Targeted release for selected users

If you [Set up the release option in the admin center](#set-up-the-release-option-in-the-admin-center) for this option, you can define specific users, usually power users, to receive early access to features and functionality.

> [!IMPORTANT]
> Some features only roll out on a per-organization basis. This means that the entire organization will receive access to the feature at the same time. For features like this, it’s not possible for selected users in the targeted release program to get the feature early. This means that your organization will not be able to receive these features early if you have configured selected users in targeted release. To make sure that you see all features in targeted release, you will need to configure targeted release for the entire organization or set up a test organization.
  
## Benefits of Targeted release

Targeted release allows admins, change managers, or anyone else responsible for Microsoft 365 updates to prepare for the upcoming changes by letting them:
  
- Test and validate new updates before they are released to all the users in the organization.
    
- Prepare user notification and documentation before updates are released worldwide.
    
- Prepare internal help-desk for upcoming changes.
    
- Go through compliance and security reviews.
    
- Use feature controls, where applicable, to control the release of updates to end users.
    
## Set up the release option in the admin center

You can change how your organization receives Microsoft 365 updates by following these steps. You have to be a global admin in Microsoft 365 to opt in.
  
> [!IMPORTANT]
> It can take up to 24 hours for the below changes to take effect in Microsoft 365. If you opt out of targeted release after enabling it, your users may lose access to features that haven't reached the scheduled release yet. 
  
1. In the admin center, go to the **Settings** > **Org Setting**, and under the <a href="https://go.microsoft.com/fwlink/p/?linkid=2067339" target="_blank">**Organization profile** tab</a>, choose **Release preferences**.

5. To disable targeted release, select **Standard release**, then select **Save changes**. 
    
6. To enable targeted release for all users in your organization, select **Targeted release for everyone**, then select **Save changes**. 
    
7. To enable targeted release for some people in your organization, select **Targeted release for selected users**, then select **Save changes**. 
    
8. Choose **Select users** to add users one at a time, or **Upload users** to add them in bulk.
    
9. When you're done adding users, select **Save changes**.
  
## Next steps

Discover how to [manage messages](/office365/admin/manage/message-center) in your [Microsoft 365 Message center](https://admin.microsoft.com/Adminportal/Home?source=applauncher#/MessageCenter) to get notifications about upcoming Microsoft 365 updates and releases.

## Related content

[Join the Office Insider Program](https://insider.office.com/join/windows) (article)
