---
title: Microsoft Defender for Cloud in Microsoft Defender XDR
description: Learn about changes in Microsoft Defender XDR with the Microsoft Defender for Cloud integration.
keywords: Getting started with Microsoft Defender XDR, Microsoft Defender for Cloud
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: diannegali
author: diannegali
manager: dansimp
ms.date: 01/15/2024
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

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender XDR](microsoft-365-defender.md)
- [Microsoft Defender for Cloud](/azure/defender-for-cloud/)

[Microsoft Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) is now part of Microsoft Defender XDR. Security teams can now access Defender for Cloud alerts and incidents within the Microsoft Defender portal, providing richer context to investigations that span cloud resources, devices, and identities. In addition, security teams can get the complete picture of an attack, including suspicious and malicious events that happen in their cloud environment, through immediate correlations of alerts and incidents.

Microsoft Defender XDR combines protection, detection, investigation, and response capabilities to protect attacks on device, email, collaboration, identity, and cloud apps. The portal's detection and investigation capabilities are now extended to cloud entities, offering security operations teams a single pane of glass to significantly improve their operational efficiency.

Moreover, the Defender for Cloud incidents and alerts are now part of [Microsoft Defender XDR's public API](api-overview.md). This integration allows exporting of security alerts data to any system using a single API.

## Prerequisite

To ensure access to Defender for Cloud alerts in Microsoft Defender XDR, you must be subscribed to any of the plans listed in [Connect your Azure subscriptions](/azure/defender-for-cloud/connect-azure-subscription).

### Required permissions

You must be a global administrator or a security administrator in Azure Active Directory to view Defender for Cloud alerts and correlations. For users that don't have these roles, the integration is available only by applying [unified role-based access control (RBAC) roles](manage-rbac.md) for Defender for Cloud.

> [!NOTE]
> The permission to view Defender for Cloud alerts and correlations is automatic for the entire tenant. Viewing for specific subscriptions is not supported.

## Investigation experience in the Microsoft Defender portal

The following section describes the detection and investigation experience in Microsoft Defender XDR with Defender for Cloud alerts.

> [!div class="mx-tdCol2BreakAl"]
> |Area   |Description   |
> |----------|-----------|
> |Incidents|All Defender for Cloud incidents will be integrated to Microsoft Defender XDR.</br></br> - Searching for cloud resource assets in the [incident queue](incident-queue.md) is supported.</br> - The [attack story](investigate-incidents.md#attack-story) graph will show the cloud resource.</br> - The [assets tab](investigate-incidents.md#assets) in an incident page will show the cloud resource.</br> - Each virtual machine has its own device page containing all related alerts and activity.</br></br> There will be no duplication of incidents from other Defender workloads.|
> |Alerts|All Defender for Cloud alerts, including multi-cloud, internal and external providers' alerts will be integrated to Microsoft Defender XDR. Defender for Cloud alerts will show on the Microsoft Defender XDR [alert queue](/microsoft-365/security/defender-endpoint/alerts-queue-endpoint-detection-response).</br></br> The *cloud resource* asset will show up in the Asset tab of an alert. Resources are clearly identified as an Azure, Amazon, or a Google Cloud resource.</br></br>Defender for Cloud alerts will automatically be associated with a tenant.</br></br>There will be no duplication of alerts from other Defender workloads.|
> |Alert and incident correlation|Alerts and incidents are automatically correlated, providing robust context to security operations teams to understand the complete attack story in their cloud environment.|
> |Threat detection|Accurate matching of virtual entities to device entities to ensure precision and effective threat detection.|
> |Unified API|Defender for Cloud alerts and incidents are now included in [Microsoft Defender XDR's public API](api-overview.md), allowing customers to export their security alerts data into other systems using one API.|

## Impact to Microsoft Sentinel users

Microsoft Sentinel customers [integrating Microsoft Defender XDR incidents](/azure/sentinel/microsoft-365-defender-sentinel-integration) *and* ingesting Defender for Cloud alerts are required to make the following configuration changes to ensure that duplicate alerts and incidents aren't created:

- Connect the **Tenant-based Microsoft Defender for Cloud (Preview)** connector to synchronize collection of alerts from all your subscriptions with tenant-based Defender for Cloud incidents that are streaming through the Microsoft Defender XDR Incidents connector.
- Disconnect the **Subscription-based Microsoft Defender for Cloud (Legacy)** alerts connector to prevent alert duplicates.
- Turn off any analytics rules&mdash;either [*Scheduled* (regular query-type) or *Microsoft security* (incident creation)](/azure/sentinel/detect-threats-built-in) rules&mdash;used to create incidents from Defender for Cloud alerts. Defender for Cloud Incidents are created automatically in the Defender portal and synchronized with Microsoft Sentinel.
- If necessary, [use automation rules](/azure/sentinel/create-manage-use-automation-rules) to close noisy incidents, or use the [built-in tuning capabilities in the Defender portal](investigate-alerts.md#tune-an-alert) to suppress certain alerts.

The following change should also be noted:

- The action to relate alerts to Microsoft Defender XDR incidents is removed.

Learn more at [Ingest Microsoft Defender for Cloud incidents with Microsoft Defender XDR integration](/azure/sentinel/ingest-defender-for-cloud-incidents).

### Turn off Defender for Cloud alerts

The alerts for Defender for Cloud are turned on by default. To maintain your subscription-based settings and avoid tenant-based sync or to opt out from the experience, perform the following steps:

1. In the Microsoft Defender portal, go to **Settings** > **Microsoft Defender XDR**.
2. In **Alert service settings**, look for **Microsoft Defender for Cloud alerts**.
3. Select **No alerts** to turn off all Defender for Cloud alerts. Selecting this option stops the ingestion of new Defender for Cloud alerts to the portal. Alerts previously ingested remain in an alert or incident page.

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
