---
title: "Learn about regulations in Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/01/2023
audience: Admin
ms.topic: article
ms.custom: admindeeplinkMAC
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- tier1
search.appverid: 
- MOE150
- MET150
description: "Understand how to use and manage regulatory templates for building assessments in Microsoft Purview Compliance Manager."
---

# Learn about regulations in Compliance Manager


> [!IMPORTANT]
> The regulations that are available for your organization's use by default depend on your licensing agreement. [Review licensing details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-compliance-manager).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Regulations overview

The **Regulations** tab displays the list of regulations and certifications for which Compliance Manager provides control-mapping templates. When you build an assessment, you choose the underlying regulation by selecting from among our [set of regulatory templates](compliance-manager-templates-list.md), then select the services you want to assess for that regulation. Setting up Compliance Manager for multicloud support provides you with greater automation in testing and monitoring of controls.

Each regulatory template also comes in a universal version, which provides general control mapping that can broadly apply to services. Universal templates provide the most general type of implementation guidance and require manual implementation and testing by the organization. Note that US Government Community (GCC) Moderate, GCC High, and Department of Defense (DoD) customers can't currently use universal templates.

## Regulation availability and licensing

The [Microsoft data protection baseline](compliance-manager-assessments.md#data-protection-baseline-default-assessment) regulatory template is available for all organizations. The regulations designated as **premium** require purchase of a license to use them. Once you purchase a license for a regulation, you can create as many assessments for that regulation as you wish. Depending on your [licensing agreement](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-compliance-manager), your organization may be able to use up to three additional **premium** regulatory templates for free. When you begin creating assessments, Compliance Manager tracks how many templates are active so you can monitor your usage. To learn more, see [Active and inactive regulations](#active-and-inactive-regulations).

### Purchasing premium regulations

Licenses for premium regulatory templates can be obtained in various ways, depending on your Compliance Manager licensing agreement. Once your purchase has been finalized, the templates should become available in your tenant within 48 hours. Licenses for [activated regulations](#active-and-inactive-regulations) are good for one year.

- **Commercial and GCC Moderate**: Purchase licenses in the admin center ([learn more about subscriptions, licenses, and billing](/microsoft-365/commerce/)). Select the quantity of licenses you wish to purchase and your payment plan.
    - [Commercial](https://admin.microsoft.com/Adminportal/Home?#/catalog/offer-details/compliance-manager-premium-assessment-add-on/46E9BF2A-3C8D-4A69-A7E7-3DA04687636D)
    - [GCC Moderate](https://admin.microsoft.com/Adminportal/Home?#/catalog/offer-details/compliance-manager-premium-assessment-add-on/3129986d-5f4b-413b-a34b-b706db5a7669)
    - You may also acquire licenses through your participation in the [Cloud Solution Provider program](https://partner.microsoft.com/membership/cloud-solution-provider) or [volume licensing](https://www.microsoft.com/licensing/licensing-programs/licensing-programs).
- **GCC High and DOD accounts**: Purchase through [volume licensing](https://www.microsoft.com/licensing/licensing-programs/licensing-programs).

##### Staring a premium trial

You can try out premium regulation templates by acquiring trial versions of the licenses. Trial licenses are good for up to 25 templates for 90 days. Once you obtain your trial license, the templates should become available in your tenant within 48 hours. If your organization has a commercial license for Compliance Manager, you can learn how to start your trial at [About the free trial for Microsoft Purview Compliance Manager premium assessments](compliance-easy-trials-compliance-manager-assessments.md). If your organization is under a GCC or DOD license, choose the appropriate trial link for your organization:

- [GCC Moderate](https://admin.microsoft.com/Adminportal/Home?#/catalog/offer-details/compliance-manager-premium-assessment-add-on/87ed2908-0a8d-430a-9635-558ed42b581f)
- [GCC High](https://portal.office365.us/SubscriptionDetails?OfferId=e14362d7-2c11-4a43-9c92-59f1b499b96a)
- [DOD](https://portal.apps.mil/Commerce/Trial.aspx?OfferId=17e28290-7de6-41a9-af30-f6497396ab2e)

## Active and inactive regulations

Regulations display a status as either active or inactive:

- **Active** indicates use in at least one assessment.
- **Inactive** indicates it's not being used for an assessment.

When you use a premium regulation to create an assessment, that regulation's availability status changes to **Active** and the purchased license is active for one year. Your purchase will automatically renew unless you cancel.

### Activated regulations counter

The **Activated/Regulation** counter near the top of the **Regulations** page represents the number of regulatory templates in use out of the number you're eligible to use according to your licensing agreement and any purchased licenses. For example, if your counter shows 2/5, this means your organization has activated 2 regulations out of the 5 that are available to use. If your counter shows 5/2, this indicates that your organization exceeds its limits and needs to purchase 3 of the premium regulations in use.

Select **View details** the counter to view a detailed list of all regulations in use and their corresponding assessments.

## Regulations details page

Select a regulation from the list on the **Regulations** page to bring up its details page. This page contains a description of the regulation and details about applicable services, the date it was last updated, and tabs for viewing controls and improvement actions.