---
title: Configure Microsoft Syntex for pay-as-you-go billing
ms.author: chucked
author: chuckedmonson
ms.reviewer: kkamath
ms.date: 05/15/2023
manager: pamgreen
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
    - Tier1
search.appverid: MET150
ms.localizationpriority: medium
description: Learn about how to set up pay-as-you-go Azure billing for Microsoft Syntex and how to monitor your usage.
---

# Configure Microsoft Syntex for pay-as-you-go billing

Some Microsoft Syntex features are billed on a pay-as-you-go basis. These features use an Azure subscription for billing and track usage and cost with a Syntex meter. Read the [Microsoft Syntex pay-as-you-go terms of service](/legal/microsoft-365/microsoft-syntex-pay-as-you-go-terms) before you configure pay-as-you-go.

For a list of Microsoft Syntex features that use pay-as-you-go, see [Licensing for Microsoft Syntex](syntex-licensing.md)

Note that if you use [Microsoft Syntex per-user licensing](set-up-content-understanding.md) you can't sign up for pay-as-you-go.

## Prerequisites

To use Microsoft Syntex pay-as-you go, you need:

- An Azure subscription in the same tenant as Microsoft Syntex
- An Azure resource group in that subscription

If you already have these resources for other purposes, you can also use them with Microsoft Syntex.

For information about how to create an Azure subscription, see [Create your initial Azure subscriptions](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions)

For information about how to create an Azure resource group, see [Manage Azure resource groups by using the Azure portal](/azure/azure-resource-manager/management/manage-resource-groups-portal).

## Set up Microsoft Syntex billing in Azure

When you set up Microsoft Syntex billing in Azure, events will be sent to the Azure meter in your account and you will be able to view the pages processed for unstructured and prebuilt document processing models.

The following permissions are required to set up Microsoft Syntex billing:

- You must have Global Administrator or SharePoint Administrator permissions to be able to access the Microsoft 365 admin center and set up Syntex.
- You must have owner or contributor rights to the Azure subscription that you want to use for Microsoft Syntex billing.

To configure Microsoft Syntex billing

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then view the **Files and content** section.

1. In the **Files and content** section, select **Use content AI with Microsoft Syntex**.

1. On the **Microsoft Syntex** page, select **Configure billing** to walk through the setup process.
1. On the **Enter your Azure subscription** panel, choose an Azure subscription from the **Azure subscription** dropdown.
1. Choose a resource group and region. (The region determines where your tenant ID and usage information such as site names will be stored.)
1. Read and accept the [Microsoft Syntex pay-as-you-go terms of service](/legal/microsoft-365/microsoft-syntex-pay-as-you-go-terms).
1. Select **Save**.

If you need to change or disconnect your Azure subscription, you can select **Manage billing** on the **Use content AI with Microsoft Syntex**.

## Monitor your Microsoft Syntex pay-as-you-go usage

You can monitor your Microsoft Syntex pay-as-you-go usage in Azure Cost Management. You must have at least *read* access to the resource group that you specified for Microsoft Syntex. Note that usage information may take up to 24 hours to appear in Cost Management.

To see the charges applied to the Syntex meters
1. Sign in to [Azure Cost Management](https://portal.azure.com/#view/Microsoft_Azure_CostManagement/Menu/~/overview).
1. Under **Cost Management**, select **Cost analysis**.
1. Select **Add filter**, choose **Product** from the list, and then choose the product (listed below) that you want to filter on.
1. Select **Add filter**, choose **Tag** from the list, and then choose the tag (listed below) that you want to filter on.

The following Microsoft Syntex products are available:
- Syntex Unstructured Document Processing
- Syntex Prebuilt Document Processing

The following tags are available:
- Site

For more information about filter options in Cost Management, see [Group and filter options in Cost analysis](/azure/cost-management-billing/costs/group-filter).

## Related articles

[Overview of Microsoft Syntex](syntex-overview.md)

[Licensing for Microsoft Syntex](syntex-licensing.md)
