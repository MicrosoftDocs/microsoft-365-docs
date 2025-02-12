---
title: Set up and manage structured and freeform document processing in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 01/22/2025
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
description: Learn how to set up and manage structured and freeform document processing in SharePoint.
---

# Set up and manage structured and freeform document processing in Microsoft Syntex

The structured and freeform document processing service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use structured and freeform document processing, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Structured and freeform document processing is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up structured and freeform document processing.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

## Set up structured and freeform document processing

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), structured and freeform document processing is automatically set up and enabled for all SharePoint sites.

## Manage sites

By default, structured and default document processing is turned on for libraries in all SharePoint sites. To restrict the sites where users can create structured and freeform models for processing files, follow these steps.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Settings > Org settings**</a>.

2. On the **Org settings** page, select **Pay-as-you-go services**.

3. On the **Pay-as-you-go services** page, select the **Settings** tab.

4. Under **Document & image services**, select **Structured and freeform document processing**.

5. On the **Structured and freeform document processing** panel, select the **Sites** tab.

6. In the **Sites where models can be used** section, select **Edit**.

7. On the **Sites where models can be used** panel, change the setting from **All sites** to **Selected sites (up to 100)**. For selected sites, follow the instructions to select the sites or upload a CSV listing of the sites. You can then manage site access permissions for the sites you selected.

    > [!NOTE]
    > You must be a member of any site that you want to include in the CSV file.

    > [!NOTE]
    > Disabling a site after a model is made available to process files on that site doesn't disable the model. Models can still be used to process files and incur charges. A model can be made available to process files by being created either on that site or in a content center.

8. Select **Save**.

## Turn off structured and freeform document processing

When the structured and freeform document processing service is turned off, structured and freeform models don't run, and users can't create or apply structured or freeform models.

To turn off structured and freeform document processing, follow these steps.

1. On the **Structured and freeform document processing** panel, on the **Settings** tab, clear the **Let people create and apply models to process files** check box.

2. Select **Save**.

    > [!NOTE]
    > For multi-geo environments, when the service is turned off, the service is off for all geos.

## Using a Power Platform environment

### Set up a default Power Platform environment

Your tenant comes with a default Power Platform environment. To make the default environment ready for to use with Microsoft Syntex, follow these steps:

1. Sign in to the [Power Platform admin center](https://admin.powerplatform.microsoft.com/) as a Global Administrator, a Power Platform Administrator, or a Dynamics 365 Administrator.

2. Select the checkmark next to the default environment.

3. In the **Dataverse** column, verify that the value is **Yes**.

    - If the value is **No**, add Dataverse to the environment:

        1. On the command bar, select **Add Dataverse** and then confirm the action.

        2. Refresh the page until the **State** column  is **Ready.**

    - If the value is **Yes**, go to the next step.

4. On the command bar, select **Membership**. On the **System Administrators** panel, select **Add me**, and then select **Close**.

5. On the command bar, select **Resources** > **Dynamics 365 apps**. The Dynamics 365 apps page for the default environment opens.

6. Verify that the **AI Builder for Project Cortex** app is installed.

    - If **AI Builder for Project Cortex** isn't on the installed apps list, on the command bar, select **Install app**.

    - If **AI Builder for Project Cortex** is already on the installed apps list and the **Status** column shows **Installed**, the remaining steps can be skipped.

    - If **AI Builder for Project Cortex** is on the installed apps list, but the **Status** column shows **Installation failed**, then select the status text to view the error details. On the **Error details** panel, select **Retry installation**.

7. On the **Install Dynamic 365 app** panel, select **AI Builder for Project Cortex**, and then select **Next**.

8. On the **Install AI Builder for Project Cortex** panel, agree to the terms of service, and then select **Install**.

9. Wait for the app to install, and then refresh the page until the **Status** column shows **Installed**.

### Set up a custom Power Platform environment

If you plan to use a custom Power Platform environment, you must install the *AI Builder for Project Cortex* app in this environment. See [Manage Dynamics 365 apps](/power-platform/admin/manage-apps#install-an-app-in-the-environment-view) for details and look for the *AI Builder for Project Cortex* app in the list of Dynamics 365 apps. The environment must not be of the Sandbox type.

If you have [AI Builder credits available](/power-platform/admin/capacity-add-on) to the environment, these credits are used first. For both custom and default Power Platform environments, once the credits are exhausted, the processing transactions are charged to the meter.

When using a custom environment, model creators must be assigned the Environment Maker security role. Model users must have permission to use (not edit) the model file in SharePoint libraries. For more information, see [Assign a security role to a user](/power-platform/admin/assign-security-roles). Custom security roles can be created to specifically grant access to the AI Builder tables as the Environment Maker role so those users can create models. You don't need to assign users this role if you're using the default Power Platform environment.

