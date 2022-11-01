---
title: Configure Microsoft Syntex for Azure pay-as-you-go billing (Preview)
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
description: Learn about pay-as-you-go Azure billing configuration for Microsoft Syntex.
---

# Configure Microsoft Syntex for Azure pay-as-you-go billing (Preview)

Microsoft Syntex features are billed through an Azure subscription. In this limited-time preview, you can use unstructured and prebuilt document processing (formerly document understanding) at no cost and see activity reports in Azure.

After the preview ends, document processing will be charged on a pay-as-you-go basis. You will have the option to opt in at that time. For details about the preview, see [Microsoft Syntex pay-as-you-go preview](/legal/microsoft-365/microsoft-syntex-azure-billing-trial).

This preview does not include structured document processing which uses AI Builder credits.

## Prerequisites

To use Microsoft Syntex pay-as-you go, you need:

- An Azure subscription
- An Azure resource group
- An Azure storage account

For information about how to create an Azure subscription, see [Create your initial Azure subscriptions](/azure/cloud-adoption-framework/ready/azure-best-practices/initial-subscriptions)

For information about how to create an Azure resource group, see [Manage Azure resource groups by using the Azure portal](/azure/azure-resource-manager/management/manage-resource-groups-portal).

For information about how to create an Azure storage account, see [Create a storage account](/azure/storage/common/storage-account-create). The storage account does not need to be public or connected to the internet.

## Set up Microsoft Syntex billing in Azure

When you set up Microsoft Syntex billing in Azure, events will be sent to the Azure meter in your account and you will be able to view the pages processed for unstructured and prebuilt document processing models.

You must have contributor rights to the Azure resource group in order to use it to configure billing.

To configure Microsoft Syntex billing

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then view the **Files and content** section.

1. In the **Files and content** section, select **Configure Microsoft Syntex**.

1. On the **Microsoft Syntex** page, select **Configure billing** to walk through the setup process.
1. On the **Enter your Azure subscription** panel, choose an Azure subscription from the **Azure subscription** dropdown.
1. Choose a resource group and region.
1. Select **Save**.

If you have not previously configured Microsoft Syntex, read [Set up Microsoft Syntex](set-up-content-understanding.md) to learn how.

## Monitor your usage

You can monitor your Microsoft Syntex pay-as-you-go usage in Azure Cost Management.

To run the report, the customer must have at least “read” access to the resource group and “contributor” access to the storage container.

Pages processed are counted for every time the model runs against the document for all pages processed in the document regardless of whether there was a positive classification.  Model training does not count toward pages processed. 


1. Sign in to [Azure Cost Management](https://portal.azure.com/#view/Microsoft_Azure_CostManagement/Menu/~/exports/open/exports/openedBy/AzurePortal).
1. Select Cost exports and the resource group.
1. Run the export.
1. View the export in the storage container location you chose.  This can sometimes take some time.

There is also a Tags column in the usage report that shows the site and library where the usage occurred.  You can use this to see where the pages processed are coming from within your tenant.

