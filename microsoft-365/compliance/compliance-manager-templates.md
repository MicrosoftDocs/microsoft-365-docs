---
title: "Working with assessment templates in Microsoft Compliance Manager"
f1.keywords:
- NOCSH
ms.author: v-jgriffee
author: jmgriffee
manager: laurawi
audience: Admin
ms.topic: article
ms.custom: admindeeplinkMAC
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- M365-security-compliance
- m365solution-compliancemanager
- m365initiative-compliance
search.appverid: 
- MOE150
- MET150
description: "Understand how to use and manage templates for building assessments in Microsoft Compliance Manager. Create and modify templates using a formatted Excel file."
---

# Learn about assessment templates in Compliance Manager

**In this article:** Understand **how templates work** and **how to manage them** from your assessment templates page. Get instructions for **creating** new templates, **extending** and **modifying** existing templates, **formatting your template data with Excel**, and exporting template **reports**.

> [!IMPORTANT]
> The assessment templates that are available to your organization depend on your licensing agreement. [Review the details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

## Templates overview

A template is a framework of controls for creating an assessment in Compliance Manager. Our comprehensive set of templates can help your organization comply with national, regional, and industry-specific requirements governing the collection and use of data.

We refer to templates by the same name as their underlying certification or regulation, such as the EU GDPR template and the ISO/IEC 27701:2019 template. Since Compliance Manger can be used to assess different types of products, each template comes in two versions: one that applies to Microsoft 365, and a universal version that can be tailored to suit your chosen product.

Note that US Government Community (GCC) Moderate, GCC High, and Department of Defense (DoD) customers can currently use the Microsoft 365 template versions, but not universal.

## Template availability and licensing

There are two categories of templates in Compliance Manager: included and premium.

1. **Included templates** are granted by your Compliance Manager license and cover key regulations and requirements. To learn more about what templates are available under your licensing agreement, see [licensing details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#compliance-manager).
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

To start a trial, choose the appropriate link for your organization:

- [Commercial](https://admin.microsoft.com/Adminportal/Home?#/catalog/offer-details/compliance-manager-premium-assessment-add-on/e320704d-b7c9-4012-b6a6-0a2679790360)
- [GCC Moderate](https://admin.microsoft.com/Adminportal/Home?#/catalog/offer-details/compliance-manager-premium-assessment-add-on/87ed2908-0a8d-430a-9635-558ed42b581f)
- [GCC High](https://portal.office365.us/SubscriptionDetails?OfferId=e14362d7-2c11-4a43-9c92-59f1b499b96a)
- [DOD](https://portal.apps.mil/Commerce/Trial.aspx?OfferId=17e28290-7de6-41a9-af30-f6497396ab2e)

#### Active and inactive templates

Templates will display an activation status as either active or inactive:

- A template is considered **active** once you create an assessment from that template.
- A template is considered **inactive** if your organization isn’t using it for an assessment.

If you link any assessments to a purchased premium template, that template will be active for one year. Your purchase will automatically renew unless you cancel.

You may also try premium templates on a trial basis. Trial licenses are good for up to 25 templates for 30 days. Once your trial begins, the templates should become available in your tenant within 48 hours. Trials can be activated through the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

#### Activated templates counter

Your assessment page and assessment templates page have an **activated templates** counter near the top. The counter displays the number of templates in use out of the number you're eligible to use according to your licensing agreement. Template use is counted at the certification level.

For example, if your counter shows 2/5, this means your organization has activated 2 templates out of the 5 that are available to use.

If your counter shows 5/2, this indicates that your organization exceeds its limits and needs to purchase 3 of the premium templates in use.

Microsoft 365 and universal versions of templates have joint licensing, so that you can use the same underlying certification across more than one product. Using either or both versions of the same template will only count as one activated template.

For further details, see [Compliance Manager licensing guidance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#compliance-manager).

## View and manage templates

The assessment templates page in Compliance Manager displays a list of templates and key details about them. The list includes templates provided by Compliance Manager as well as any templates your organization has modified or created. You can apply filters to find a template based on certification, product scope, country, industry, who created it, and whether the template is enabled for assessment creation.

Select a template from its row to bring up its details page. This page contains a description of the template and further information about certification, scope, and controls details. From this page you can select the appropriate buttons to create an assessment, export the template data to Excel, or modify the template.

## Create an assessment template

To create your own new template for custom assessments in Compliance Manager, you'll use a specially formatted Excel spreadsheet to assemble the necessary control data. After completing the spreadsheet, you will import it into Compliance Manager. To learn more, see [Create an assessment template](compliance-manager-templates-create.md).

## Modify an assessment template

When working with assessments in Compliance Manager, you may want to modify an assessment template that you’ve created. The process is similar to the template creation process in that you’ll upload a formatted Excel file with your template data. To learn more about how to make changes and how to preserve data you still want to maintain, see [Modify an assessment template](compliance-manager-templates-modify.md).

## Extend an assessment template

Compliance Manager offers the option to add your own controls and improvement actions to an existing template. This process is called extending a template. To extend a template, you will use special instructions for adding to template data, depending on whether you’re extending Microsoft 365 assessment templates or universal assessment templates. To learn more, see [Extend an assessment template](compliance-manager-templates-extend.md).

## Format assessment template data in Excel

When creating, modifying, or extending assessment templates in Compliance Manager, you will work with Excel spreadsheets that use a specific format and schema. These specifications must be followed for the files to import correctly. To learn more, see [Format assessment template data in Excel](compliance-manager-templates-format-excel.md).

## Export a template

You can export an Excel file that contains all of a template’s data. You’ll need to export a template in order to modify it, since this will be the Excel file you edit and upload in the [modification process](compliance-manager-templates-modify.md). You can also export a template for reference if you want to use data from it while constructing a new custom template.

To export your template, go to your template details page and select the **Export to Excel** button.

Note that when exporting a template you extended from a Compliance Manager template, the exported file will only contain the attributes you added to the template. The exported file won’t include the original template data provided by Microsoft. To get such a report, see the instructions for [exporting an assessment report](compliance-manager-assessments.md#export-an-assessment-report).