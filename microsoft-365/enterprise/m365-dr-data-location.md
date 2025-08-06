---
title: Learn More about The Data Location Card
description: Learn More about The Data Location Card
ms.author: scotv
author: fhasen-msft
manager: bpardi
ms.service: microsoft-365-enterprise
ms.subservice: advanced-data-residency
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 02/24/2025
ms.reviewer: fahasen
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- must-keep
---

# Learn More about The Data Location Card

This article is designed to help customers and Tenant Global Admins understand how they can determine where their in-scope customer data for Microsoft 365 services is currently stored at rest, and if their Tenant has a [_Durable Commitment on Data Location_](m365-dr-overview.md#table-1-definitions-and-terms).

> [!NOTE]
> A new _Data Location Card (DLC)_ experience is rolling out now to Microsoft 365 customer _Tenants_. During the phased rollout, _Tenants_ might see a different _Data Location Card_ view within the Microsoft 365 admin center than the latest enhancements shown in this article. Global Tenant Admins can refer to the following data location details in anticipation of the rollout.

## Locating Where your _Tenant’s_ Data is Stored at Rest

The _Data Location Card (DLC)_ in the Microsoft 365 admin center allows Tenant Global Admins to see where in-scope customer data associated with certain _Microsoft 365 Core Services_ and _Microsoft 365 Expanded Services_ is stored at rest. To access the _Data Location Card_, select the **Data location** section in the Microsoft 365 admin center by navigating to **Admin** > **Settings** > **Org settings** > **Organization profile** > **Data location**.

## Overview of the "Data at Rest" Locations

The _Data Location Card_ displays three columns outlining the covered _Services_, the _Current Geography_, and the _Committed Geography_.

The _Current Geography_ refers to the location where the in-scope customer data is currently stored, while the _Committed Geography_ refers to the location where Microsoft stores in-scope customer data based on the [data residency commitments applicable to the _Tenant_](m365-dr-overview.md#overview-of-data-residency).

## Finding The Commitments Applicable to a Microsoft 365 Service

Different Microsoft 365 services might be covered by different commitments depending on several factors, including the date of a customer’s subscription, the date that a _Tenant_ was provisioned, the _Default Geography_ of a _Tenant_, and if _Product Terms_ apply to certain Microsoft 365 services. The data location on the _DLC_ displays the most conservative _Durable Commitment on Data Location_.

For simplicity, the _Data Location Card_ only shows a single _Committed Geography_ based on a customer’s various commitments for their _Tenant_.

If a _Tenant_:

- Has an active Advanced Data Residency (ADR) subscription, then the _Committed Geography_ reflects the _Local Region Geography_ that is associated with the ADR commitment.

- Doesn't have _ADR_ and qualifies for data residency based on [Product Terms](m365-dr-product-terms-dr.md), the applicable _Geography_ associated with the _Tenant’s Product Terms_ is listed.

- Doesn't have _ADR_, and doesn't qualify for data residency based on [Product Terms](m365-dr-product-terms-dr.md), but the _Tenant’s Default Geography_ is in the _European Union_ or _EFTA_, then the _Tenant’s Committed Geography_ is the _European Union/EFTA_.

- If a _Tenant_ doesn't have any of the preceding conditions, Microsoft stores the in-scope customer data where it best enables Microsoft to provide services to customers, and that data storage location is subject to change without notice. The _DLC_ also displays "**No Commitment**" in the _Committed Geography_ field.

## Understanding Mismatches Between _Current Geography_ and _Committed Geography_

A discrepancy might appear between _Current Geography_ and _Committed Geography_ in certain circumstances, including the following scenarios:

1. **A customer has procured an _Advanced Data Residency (ADR)_ commitment for their _Tenant_, and the Tenant Global Admin has not yet [opted-in to migration](advanced-data-residency.md#data-migration-management).** If a Tenant Global Admin has not yet opted-in to migration, the _Data Location Card_ shows a mismatch between _Committed Geography_ and _Current Geography_. To rectify this discrepancy, the Tenant Global Admin must opt in to migration and allow sufficient time for the migration to occur (see #2).

    :::image type="content" source="media\data-residency\m365-dlc-move-opt-in-0725.png" alt-text="Screenshot of Data Location View Before Migration Opt-in.":::

1. **A customer has procured an _Advanced Data Residency (ADR)_ commitment on data location for their _Tenant_ and has [opted-in to migration](advanced-data-residency.md#data-migration-management).** While the _Tenant’s Committed Geography_ is updated to reflect the _Tenant’s_ new commitment, it [takes some time](https://go.microsoft.com/fwlink/p/?LinkId=523897) for the services to process the request and migrate in-scope customer data to the new location. The _Tenant's Data Location Card_ continues to display a mismatch between _Current Geography_ and _Committed Geography_ until the data migration effort is complete.

    **Example**: A _Tenant's Data Location Card_ displays a _Current Geography_ of "**Asia Pacific**", but the customer recently purchased _ADR_ for Indonesia for this _Tenant_. After opting-in to data migration, the _Tenant’s Committed Geography_ is updated to "**Indonesia**". However, the _Tenant’s Current Geography_ continues to display "**Asia Pacific**" until the in-scope customer data is migrated. When an individual service completes data migration efforts, the _Tenant’s Data Location Card_ is updated and displays a _Current Geography_ of "**Indonesia**".

    :::image type="content" source="media\data-residency\m365-dlc-move-in-progress-0725.png" alt-text="Screenshot of Data Location View Migration in Progress.":::

1. **A customer’s _Tenant_ is eligible for data residency based on _Privacy and Security Product Terms_, but the customer didn't elect to take part in the _Legacy Move Program_**. If a customer’s _Tenant_ is eligible for data residency based on _Product Terms_, but the Tenant Global Admin didn't elect their _Tenant_ to participate in the _Legacy Move Program_ then the _Tenant’s Data Location Card_ may display a mismatch between the _Tenant’s Current Geography_ and _Committed Geography_.

    Data residency based on _Product Terms_ doesn't include data migration into _Local Region Geographies_. _Tenants_ remain eligible for a data residency commitment for in-scope customer data associated with _Microsoft 365 Core Services_ in their respective _Local Region Geography_—once their in-scope customer data is migrated to that location. To initiate migration, customers must purchase the required number of _ADR_ licenses and opt-in to the migration process.

    :::image type="content" source="media\data-residency\m365-dlc-no-legacy-move-opt-in-0725.png" alt-text="Screenshot of Data Location View For Customer Who Didn't Opt-in To Legacy Move Program.":::

1. **_ADR_ [licensing requirements](advanced-data-residency.md#licensing-requirements) are not met**. If a _Tenant_ was once covered by an _ADR_ commitment, and fails to meet the [licensing requirements](advanced-data-residency.md#licensing-requirements) – the _Tenant’s Data Location Card_ reflects this change in the _Committed Geography_.

    **Example**: If an Indonesian customer no longer meets the required number of _ADR_ licenses needed to retain in-scope customer data in Indonesia, the _Tenant’s Committed Geography_ changes from "**Indonesia**" to "**No Commitment**" in their _Data Location Card_.

    :::image type="content" source="media\data-residency\m365-dlc-adr-insufficient-seat-coverage-0725.png" alt-text="Screenshot of Data Location View For Customer With Insuffienct ADR Seat Coverage.":::

1. **A _Tenant’s Current Geography_ for the Microsoft 365 services displays a _Local Region Geography_, but its _Committed Geography_ displays a _Macro Region Geography_**. In this case, the _Tenant’s_ in-scope customer data is compliant with the _Tenant’s Committed Geography_. Information about the _Tenant’s_ current data location (that is, _Current Geography_) is more granular, indicating a specific location or set of locations.

    **Example**: A French _Tenant_ with a _Current Geography_ of "**France**" and a _Committed Geography_ of "**European Union/EFTA**". Since "**France**" is part of the _European Union_, in-scope customer data is also within the "**European Union/EFTA**". In this example, "**France**" is a more specific and detailed location of where in-scope customer data is stored.

    :::image type="content" source="media\data-residency\m365-dlc-committed-geography-macro-region-0725.png" alt-text="Screenshot of Data Location View For Customer With Macro Region Geography for Committed Geography.":::

1. **No data location is displayed under the _Committed Geography_ field**: In this case, information about the _Tenant’s Current Geography_ is accurate, and the _Tenant_ simply doesn't have any _Durable Commitment on Data Location_.

    **Example**: A _Tenant_ with a _Default Geography_ of Laos, that isn't currently eligible to purchase _ADR_ or _Multi-Geo_ and doesn't qualify for data residency based on _Product Terms_ or _EUDB_, sees a _Current Geography_ where their in-scope customer data is currently stored, and "**No Commitment**" in the _Committed Geography_ field.

    :::image type="content" source="media\data-residency\m365-dlc-not-eligible-for-durable-commitment-0725.png" alt-text="Screenshot of Data Location View For Customer With No Durable Commitments On Data Location.":::

## Microsoft 365 Services without a _Current Geography_ or _Committed Geography_

If there's no data location shown (indicated by a "-" next to a Microsoft 365 service), a _Tenant_ doesn't currently have an active subscription for this service.

In the following example, the _Tenant_ doesn't have a Microsoft 365 Copilot subscription.

:::image type="content" source="media\data-residency\m365-dlc-no-m365-copilot-subscription-0725.png" alt-text="Screenshot of Data Location View For Customer With No Microsoft 365 Copilot Subscription.":::

## Data Location Card and _Microsoft 365 Multi-Geo Capabilities_

If a customer has a _Microsoft 365 Multi-Geo Capabilities_ data residency offering, then the new _Data Location Card_ experience reflects only the information related to the [_Tenant’s_ central location](microsoft-365-multi-geo.md#multi-geo-architecture). This is because the _Microsoft 365 Multi-Geo Capabilities_ offering allows Tenant Global Admins to store data in multiple locations. Information on _Satellite Locations_ isn't disclosed on the _Data Location Card_. For more information, please see the [Microsoft 365 Multi-Geo page](microsoft-365-multi-geo.md)

The _Tenant’s Data Location Card_ displays the following message:

:::image type="content" source="media\data-residency\m365-dlc-multigeo-0725.png" alt-text="Screenshot of Data Location View For Multi-Geo Customers.":::

## Microsoft 365 Services stored in "Europe"

Certain _Tenants_ might have their in-scope customer data stored in "**Europe**" but might not be provided with the _EUDB_ commitment based on the _Tenant’s Default Geography_. In these scenarios, users see a _Current Geography_ of "**Europe**" and an information message stating “This tenant doesn't have an [EU Data Boundary] (EUDB) data residency commitment.” at the bottom of the _DLC_. For more information on _EUDB_ eligibility, see [How to configure services for use in the EU Data Boundary](/privacy/eudb/eu-data-boundary-learn#how-to-configure-services-for-use-in-the-eu-data-boundary). For more information on _EUDB_ commitments, see the [Microsoft EU Data Boundary documentation](https://www.microsoft.com/trust-center/privacy/european-data-boundary-eudb?msockid=17b6c7f9a50068231a1fd4dea4ba694a) in the Microsoft Trust Center.

:::image type="content" source="media\data-residency\m365-dlc-no-eudb-commitment-0725.png" alt-text="Screenshot of Data Location View For Customer With No EUDB Commitment.":::
