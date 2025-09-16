---
title: Set up or disconnect pay-as-you-go billing for document processing and storage services
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: siruvanti
ms.date: 08/01/2025
audience: admin
ms.topic: install-set-up-deploy
ms.service: microsoft-365-business
ms.subservice:
search.appverid: 
ms.collection: 
ms.localizationpriority:  medium
description: Learn how to set up or disconnect billing for pay-as-you-go services for document processing, Microsoft 365 Archive, and Microsoft 365 Backup.
---

# Set up or disconnect pay-as-you-go billing for document processing and storage services

This article explains how to set up or disconnect pay-as-you-go billing for the following services:

- Document processing for Micrsoft 365

- Microsoft 365 Archive

- Microsoft 365 Backup

## Prerequisites

Before you begin, ensure the following:

- You have an Azure subscription in the same tenant as Microsoft 365.

- You have an Azure resource group in that subscription.

- You have the following roles:

    - [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) for accessing the Microsoft 365 admin center.
    - Owner or Contributor rights to the Azure subscription and resource group.

## Set up pay-as-you-go billing

### Step 1: Activate pay-as-you-go services

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Go to **Setup** > **Billing and licenses**.

3. In the **Billing and licenses** section, select **Activate pay-as-you-go services**.

4. On the **Activate pay-as-you-go services** page, select **Get started**.

### Step 2: Configure billing

1. On the **Pay-as-you-go services** page, select the service you want to set up (for example, **SharePoint Agents** or **Syntex services**).

2. On the **Set up billing and turn on services** panel, choose your Azure subscription, resource group, and region.  

3. Read and accept the pay-as-you-go terms of service.

4. Select **Save** to complete the setup.

## Monitor usage and costs

After setup, monitor your pay-as-you-go usage and costs in [Microsoft Cost Management for Azure](https://portal.azure.com/#blade/Microsoft_Azure_CostManagement/Menu/costanalysis). Ensure you have at least read access to the billing resource group.

## Disconnect pay-as-you-go billing

### Prerequisites

Ensure you have the following roles:

- [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) for accessing the Microsoft 365 admin center
- Owner or Contributor rights to the Azure subscription and resource group

### Step 1: Access manage billing

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Go to **Settings** > **Org settings**.

3. Select **Pay-as-you-go services**.

4. Choose the service to disconnect (for example, **SharePoint Agents** or **Syntex services**).

5. On the **Manage billing** panel, select **Edit billing information**.

### Step 2: Disconnect Azure subscription

1. Under **Manage billing**, select **Disconnect Azure subscription**.

2. Confirm by selecting **Disconnect** in the confirmation window.

If multiple services are connected to a single policy, repeat the steps for each service.

### Step 3: Review billing and usage

After disconnection, review your billing and usage to ensure no further charges are applied.
