---
# Required metadata
# For more information, see https://learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata
# For valid values of ms.service, ms.prod, and ms.topic, see https://learn.microsoft.com/en-us/help/platform/metadata-taxonomies

title: Set up or disconnect pay-as-you-go billing for services in new billing node
description: 'Set up or disconnect pay-as-you-go billing '
author:      clalissayi24 # GitHub alias
ms.author:   clalissayi # Microsoft alias
ms.service: microsoft-365-admin
ms.topic: install-set-up-deploy
ms.date:     11/25/2025
---

# Set up or disconnect pay-as-you-go in Billing node

This article explains how to set up or disconnect pay-as-you-go billing for the following services in Billing node:

- Copilot 

- Microsoft 365 Backup (GCC and new Backup customers. Existing backup customers continue in Set up node). 

## Prerequisites

Before you begin, ensure the following:

- The tenant has at least one SharePoint license, or a license that includes SharePoint.

- You have an Azure subscription in the same tenant as Microsoft 365.

- You have an Azure resource group in that subscription.

- You have the following roles:

  - [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference) for accessing the Microsoft 365 admin center.
    
  - Owner or Contributor rights to the Azure subscription and resource group.
    


## Set up pay-as-you-go billing

### Step 1: Activate pay-as-you-go services

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

1. Go to **Billing** > **Pay-as-you-go**.

1. Select __Add a billing policy__.

1. On the __Billing details__ page, fill in required information, including:

   1. Policy name
   
   1. Azure subscription
   
   1. Resource group
   
   1. Region (determines where tenant ID and usage data are stored)
   
1. Read and accept the pay-as-you-go terms of service. Select __Next__.

1. On the __Users__ page, choose __All users__ or a __Specific group__ (search and add a single group). Select __Next__.

   1. __Note:__ When selecting a group, only the first 1,000 groups are displayed in alphabetical order.
   
1. On the __Review and finish__ page, double-check all the details you’ve entered. If everything is correct, select __Create policy__.

Your billing policy is now created but not yet connected to a service.

### Step 2: Connect the billing policy to a service

1. On the __Services__ page, select the service you like to connect “__Connect a policy__”.

1. Choose the newly created billing policy and link it to a pay-as-you-go service.

   1. **Note**: For any Copilot services, when you select “Connect a policy”, the page will direct you to the Copilot Billing & Usage page. Select “Go to Copilot Billing & usage” to be redirected.
   
## Monitor usage and costs

After setup, monitor your pay-as-you-go usage and costs in [Microsoft Cost Management for Azure](https://portal.azure.com/#blade/Microsoft_Azure_CostManagement/Menu/costanalysis). Ensure you have at least read access to the billing resource group.

## Disconnect pay-as-you-go billing

### Prerequisites

Ensure you have the following roles:

- [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference) for accessing the Microsoft 365 admin center

- Owner or Contributor rights to the Azure subscription and resource group



### Step 1: Access manage billing

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

1. Go to **Billing** > **Pay-as-you-go**.

1. On the __Services__ page, select the service you like to disconnect.

### Step 2: Disconnect billing policies 

1. Under **Billing Policies**, disconnect by turning toggle off. 

1. Click save. 

### Step 3: Review billing and usage

After disconnection, review your billing and usage to ensure no further charges are applied.
