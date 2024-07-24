---
title: Set up third-party billing for Microsoft 365 Backup Storage
ms.author: waynewin
author: WayneEwington
manager: brgussin
audience: admin
ms.reviewer: sreelakshmi
ms.date: 07/31/2024
ms.topic: conceptual
ms.service: microsoft-365-backup
ms.custom: backup
search.appverid:
ms.collection:
    - essentials-overview
ms.localizationpriority:  medium
description: Set up third-party billing for Microsoft 365 Backup Storage.
---

# Set up third-party billing for Microsoft 365 Backup Storage

Developers can create an application to manage Microsoft 365 Backup Storage in their customer's tenants. However, a Billing Policy must be created that associates your Microsoft 365 Backup Storage application to pay-as-you-go billing that has been configured in your tenant.

To create a Billing Policy, you need to perform the following steps:

1. [Set up pay-as-you-go billing](#step-1-set-up-pay-as-you-go-billing).

2. [Submit a request to Microsoft to create a Billing Policy for your application](#step-2-submit-a-request-to-microsoft-to-create-a-billing-policy-for-your-application).

> [!NOTE]
> An application and tenant can only be associated to one and only one Billing Policy. That is, a tenant can't have more than one Billing Policy and an application can't be associated with more than one Billing Policy.

> [!NOTE]
> Creating a Billing Policy requires that your tenant has at least one user license that entitles you to SharePoint or OneDrive.

### Step 1: Set up pay-as-you-go billing

> [!WARNING]
> This step needs to be performed in the same tenant that your Microsoft 365 Backup Storage application was created and registered in. That is, this should be performed in your tenant (and not your customer's tenants). Failure to do so will mean that your request to create a Billing Policy will be rejected.

Microsoft 365 Backup is a pay-as-you-go offering that charges based on consumption, unlike traditional seat-based licenses. To set up pay-as-you-go for Microsoft 365 Backup, you'll need to have this information:

- **Valid Azure subscription.** An Azure subscription provides a logical container for your resources. Each Azure resource is associated with only one subscription. Creating a subscription is the first step in adopting Azure. To learn more about Azure, see [Azure fundamental concepts](/azure/cloud-adoption-framework/ready/considerations/fundamental-concepts).

- **Resource group.** A resource group provides a logical grouping of resources within an Azure subscription.

- **Region.** The region in which you want to register the service.

- **Owner or contributor.** Name of an owner or contributor role on the Azure subscription.

Once you have the information on this list, you're ready to perform the following steps:

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Select **Setup**.

3. On the **Setup** page, in the **Files and content** section, select **Use content AI with Microsoft Syntex**.

4. On the **Use content AI with Microsoft Syntex** page, select **Set up billing**.
   
   > [!NOTE]
   > To set up pay-as-you-go billing for Microsoft 365 Backup, you must be an owner or contribution role on the Azure subscription to be used.

5. If you *don't* have an Azure subscription or resource group, follow these steps. If you have an Azure subscription and resource group, go directly to step 6.

    To create a new Azure subscription with the same organization and Microsoft Entra tenant as your Microsoft 365 subscription:

    1. Sign in to the [Azure portal](https://portal.azure.com/) with your Microsoft 365 admin, Microsoft Entra DC admin, or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) account.

        [!INCLUDE [global-administrator-note](../../includes/global-administrator-note.md)]

    2. In the left navigation, select **Subscriptions**, and then select **Add**.

    3. On the **Add subscription** page, select an offer and complete the payment information and agreement.

    To create a new Azure resource group:

    1. On the **Set up pay-as-you-go billing** panel, select **Learn more about Azure resource groups**.

    2. Or, you can follow steps in [Manage Azure resource groups by using the Azure portal](/azure/azure-resource-manager/management/manage-resource-groups-portal) to create a resource group.

    > [!NOTE]
    > The resource group should be mapped to the Azure subscription you provided when you set up pay-as-you-go.

6. If you ***have*** an Azure subscription, follow these steps:

   1. On the **Set up pay-as-you-go billing** panel, under **Azure subscription**, select the subscription from the dropdown list.
   2. Under **Resource group**, select the resource group from the dropdown list.
   3. Under **Region**, select the region from the dropdown list.
   4. Review and accept the terms of service, and then select **Save**.

   > [!NOTE]
   > The subscription dropdown list will not populate if you are not an owner or contributor on the subscription.

You have successfully set up pay-as-you-go billing.

> [!IMPORTANT]
> Any subsequent changes made to the billing for Microsoft 365 Backup Storage in the Microsoft 365 admin center or the Azure portal can take up to 24 hours to become effective.

### Step 2: Submit a request to Microsoft to create a Billing Policy for your application

To create a Billing Policy for your application and the pay-as-you-go billing configured in the previous step, you'll need to perform the following steps:

1. Review the [Microsoft 365 terms of service](../backup-preview-terms-third-party.md).

2. Email *M365Backup3PBilling@microsoft.com* with the following information: We'll reply back to this email once the request is complete.

    - Subject line containing your **Microsoft Entra tenant ID**.
    - Message body containing your **Microsoft Entra tenant ID** and **Application Id** of your Microsoft 365 Backup Storage application.
    - Screenshot of your **application registration details** in [Microsoft Azure > App registrations](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/RegisteredApps) for example: [https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationMenuBlade/~/Overview/appId/{ApplicationId}](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationMenuBlade/~/Overview/appId/{ApplicationId}).

For details on how to find your Microsoft Entra tenant ID, refer to [How to find your Microsoft Entra tenant ID](/entra/fundamentals/how-to-find-tenant).

> [!IMPORTANT]
> Submitting a request to Microsoft indicates that you have accepted the [Microsoft 365 terms of service](../backup-preview-terms-third-party.md).

> [!WARNING]
> The domain of the email address from which you send email to Microsoft must be registered in the same tenant where you configured the pay-as-you-go billing in the previous step. That is, your email domain must be listed in [Microsoft 365 admin center > Domains](https://admin.microsoft.com/Adminportal/?#/Domains). Failure to do so will mean that your request to create a Billing Policy will be rejected.

> [!NOTE]
> - All requests are processed on a "first come, first served" basis and can take 3 to 5 business days to be processed.
> - If any invalid information is provided, then your request might be rejected without any further correspondence.

Once your request is processed and you receive a confirmation email, your application is able to enable Microsoft 365 Backup Storage in your customer's tenants using your Billing Policy.
