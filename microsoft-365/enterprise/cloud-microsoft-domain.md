---
title: "Unified cloud.microsoft domain for Microsoft 365 apps"
description: Describes the new cloud.microsoft domain for Microsoft 365 apps
author: dansimp
ms.author: dansimp
manager: dansimp
ms.date: 02/13/2023
ms.topic: overview
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection:
ms.custom: 
ms.reviewer: dansimp
search.appverid: MET150
f1.keywords:
audience:
content_well_notification:
- AI-contribution
---

# Unified cloud.microsoft domain for Microsoft 365 apps

Microsoft is unifying user-facing Microsoft 365 apps and services to a single and consistent domain: `cloud.microsoft`.

The growth of Microsoft cloud services led to the expansion of the domain space they occupy, resulting in hundreds of domains. This fragmentation is a challenge for end user navigation, administrative simplicity, and the development of cross-app experiences.

The `.microsoft` top-level domain is exclusive to Microsoft. The new domain doesn’t have traditional suffixes such as `.com` or `.net` in the end. This is by design. `cloud.microsoft` resides under the `.microsoft` top-level domain, for which Microsoft is a registry operator and the sole registrant. This domain allows for extra security, privacy, and protection against spoofing when you interact with apps within that domain. You can trust that any website or app that ends with `cloud.microsoft` is an official Microsoft product or service.

## Benefits of a unified domain

Consolidating authenticated user-facing Microsoft 365 experiences to a single domain benefits customer in several ways. For end users, it streamlines the overall experience by reducing sign-ins, redirects, and delays when navigating across apps. For admins, it reduces the complexity of allowlists that are required to help your organization stay secure and productive. For all our customers – and our developers – this change helps align for better and tighter integration across the Microsoft 365 ecosystem by streamlining development and improving performance of cross-app experiences.

'Dot brand' top-level domains like `.microsoft` enhance security, trustworthiness, and integrity. Microsoft has exclusive rights to the `.microsoft` top-level domain, enabling enhanced security protocols and governance controls. All experiences on the `.microsoft` domain are legitimate and authentic, as Microsoft is the registry operator and sole registrant.

## Requirements for admins

Organizations currently following standard [Microsoft network guidance on domains and service endpoints](/microsoft-365/enterprise/urls-and-ip-address-ranges) shouldn't see an impact to the Microsoft 365 experience. The *.cloud.microsoft domain is already added to the official list of Office 365 URLs and IP address ranges. 

## Microsoft product and service URLs
The following Microsoft 365 products and services are now available in the `cloud.microsoft` domain.

|**Service**|**URL**|
|:-----|:-----|
|Microsoft 365 | m365.cloud.microsoft|
|Microsoft Forms | forms.cloud.microsoft|
|Microsoft Loop | loop.cloud.microsoft|
|Microsoft 365 Service Health Portal | status.cloud.microsoft|
|Microsoft Mesh | mesh.cloud.microsoft|
|Microsoft OneNote | onenote.cloud.microsoft|
|Microsoft Outlook | outlook.cloud.microsoft|
|Microsoft Setup | setup.cloud.microsoft|
|Microsoft Sway | sway.cloud.microsoft|
|Microsoft Viva Engage | engage.cloud.microsoft|
|Microsoft Viva Goals | goals.cloud.microsoft|
|Microsoft Viva Home | viva.cloud.microsoft|
|Microsoft Viva Insights | insights.cloud.microsoft|
|Microsoft Viva Learning | learning.cloud.microsoft|
|Microsoft Viva Pulse | pulse.cloud.microsoft|
|Microsoft Viva Skills | skills.cloud.microsoft|


## See also

- [Introducing cloud.microsoft: a unified domain for Microsoft 365 apps and services](https://techcommunity.microsoft.com/t5/microsoft-365-blog/introducing-cloud-microsoft-a-unified-domain-for-microsoft-365/ba-p/3804961)
- [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges)