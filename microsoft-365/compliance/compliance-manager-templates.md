---
title: "Learn about assessment templates in Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 04/21/2023
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
description: "Understand how to use and manage templates for building assessments in Microsoft Purview Compliance Manager. Create and modify templates using a formatted Excel file."
---

# Learn about assessment templates in Compliance Manager

**In this article:** Understand **how templates work** and **how to manage them** from your assessment templates page. 

> [!IMPORTANT]
> The assessment templates that are included by default for your organization depend on your licensing agreement. [Review licensing details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-compliance-manager).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Templates overview

A template is a framework of controls for creating an assessment in Compliance Manager. Our comprehensive set of templates can help your organization comply with national, regional, and industry-specific requirements governing the collection and use of data. We refer to templates by the same name as their underlying certification or regulation, such as the EU GDPR template and the ISO/IEC 27701:2019 template.

## Template versions: Microsoft and universal

Compliance Manger can be used to assess different types of products. All templates, except the [Microsoft Data Protection Baseline](compliance-manager-assessments.md#data-protection-baseline-default-assessment) default template, come in two versions:

1. A version that applies to a pre-defined product, such as Microsoft 365, and
2. A universal version that can be tailored to suit other products.

Assessments from universal templates are more generalized but offer expanded versatility, since they can help you easily track your organization's compliance across multiple products.

Note that US Government Community (GCC) Moderate, GCC High, and Department of Defense (DoD) customers cannot currently use universal templates.

## Template availability and licensing

There are two categories of templates in Compliance Manager: **included** and **premium**.

1. **Included templates** are granted by your Compliance Manager license and cover key regulations and requirements. To learn more about what templates are available under your licensing agreement, see [licensing details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-compliance-manager).
2. **Premium templates** to cover additional needs and scenarios can be obtained by purchasing template licenses.

When you begin creating assessments, Compliance Manager will track how many templates are active so you can monitor your usage. To learn more, see [Active and inactive templates](compliance-manager-templates.md#active-and-inactive-templates).

View the [full list of templates](compliance-manager-templates-list.md) available in Compliance Manager.

### Purchase premium template licenses

Template licenses can be obtained by one or more of these methods, depending on your Compliance Manager licensing agreement. Once your purchase has been finalized, the templates should become available in your tenant within 48 hours.

**Commercial and GCC Moderate**

Commercial and GCC Moderate accounts can purchase template licenses in the admin center ([learn more about subscriptions, licenses, and billing](/microsoft-365/commerce/)). Select the quantity of licenses you wish to purchase and your payment plan.

Purchase links:

- [Commercial](https://admin.microsoft.com/Adminportal/Home?#/catalog/offer-details/compliance-manager-premium-assessment-add-on/46E9BF2A-3C8D-4A69-A7E7-3DA04687636D)
- [GCC Moderate](https://admin.microsoft.com/Adminportal/Home?#/catalog/offer-details/compliance-manager-premium-assessment-add-on/3129986d-5f4b-413b-a34b-b706db5a7669)

You may also acquire licenses through your participation in the [Cloud Solution Provider program](https://partner.microsoft.com/membership/cloud-solution-provider) or [volume licensing](https://www.microsoft.com/licensing/licensing-programs/licensing-programs).

**GCC High and DOD accounts**

GCC High and DOD accounts must purchase template licenses through [volume licensing](https://www.microsoft.com/licensing/licensing-programs/licensing-programs).

### Try out premium templates

To try out premium templates before you make a purchase, you may also acquire trial versions of the licenses. Trial licenses are good for up to 25 templates for 90 days. Once you obtain your trial license, the templates should become available in your tenant within 48 hours.

If your organization has a commercial license for Compliance Manager, you can learn how to start your trial at [About the free trial for Microsoft Purview Compliance Manager premium assessments](compliance-easy-trials-compliance-manager-assessments.md).

If your organization is under a GCC or DOD license, choose the appropriate trial link for your organization:

- [GCC Moderate](https://admin.microsoft.com/Adminportal/Home?#/catalog/offer-details/compliance-manager-premium-assessment-add-on/87ed2908-0a8d-430a-9635-558ed42b581f)
- [GCC High](https://portal.office365.us/SubscriptionDetails?OfferId=e14362d7-2c11-4a43-9c92-59f1b499b96a)
- [DOD](https://portal.apps.mil/Commerce/Trial.aspx?OfferId=17e28290-7de6-41a9-af30-f6497396ab2e)

#### Active and inactive templates

Templates will display an activation status as either active or inactive:

- A template is considered **active** once you create an assessment from that template.
- A template is considered **inactive** if your organization isn't using it for an assessment.

If you link any assessments to a purchased premium template, that template will be active for one year. Your purchase will automatically renew unless you cancel.

#### Activated templates counter

Your **Assessment templates** page has an **Activated/Licensed templates** counter near the top. The counter displays the number of templates in use out of the number you're eligible to use according to your licensing agreement.

For example, if your counter shows 2/5, this means your organization has activated 2 templates out of the 5 that are available to use. If your counter shows 5/2, this indicates that your organization exceeds its limits and needs to purchase 3 of the premium templates in use.

Templates for a pre-defined product, such as Microsoft 365, have joint licensing with the universal versions of the same template. This enables you to use the same underlying regulation across more than one product. Using either or both versions of the same template will only count as one activated template.

Similarly, templates that belong to the same regulation family are also counted as one template. The regulation family is shown in the **Overarching regulation** column on the **Assessment templates** page. When you purchase a template license for a regulation and activate the template, it counts as one activated template even if you create assessments for different levels or versions of that regulation. For example, if you use a template for CMMC Level 1 and a template for CMMC Level 2, your activated templates counter increases by only one.

For further details, see [Compliance Manager licensing guidance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-compliance-manager).

## View and manage templates

The assessment templates page in Compliance Manager displays a list of templates and key details about them. The list includes templates provided by Compliance Manager as well as any templates your organization has modified or created. You can apply filters to find a template based on certification, product scope, country, industry, who created it, and whether the template is enabled for assessment creation.

Select a template from its row to bring up its details page. This page contains a description of the template and further information about certification, scope, and controls details. From this page you can select the appropriate buttons to create an assessment, export the template data to Excel, or modify the template.