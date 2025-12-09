---
title: Data Residency for Viva Connections
description: Data Residency for Viva Connections
ms.author: v-fahasen
author: fhasen-msft
manager: Justin.Giammona
ms.service: microsoft-365-enterprise
ms.subservice: advanced-data-residency
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 02/11/2025
ms.reviewer: jugiammo
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- must-keep
---

# Data Residency for Viva Connections

## Overview

Service documentation: [Overview: Viva Connections](/viva/connections/viva-connections-overview)

Capability Summary: Microsoft Viva Connections is your gateway to a modern employee experience designed to keep everyone engaged and informed. Viva Connections is a customizable app in Microsoft Teams that gives everyone a personalized destination to discover relevant news, conversations, and the tools they need to succeed. Data storage is related to the following Viva Connections Components: Dashboard and feed.

Viva Connections provides **Tier 1 (Data at Rest)** commitments as part of Microsoft's Local Region Data Residency (LRDR) framework. These commitments guarantee where customer data is stored. For more information about the LRDR framework and commitment tiers, see [Overview and Definitions](m365-dr-overview.md).

## Data Residency Commitments Available

### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign-up country/region included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_.
1. The Viva Connections subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

**Tier 1 Commitment (Data at Rest):**

Refer to the [ADR Commitment page](m365-dr-commitments.md#viva-connections) for the specific Tier 1 customer data at rest commitment for Viva Connections.

### Migration

Data is stored within Exchange Online, SharePoint and Microsoft Teams. Migration processes are handled by the applicable/relevant workloads.

### How can I determine customer data location?

You can find the actual data location in Tenant Admin Center. As a tenant administrator you can find the actual data location, for committed data, by navigating to **Admin -> Settings -> Org Settings -> Organization Profile -> Data Location**.
