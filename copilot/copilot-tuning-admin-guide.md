---
title: "Microsoft 365 Copilot Tuning Admin Guide (Preview)"
f1.keywords:
ms.author: lauragra
author: lauragra
manager: calvind
ms.date: 07/03/2025
audience: Admin
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- m365copilot
- magic-ai-copilot
description: "Find admin guidance for enabling Copilot Tuning in your organization."
---

# Microsoft 365 Copilot Tuning admin guide (preview)

Microsoft 365 Copilot Tuning enables organizations to securely fine-tune large language models (LLMs) using tenant-specific data, and to deploy declarative agents based on those fine-tuned models to Microsoft 365 Copilot. Administrators retain full control over who can fine-tune models, how they're published, and how they're governed throughout their lifecycle.

This article provides information about the governance controls that are available for Copilot Tuning in the Microsoft 365 admin center.

> [!NOTE]
> Copilot Tuning is currently available for Early Access Preview (EAP). For details about how to enroll, see [Prerequisites](#prerequisites).

## Prerequisites

To manage Copilot Tuning governance controls, make sure that you meet the following prerequisites:

- Copilot Tuning Early Access Preview (EAP) enrollment. To enroll in the EAP:
    - Your tenant must have at least 5,000 active Microsoft 365 Copilot add-on licenses.
    - An AI Admin must accept the EAP terms on behalf of the organization.
    > [!NOTE]
    > If Copilot Tuning isn't available in your tenant, contact your Microsoft Customer Success Account Manager (CSAM) to request EAP provisioning.
- You must be an AI Admin.
- Copilot extensibility is enabled via **Copilot settings** in the admin center. For more information, see [Manage agents for Microsoft 365 Copilot in the Microsoft 365 admin center](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#enable-or-disable-copilot-extensibility).
- If you block new Power Platform connectors by default via Data Loss Prevention (DLP) policies, run one of the following commands to reclassify the connector.

    ```powershell
    $connectorsToReclassify = @([pscustomobject]@{ 
     id = "/providers/Microsoft.PowerApps/apis/shared_tenantcopilot" 
     name = "Tenant Copilot" 
     type = "providers/Microsoft.PowerApps/apis" 
    }) 
    Add-ConnectorsToPolicy -PolicyName {TENANT_DLP_POLICY_GUID} -Connectors $connectorsToReclassify -Classification {'Confidential'}
    ```

    ```powershell
    $connectorsToReclassify = @([pscustomobject]@{ 
     id = "/providers/Microsoft.PowerApps/apis/shared_tenantcopilot" 
     name = "Tenant Copilot" 
     type = "providers/Microsoft.PowerApps/apis" 
    }) 
    Add-ConnectorsToPolicy -PolicyName {TENANT_DLP_POLICY_GUID} -Connectors $connectorsToReclassify -Classification {'General'} 
    ```

    For more information, see [Add-ConnectorsToPolicy](/powershell/module/microsoft.powerapps.administration.powershell/add-connectorstopolicy).


## What is Copilot Tuning?

Copilot Tuning is a self-serve, secure Microsoft 365 offering for fine-tuning LLMs using your organization's own data. It allows for a self-service workflow where model makers select datasets and Copilot Studio seamlessly handles data preparation, model training, and evaluation. This is suited for low-code domain adaptation tasks with minimal engineering overhead. 

After a model is fine-tuned, users can create and deploy declarative agents based on the model to Microsoft 365 Copilot. These agents surface in Word, Teams, Outlook, and other Microsoft 365 apps to perform tasks such as legal clause generation, incident report summarization, or contract drafting.

For more information, see [Copilot Tuning overview](copilot-tuning-overview.md).

## Enable Copilot Tuning

To activate the Copilot Tuning service and scope its availability:

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com) and sign in with your AI Administrator account.
2. Go to **Copilot** > **Copilot settings**.
   :::image type="content" source="media/copilot-tuning-admin-guide/copilot-settings.png" alt-text="Screenshot of Copilot settings in the admin center." lightbox="media/copilot-tuning-admin-guide/copilot-settings.png" border="false":::
3. Choose **Copilot Tuning**, and choose **Accept** to accept the [EAP terms](https://go.microsoft.com/fwlink/?linkid=2312708).
    :::image type="content" source="media/copilot-tuning-admin-guide/copilot-tuning-settings.png" alt-text="Screenshot of Copilot Tuning settings in the admin center." lightbox="media/copilot-tuning-admin-guide/copilot-tuning-settings.png" border="false":::
    
    > [!NOTE]
    > The **Copilot Tuning** setting is only available if your tenant meets the criteria described in the [Prerequisites](#prerequisites) section.

4. Choose **Specific users in your organization** and add the users in your organization who can create task-specific models. For more information, see [Manage Copilot Tuning settings](#manage-copilot-tuning-settings).

## Manage Copilot Tuning settings

Fine-grained access controls ensure that only authorized users within the tenant can initiate fine-tuning or publishing models. You can manage this access by specifying users and security groups for these controls.

### Configure model makers

Designate users who are authorized to use Copilot Tuning to fine-tune task-specific models. These model makers are generally subject matter experts (SMEs) within a particular part of the organization like marketing, finance, or legal. The users that you designate as model makers are then able to access the Copilot Tuning workflow in Copilot Studio.

You can designate up to 10 users to be model makers. If you need more than 10 model makers in your organization, reach out to Copilot Tuning support or your Microsoft account team.

When you add a user to Copilot Tuning, they receive an email with instructions to get started. You can also use the **Copilot Tuning** control in the admin center to remove users from Copilot Tuning.

### Manage tuned task-specific models

You can review and manage the set of models that model makers create and publish via the **Copilot Tuning** control in the admin center.

:::image type="content" source="media/copilot-tuning-admin-guide/manage-models.png" alt-text="Screenshot of Copilot Tuning settings in the admin center with Manage task-specific models selected." lightbox="media/copilot-tuning-admin-guide/manage-models.png" border="false":::

Choose any published model to review the associated security groups and update them as needed.

You can also remove a published model by choosing **Remove this model**.

## Related content

- [Copilot Tuning overview](copilot-tuning-overview.md)
