---
title: Set up third-party billing for Microsoft 365 Backup Storage
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 02/03/2025
ms.topic: conceptual
ms.service: microsoft-365-backup
ms.custom: backup
search.appverid:
ms.collection:
ms.localizationpriority:  medium
description: Learn how to set up third-party billing for Microsoft 365 Backup Storage.
---

# Set up third-party billing for Microsoft 365 Backup Storage

Developers can create an application to manage Microsoft 365 Backup Storage in their customer's tenants. However, a Billing Policy must be created that associates your Microsoft 365 Backup Storage application to pay-as-you-go billing that has been configured in your tenant.

To create a Billing Policy, you need to perform the following steps:

1. [Set up pay-as-you-go billing](#step-1-set-up-pay-as-you-go-billing).

2. [Create a Billing Policy for your application](#step-2-create-a-billing-policy-for-your-application).

> [!NOTE]
> An application can only be associated to one and only one Billing Policy. However, a Billing Policy can have more than one application associated to it.

> [!NOTE]
> Creating a Billing Policy requires that your tenant has at least one user license that entitles you to SharePoint or OneDrive.

### Step 1: Set up pay-as-you-go billing

> [!WARNING]
> This step needs to be performed in the same tenant that your Microsoft 365 Backup Storage application was created and registered in. That is, this should be performed in your tenant (and not your customer's tenants).

Microsoft 365 Backup is a pay-as-you-go offering that charges based on consumption, unlike traditional seat-based licenses. To set up pay-as-you-go for Microsoft 365 Backup, you need to have this information:

- **Valid Azure subscription.** An Azure subscription provides a logical container for your resources. Each Azure resource is associated with only one subscription. Creating a subscription is the first step in adopting Azure. To learn more about Azure, see [Azure fundamental concepts](/azure/cloud-adoption-framework/ready/considerations/fundamental-concepts).

- **Resource group.** A resource group provides a logical grouping of resources within an Azure subscription.

- **Region.** The region in which you want to register the service.

- **Owner or contributor.** Name of an owner or contributor role on the Azure subscription.

Once you have the information on this list, you're ready to go to [Step 2: Create a Billing Policy for your application](#step-2-create-a-billing-policy-for-your-application).

If you *don't* have an Azure subscription or resource group, follow these steps.

Create a new Azure subscription with the same organization and Microsoft Entra tenant as your Microsoft 365 subscription:

1. Sign in to the [Azure portal](https://portal.azure.com/) with your Microsoft 365 admin, Microsoft Entra DC admin, or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) account.

   [!INCLUDE [global-administrator-note](../../includes/global-administrator-note.md)]

2. In the left navigation, select **Subscriptions**, and then select **Add**.

3. On the **Add subscription** page, select an offer and complete the payment information and agreement.

To create a new Azure resource group, you can follow steps in [Manage Azure resource groups by using the Azure portal](/azure/azure-resource-manager/management/manage-resource-groups-portal) to create a resource group.

> [!IMPORTANT]
> Any subsequent changes made to the pay-as-you-go billing can take up to 24 hours to become effective.

### Step 2: Create a Billing Policy for your application

> [!WARNING]
> This step needs to be performed in the same tenant that your Microsoft 365 Backup Storage application was created and registered in. That is, this should be performed in your tenant (and not your customer's tenants).

To create a Billing Policy for your application, you need to perform the following steps:

> [!IMPORTANT]
> [Download the latest SharePoint Online Management Shell](https://go.microsoft.com/fwlink/p/?LinkId=255251). If you installed a previous version of the SharePoint Online Management Shell, go to Add or remove programs and uninstall "SharePoint Online Management Shell". You might also need to uninstall all previous versions by running `Uninstall-Module Microsoft.Online.SharePoint.PowerShell -Force -AllVersions`. Make sure you review the System Requirements and Install Instructions.
  
1. Connect to SharePoint as at least a [SharePoint Administrator](/sharepoint/sharepoint-admin-role) in Microsoft 365. To learn how, see [Getting started with SharePoint Online Management Shell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online).

   Example: 

   `Connect-SPOService -Url "https://contoso-admin.sharepoint.com"`
  
2. Run the following command to create the Billing Policy for your application:

> [!NOTE]
> To create a Billing Policy for your application, you must be an owner or contribution role on the Azure subscription from Step 1.
  
```PowerShell
New-SPOAppBillingPolicy -ApplicationId <ApplicationId> -UsageCharges AppOwnerIsCharged -AzureSubscriptionId <AzureSubscriptionId> -ResourceGroup <ResourceGroup> -AzureRegion <AzureRegion>
```

Where:
- **"ApplicationId"** is the Application Id of your Microsoft 365 Backup Storage application.
- **AzureSubscriptionId** is the Azure Subscription Id from Step 1.
- **ResourceGroup** is the Resource Group from Step 1.
- **AzureRegion** is the Azure Region from Step 1.

> [!NOTE]
> Microsoft 365 Backup Storage only supports **AppOwnerIsCharged** UsageCharges.

