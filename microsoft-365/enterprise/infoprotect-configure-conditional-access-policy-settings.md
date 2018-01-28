---
title: "Step 2: Configure conditional access policy settings"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/15/2017
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: ""
---

# Step 2: Configure conditional access policy settings

![This step is required and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Required-BothSKUs.png)

**Summary:** 

Conditional access policy settings provide additional security for sign-in and access to information for both user sign-in and for devices in your Microsoft 365 Enterprise deployment. These settings consist of two sets:

- **Common settings, regardless of workload:** See [Identity and device access policies overview](identity-device-policies.md) for the details of prerequisites and for common identity and device access policies for the baseline, sensitive, and highly regulated security levels.
- **Workload-specific settings:** For Exchange Online, implement the settings in [Secure email recommended policies](secure-email-recommended-policies.md) for the three levels of security. For SharePoint Online, implement the settings in both [Secure email recommended policies](secure-email-recommended-policies.md) and [Recommended secure document policies](sharepoint-file-access-policies.md). 

>[!Note]
>Although these conditional access settings provide additional security for identity and sign-in, they also affect sign-in for devices and device access and rely on Intune settings implemented in [Phase 5: Mobile device management](mobility-infrastructure.md). For this reason, these conditional access policies are described here, rather than [Phase 2: Identity](identity-infrastructure.md).
>

The result of this step is that you have configured conditional access policies for common settings, Exchange Online, and SharePoint Online for the three levels of security.

As an interim checkpoint, see the exit [exit criteria](infoprotect-exit-criteria.md#crit-infoprotect-step2) corresponding to this step.


## Next step

[Step 3: Configure classification for your environment](infoprotect-configure-classification.md)


