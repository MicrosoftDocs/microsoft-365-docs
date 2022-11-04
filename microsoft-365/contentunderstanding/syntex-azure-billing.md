---
title: Configure Microsoft Syntex for pay-as-you-go billing in Azure (Preview)
ms.author: mikeplum
author: MikePlumleyMSFT
ms.reviewer: kkamath
manager: serdars
audience: admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
search.appverid: MET150
ms.localizationpriority: medium
description: Learn about how to set up pay-as-you-go Azure billing for Microsoft Syntex and how to monitor your usage.
---

# Configure Microsoft Syntex for pay-as-you-go billing in Azure (Preview)

Microsoft Syntex features are billed through an Azure subscription. In this limited-time preview, you can use unstructured and prebuilt document processing (formerly document understanding) at no cost and see activity reports in Azure.

After the preview ends, document processing will be charged on a pay-as-you-go basis. You will have the option to opt in at that time. For details about the preview, see [Microsoft Syntex pay-as-you-go preview](/legal/microsoft-365/microsoft-syntex-azure-billing-trial).

This preview does not include structured document processing which uses AI Builder credits.

## Prerequisites

To use Microsoft Syntex pay-as-you go, you need:

- An Azure subscription
- An Azure resource group in that subscription
- An Azure storage account in that subscription

If you already have these resources for other purposes, you can also use them with Microsoft Syntex.

For information about how to create an Azure subscription, see [Create your initial Azure subscriptions](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions)

For information about how to create an Azure resource group, see [Manage Azure resource groups by using the Azure portal](/azure/azure-resource-manager/management/manage-resource-groups-portal).

For information about how to create an Azure storage account, see [Create a storage account](/azure/storage/common/storage-account-create). The storage account does not need to be public or connected to the internet.

## Set up Microsoft Syntex billing in Azure

When you set up Microsoft Syntex billing in Azure, events will be sent to the Azure meter in your account and you will be able to view the pages processed for unstructured and prebuilt document processing models.

The following permissions are required to set up Microsoft Syntex billing:

- You must have Global Administrator or SharePoint Administrator permissions to be able to access the Microsoft 365 admin center and set up Syntex.
- You must have contributor rights to the Azure resource group that you want to use for Microsoft Syntex billing.

To configure Microsoft Syntex billing

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then view the **Files and content** section.

1. In the **Files and content** section, select **Configure Microsoft Syntex**.

1. On the **Microsoft Syntex** page, select **Configure billing** to walk through the setup process.
1. On the **Enter your Azure subscription** panel, choose an Azure subscription from the **Azure subscription** dropdown.
1. Choose a resource group and region.
1. Select **Save**.

If you have not previously configured Microsoft Syntex, read [Set up Microsoft Syntex](set-up-content-understanding.md) to learn how.

## Monitor your Microsoft Syntex pay-as-you-go usage

You can monitor your Microsoft Syntex pay-as-you-go usage in Azure Cost Management.

To run the report, the customer must have at least *read* access to the resource group and *contributor* access to the storage container.

Pages processed are counted for every time the model runs against the document for all pages processed in the document regardless of whether there was a positive classification.  Model training does not count toward pages processed. 

To create a report
1. Sign in to [Azure Cost Management](https://portal.azure.com/#view/Microsoft_Azure_CostManagement/Menu/~/overview).
1. Under **Settings**, select **Exports**.
1. Select **Add**.
1. Type a name for the export.
1. Select the **Metric** that you want to report on.
1. Choose an **Export type** and the dates for the export.
1. In the **Storage** section, choose the subscription that you're using for Microsoft Syntex billing.
1. In the **Storage account** dropdown, choose a storage account to which you have contributor access.
1. Type a name for the container where the report will be stored.
1. Type the path within the container where you want to export the report.
1. Select **Create**.

Once the report has been created, it will run on the date you specified. You can also run it manually.

To run a report
1. In the Azure Cost Management Exports list, select the report that you want to run.
1. Select **Run now**.

The report may take up to an hour to run.

To access the report
1. In the Azure Cost Management Exports list, select the report.
1. Select the storage account.
1. Under **Data storage**, select **Containers**.
1. Select the container where you stored the report.
1. Navigate to the csv file for the report that you want to view.
1. Select the csv, and then select **Download**.

Filter the csv on **consumedService** = *Microsoft.Syntex*. The following columns include Microsoft Syntex transaction information:

- meterName
- meterCategory
- meterSubCategory
- ProductName
- quantity
- tags (site and library information)

## Related topics

[Overview of Microsoft Syntex](syntex-overview.md)

[Licensing for Microsoft Syntex](syntex-licensing.md)