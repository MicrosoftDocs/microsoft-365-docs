---
title: Set up and manage structured and freeform document processing in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 08/08/2023
audience: admin
ms.topic: conceptual
ms.custom: setup
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set up and manage structured and freeform document processing in Microsoft Syntex.
---

# Set up and manage structured and freeform document processing in Microsoft Syntex

The structured and freeform document processing service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use structured and freeform document processing in Syntex, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Structured and freeform document processing in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up structured and freeform document processing in Syntex.  

## Set up structured and freeform document processing

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), structured and freeform document processing will be automatically set up and enabled for all SharePoint sites.

## Manage sites

By default, structured and default document processing is turned on for libraries in all SharePoint sites. Follow these steps to manage which SharePoint sites users can use to create custom models to process files.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**.

3. On the **Manage Microsoft Syntex** page, select **Structured and freeform document processing**.

4. On the **Structured and freeform document processing** page:

    a. Choose which site or sites this service should be enabled for.

    > [!NOTE]
    > Disabling a site after a model is made available to process files on that site will not disable the model. Models can still be used to process files and incur charges. A model can be made available to process files by being created either on that site or in a content center.

    b. To restrict the sites where users can create models, select **No SharePoint libraries** or **Libraries in selected SharePoint sites** and follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. Be sure to add your content center site if you want it to be included. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.

## Preparing the default Power Platform environment 
Your tenant comes with a default Power Platform environment. By default, AI Builder will be using the default Power Platform environment. This will require the *AI Builder for Project Cortex* app to be installed. For some tenants it's automatically turned on. For some that where it's not enabled you will encounter this error during the model creation, "AI Builder requires a Dataverse database..." error during model creation.

> [!NOTE]
> This error indicates that the AI Builder for Project Cortex app needs to be installed within your default Power Platform environment before you can start building models.

### Steps to Install *AI Builder for Project Cortex*:

*Important:* You must access the Power Platform admin center with Power Platform administrator access to complete these steps.

1. Access the [Power Platform admin center](https://admin.powerplatform.microsoft.com/)
  
2. On the navigation menu, select **Resources** > **Dynamics 365 apps**.

3. Find the **AI Builder for Project Cortex** app, click on the *more* icon and select **Install**.

   ![AI Builder for Project Cortex in Dynamics 365 apps](https://github.com/MicrosoftDocs/microsoft-365-docs/assets/13330257/a90670b3-3287-466f-ad93-1b9a2a1115ed)

4. You will be prompted to select a target environment. Use the dropdown to select your default environment, review the terms and condition and start the installation.
   
   ![Selecting environment and initiate installation.](https://github.com/MicrosoftDocs/microsoft-365-docs/assets/13330257/597ff192-ba12-4f6c-87f2-cf6905536c84)
  
6. Allow a few minutes for the installation to complete.
   
7. Once installed, retry creating your new model. The error should no longer appear.


## Using a custom Power Platform environment

If you plan to use a custom Power Platform environment, you must install the *AI Builder for Project Cortex* app in this environment. See [Manage Dynamics 365 apps](/power-platform/admin/manage-apps#install-an-app-in-the-environment-view) for details and look for the *AI Builder for Project Cortex* app in the list of Dynamics 365 apps. The environment must not be of the Sandbox type.

You also need to [allocate AI Builder credits](/power-platform/admin/capacity-add-on) to the custom environment before you can create document processing models.

If you have [AI Builder credits allocated](/power-platform/admin/capacity-add-on) to the environment, these credits will be used first. Once the credits are exhausted, the processing transactions are charged to the meter.

When using a custom environment, model creators must be assigned the Environment Maker security role. Model users must have permission to use (not edit) the model file in SharePoint libraries. For more information, see [Assign a security role to a user](/power-platform/admin/assign-security-roles). Custom security roles can be created to specifically grant access to the AI Builder tables as the Environment Maker role so those users can create models. You don't need to assign users this role if you're using the default Power Platform environment.

<!---
Users creating models in a [content center site](create-a-content-center.md) must be site members. Users creating models locally outside the content center must be site owners of those sites.--->

<!---
## Prerequisites

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up structured and freeform document processing in Syntex.

### Licensing

> [!NOTE]
> As of July 1, 2023, per-user licenses are no longer available for purchase. You will need to [set up pay-as-you-go billing](syntex-azure-billing.md).<br><br>
> Per-user licenses purchased before July 1 can still be assigned to new users. After existing per-user licenses expire, you will need to opt-in to Syntex [pay-as-you-go billing](syntex-azure-billing.md).

For an overview of licensing options for Microsoft Syntex, see [Licensing for Microsoft Syntex](syntex-licensing.md).

Each user for structured and freeform document processing must have a license assigned. To assign licenses, see [Set up Microsoft Syntex per-user licensing](set-up-content-understanding.md#assign-licenses).

## Set up structured and freeform document processing

### Get AI Builder credits

To use structured or freeform document processing models, you also need AI Builder credits. For each licensed user of Syntex, an allocation of AI Builder credits is provided each month in your default Power Platform environment.

### Enable sites

By default, structured and freeform document processing is turned off for all sites.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**.

3. On the **Manage Microsoft Syntex** page, select **Structured and freeform document processing**.

4. On the **Structured and freeform document processing** page:

    a. Choose which site or sites this service should be enabled for. 

    > [!NOTE]
    > Disabling a site after a model is made available to process files on that site will not disable the model. Models can still be used to process files and incur charges. A model can be made available to process files by being created either on that site or in a content center.

    b. To restrict user access to this service, select **No SharePoint libraries** or **Libraries in selected SharePoint sites** and follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. Be sure to add your content center site if you want it to be included. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.



## Using a custom Power Platform environment

Your tenant will come with a default Power Platform environment. If you plan to use a custom Power Platform environment, you must install the *AI Builder for Project Cortex* app in this environment. See [Manage Dynamics 365 apps](/power-platform/admin/manage-apps#install-an-app-in-the-environment-view) for details and look for the *AI Builder for Project Cortex* app in the list of Dynamics 365 apps. The environment must not be of the Sandbox type.

You also need to [allocate AI Builder credits](/power-platform/admin/capacity-add-on) to the custom environment before you can create document processing models.

When using a custom environment, model creators must be assigned the Environment Maker security role and model users must be assigned the Basic User security role. For more information, see [Assign a security role to a user](/power-platform/admin/assign-security-roles). You don't need to assign users this role if you're using the default Power Platform environment.

Users creating models in a [content center site](create-a-content-center.md) must be site members. Users creating models locally outside the content center must be site owners of those sites.
--->
