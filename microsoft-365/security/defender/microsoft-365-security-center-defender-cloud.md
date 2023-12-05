---
title: Microsoft Defender for Cloud in Microsoft Defender XDR
description: Learn about changes in Microsoft Defender XDR with the Microsoft Defender for Cloud integration.
keywords: Getting started with Microsoft 365 Defender, Microsoft Defender for Cloud
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: diannegali
author: diannegali
manager: dansimp
ms.date: 11/15/2023
audience: ITPro
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
ms.collection: 
- m365-security 
- tier2
ms.custom: admindeeplinkDEFENDER
---

# Microsoft Defender for Cloud in Microsoft Defender XDR

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender XDR](microsoft-365-defender.md)
- [Microsoft Defender for Cloud](/defender-for-cloud/)

> [!IMPORTANT]
> The integration of Microsoft Defender for Cloud in Microsoft Defender XDR is now in preview. Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here.

[Microsoft Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) is now part of Microsoft Defender XDR. Security teams can now access Defender for Cloud alerts and incidents within the Microsoft Defender XDR portal, providing richer context to investigations that span cloud resources, devices, and identities. In addition, security teams can get the complete picture of an attack, including suspicious and malicious events that happen in their cloud environment, through immediate correlations of alerts and incidents.

Microsoft Defender XDR combines protection, detection, investigation, and response capabilities to protect attacks on device, email, collaboration, identity, and cloud apps. The portal’s detection and investigation capabilities are now extended to cloud entities, offering security operations teams a single pane of glass to significantly improve their operational efficiency.

Moreover, the Defender for Cloud incidents and alerts are now part of [Microsoft Defender XDR's public API](api-overview.md). This integration allows exporting of security alerts data to any system using a single API.

## Prerequisite

To ensure access to Defender for Cloud alerts in Microsoft Defender XDR, you must be subscribed to any of the plans listed in [Connect your Azure subscriptions](/defender-for-cloud/connect-azure-subscription/).

### Required permissions

You must be a global administrator or a security administrator in Azure Active Directory to view Defender for Cloud alerts and correlations. For users that don't have these roles, the integration is available only by applying [unified role-based access control (RBAC) roles](manage-rbac.md) for Defender for Cloud.

> [!NOTE]
> The permission to view Defender for Cloud alerts and correlations is automatic for the entire tenant. Viewing for specific subscriptions is not supported.

## Investigation experience in the Microsoft Defender XDR portal

The following section describes the detection and investigation experience in Microsoft Defender XDR with Defender for Cloud alerts.

> [!div class="mx-tdCol2BreakAl"]
> |Area   |Description   |
> |----------|-----------|
> |Incidents|All Defender for Cloud incidents will be integrated to Microsoft Defender XDR.</br></br> - Searching for cloud resource assets in the [incident queue](incident-queue.md) is supported.</br> - The [attack story](investigate-incidents.md#attack-story) graph will show the cloud resource.</br> - The [assets tab](investigate-incidents.md#assets) in an incident page will show the cloud resource.</br> - Each virtual machine has its own device page containing all related alerts and activity.</br></br> There will be no duplication of incidents from other Defender workloads.|
> |Alerts|All Defender for Cloud alerts, including multi-cloud, internal and external providers' alerts will be integrated to Microsoft Defender XDR. Defender for Cloud alerts will show on the Microsoft Defender XDR [alert queue](/defender-endpoint/alerts-queue-endpoint-detection-response/).</br></br> The *cloud resource* asset will show up in the Asset tab of an alert. Resources are clearly identified as an Azure, Amazon, or a Google Cloud resource.</br></br>Defender for Cloud alerts will automatically be associated with a tenant.</br></br>There will be no duplication of alerts from other Defender workloads.|
> |Alert and incident correlation|Alerts and incidents are automatically correlated, providing robust context to security operations teams to understand the complete attack story in their cloud environment.|
> |Threat detection|Accurate matching of virtual entities to device entities to ensure precision and effective threat detection.|
> |Unified API|Defender for Cloud alerts and incidents are now included in [Microsoft Defender XDR's public API](api-overview.md), allowing customers to export their security alerts data into other systems using one API.|

## Impact to Microsoft Sentinel users

Microsoft Sentinel customers integrating Defender for Cloud alerts are required to do the following configuration changes to ensure duplicate incidents aren't created:

- Connect the **Tenant-based Microsoft Defender for Cloud (Preview)** connector to synchronize all your collection of subscriptions with tenant-based Defender for Cloud incidents that are streaming through the Microsoft Defender XDR Incidents connector.
- Disconnect the legacy subscription-based Defender for Cloud alerts connector to prevent incident duplicates.
- Turn off Analytics rules used to create incidents from Defender for Cloud alerts, including rules created through the Microsoft incident creation rules. Incidents are created automatically in the Defender portal.
- Use Automation rules or use the [built-in tuning capabilities in the Defender portal](investigate-alerts.md#tune-an-alert) to suppress certain alerts.

The following change should also be noted:

- The action to relate alerts to Microsoft Defender XDR incidents is removed.

### Turn off Defender for Cloud alerts

The alerts for Defender for Cloud are turned on by default. To maintain your subscription-based settings and avoid tenant-based sync or to opt out from the experience, perform the following steps:

1. In the Microsoft Defender XDR portal, go to **Settings** > **Microsoft Defender XDR**.
2. In **Alert service settings**, look for **Microsoft Defender for Cloud alerts**.
3. Select **No alerts** to turn off all Defender for Cloud alerts. Selecting this option stops the ingestion of new Defender for Cloud alerts to the portal. Alerts previously ingested remain in an alert or incident page.

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
