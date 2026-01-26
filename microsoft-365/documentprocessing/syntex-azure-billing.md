---
title: Set up pay-as-you-go billing for document processing
ms.author: chucked
author: chuckedmonson
ms.reviewer: kkamath
ms.date: 08/01/2025
manager: jtremper
audience: admin
ms.topic: install-set-up-deploy
ms.service: microsoft-syntex
ms.collection: 
- essentials-get-started
- m365initiative-syntex
- Tier1
search.appverid: MET150
ms.localizationpriority: medium
description: Learn about how to set up pay-as-you-go Azure billing for document processing and how to monitor your usage.
---

# Set up pay-as-you-go billing for document processing

Document processing services are billed on a pay-as-you-go basis. These services use an Azure subscription for billing and track usage and cost with a meter. Read the [pay-as-you-go terms of service](/legal/microsoft-365/microsoft-syntex-pay-as-you-go-terms) before you configure pay-as-you-go.

For a list of services that use pay-as-you-go, see [Licensing for document processing](syntex-licensing.md).

## Prerequisites

To use pay-as-you go, you need:

- An Azure subscription in the same tenant as the service
- An Azure resource group in that subscription

If you already have these resources for other purposes, you can also use them with the service.

For information about how to create an Azure subscription, see [Create your initial Azure subscriptions](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions).

For information about how to create an Azure resource group, see [Manage Azure resource groups by using the Azure portal](/azure/azure-resource-manager/management/manage-resource-groups-portal).

## Connect the service to an Azure subscription for billing

When you set up pay-as-you-go billing in Azure, events will be sent to the Azure meter in your account, and you'll be able to view the pages processed for unstructured and prebuilt document processing models.

The following permissions are required to set up pay-as-you-go billing:

- You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up the service.

   [!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

- You must have owner or contributor rights to the Azure subscription that you want to use for pay-as-you-go billing.

To configure pay-as-you-go billing, follow these steps:

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then view the **Billing and licenses** section.

2. In the **Billing and licenses** section, select **Activate pay-as-you-go services**.

3. On the **Activate pay-as-you-go services** page, select **Get started**.

4. On the **Pay-as-you-go services** page, on the **Billing** tab, select **Document processing services**.

5. On the **Set up billing and turn on services** panel, in the **Set up billing** section, under **Azure subscription**, select the dropdown, and then follow the steps to select the Azure subscription, resource group, and region. (The region determines where your tenant ID and usage information such as site names will be stored.)

6. Read and accept the [pay-as-you-go terms of service](/legal/microsoft-365/microsoft-syntex-pay-as-you-go-terms).

7. Select **Save**.

To access the **Pay-as-you-go services** page, follow these steps:

1. In the Microsoft 365 admin center, select **Settings** > **Org settings**.

2. On the **Services** tab, select **Pay-as-you-go services**.

## Disconnect a service from pay-as-you-go billing

To disconnect a service from pay-as-you-go billing, follow these steps:

1. In the Microsoft 365 admin center, select **Settings** > **Org settings**.

2. On the **Pay-as-you-go services** page, on the **Billing** tab, select **Document processing services**.

3. On the **Manage billing** panel, under **Azure subscription**, select **Edit billing information**.

4. Under **Manage billing**, select **Disconnect Azure subscription**.

5. On the **Disconnect subscription?** confirmation window, select **Disconnect**.

6. On the **Set up services and turn on services** panel, view the confirmation message that your Azure Subscription has been disconnected.

## Monitor your pay-as-you-go usage

You can monitor your pay-as-you-go usage in Microsoft Cost Management for Azure. You must have at least *read* access to the resource group that you specified for the service. Note that usage information might take up to 24 hours to appear in Cost Management.

To see the charges applied to the pay-as-you-go meters, follow these steps:

1. Sign in to [Microsoft Cost Management for Azure](https://portal.azure.com/#view/Microsoft_Azure_CostManagement/Menu/~/overview).

2. Under **Cost Management**, select **Cost analysis**.

3. Select **Add filter**, choose **Product** from the list, and then choose the product that you want to filter on.

4. Select **Add filter**, choose **Tag** from the list, and then choose the tag that you want to filter on.

The following pay-as-you-go services are currently available:

- Autofill columns
- Document translation
- eSignature
- Optical character recognition
- Content assembly
- Image tagging
- Prebuilt document processing
- Structured and freeform document processing
- Taxonomy tagging
- Unstructured document processing

<!---
**Storage services**
- Microsoft 365 Archive
- Microsoft 365 Backup

**Video services**
- Video translation

**Apps**
- SharePoint Embedded
--->

The following tags are available:
- Site

For more information about filter options in Cost Management, see [Group and filter options in Cost analysis](/azure/cost-management-billing/costs/group-filter).

