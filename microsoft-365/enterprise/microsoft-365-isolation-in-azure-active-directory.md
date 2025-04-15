---
title: "Microsoft 365 Isolation and Access Control in Microsoft Entra ID"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 06/28/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Strat_O365_IP
- M365-security-compliance
- must-keep
f1.keywords:
- NOCSH
description: In this article, learn how Isolation and Access Control work to keep data for multiple tenants isolated from each other within Microsoft Entra ID.
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 Isolation and Access Control in Microsoft Entra ID

Microsoft Entra ID was designed to host multiple tenants in a highly secure way through logical data isolation. Access to Microsoft Entra ID is gated by an authorization layer. Microsoft Entra ID isolates customers using tenant containers as security boundaries to safeguard a customer's content so that the content can't be accessed or compromised by co-tenants. Three checks are performed by Microsoft Entra authorization layer:

- Is the principal enabled for access to Microsoft Entra tenant?
- Is the principal enabled for access to data in this tenant?
- Is the principal's role in this tenant authorized for the type of data access requested?

No application, user, server, or service can access Microsoft Entra ID without the proper authentication and token or certificate. Requests are rejected if they aren't accompanied by proper credentials.

Effectively, Microsoft Entra ID hosts each tenant in its own protected container, with policies and permissions to and within the container solely owned and managed by the tenant.

![Azure container.](../media/office-365-isolation-azure-container.png)

The concept of tenant containers is deeply ingrained in the directory service at all layers, from portals all the way to persistent storage. Even when multiple Microsoft Entra tenant metadata is stored on the same physical disk, there's no relationship between the containers other than what is defined by the directory service, which in turn is dictated by the tenant administrator. There can be no direct connections to Microsoft Entra storage from any requesting application or service without first going through the authorization layer.

In the following example, Contoso and Fabrikam both have separate, dedicated containers, and even though those containers can share some of the same underlying infrastructure, such as servers and storage, they remain separate and isolated from each other, and gated by layers of authorization and access control.

![Azure dedicated containers.](../media/office-365-isolation-azure-dedicated-containers.png)

In addition, there are no application components that can execute from within Microsoft Entra ID, and it isn't possible for one tenant to forcibly breach the integrity of another tenant, access encryption keys of another tenant, or read raw data from the server.

By default, Microsoft Entra disallows all operations issued by identities in other tenants. Each tenant is logically isolated within Microsoft Entra ID through claims-based access controls. Reads and writes of directory data are scoped to tenant containers, and gated by an internal abstraction layer and a role-based access control (RBAC) layer, which together enforce the tenant as the security boundary. Every directory data access request is processed by these layers and every access request in Microsoft 365 is policed by the previous logic.

Microsoft Entra ID has North America, U.S. Government, European Union, Germany, and World Wide partitions. A tenant exists in a single partition, and partitions can contain multiple tenants. Partition information is abstracted away from users. A given partition (including all the tenants within it) is replicated to multiple datacenters. The partition for a tenant is chosen based on properties of the tenant (for example, the country code). Secrets and other sensitive information in each partition is encrypted with a dedicated key. The keys are generated automatically when a new partition is created.

Microsoft Entra system functionalities are a unique instance to each user session. In addition, Microsoft Entra ID uses encryption technologies to provide isolation of shared system resources at the network level to prevent unauthorized and unintended transfer of information.
