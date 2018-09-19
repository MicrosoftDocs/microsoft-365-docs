---
title: "Privileged access management for your Microsoft 365 Enterprise test environment"
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 09/16/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom: Ent_TLGs
description: Use this Test Lab Guide to enable privileged access management your Microsoft 365 Enterprise test environment.
---

# Privileged access management for your Microsoft 365 Enterprise test environment

With the instructions in this article, you configure privileged access management to increase security in your Microsoft 365 Enterprise test environment.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> Click [here](https://aka.ms/m365etlgstack) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.
  
## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to configure privileged access management in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure increased Office 365 security in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing automated licensing and group membership does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for a Windows Server AD forest. It is provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization. 


## Phase 2: Configure privileged access management

In this phase, you enable privileged access management for your Microsoft 365 Enterprise test environment. For additional details and an overview of privileged access management, see [Privileged access management in Office 365](https://docs.microsoft.com/office365/securitycompliance/privileged-access-management-overview).

Follow these steps to set up and use privileged access in your Office 365 organization:

Step 1: Create an approver's group
Before you start using privilege access, determine who will have approval authority for incoming requests for access to elevated and privileged tasks. Any user who is part of the Approvers’ group will be able to approve access requests. This is enabled by creating a mail-enabled security group in Office 365.

Step 2: Enable privileged access
Privileged access needs to be explicitly turned on in Office 365 with the default approver group and including a set of system accounts that you’d want to be excluded from the privileged access management access control.

Step 3: Create an access policy
Creating an approval policy allows you to define the specific approval requirements scoped at individual tasks. The approval type options are Auto or Manual.

Step 4: Submit/approve privileged access requests
Once enabled, privileged access requires approvals for executing any task that has an associated approval policy defined. Users needing to execute tasks included in the an approval policy must request and be granted access approval in order to have permissions necessary to execute the task.

## Phase 3: Examine Office 365 security tools and logs

In this phase, you look at built-in services that inform you about security events and measure your overall security posture.



## Next step

Explore additional [information protection](m365-enterprise-test-lab-guides.md#information-protection) features and capabilities in your test environment.

## See also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)