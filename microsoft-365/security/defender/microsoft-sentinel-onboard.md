---
title: Connect Microsoft Sentinel to Microsoft Defender XDR (preview)
description: Learn how to connect your Microsoft Sentinel environment to Microsoft Defender XDR to unify your security operations.
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: cwatson
author: cwatson-cat
ms.localizationpriority: high
manager: dansimp
audience: ITPro
ms.collection: 
    - m365-security
    - m365solution-getstarted
    - highpri
    - tier1
ms.topic: how-to
search.appverid: 
  - MOE150
  - MET150
ms.date: 11/10/2023
---

# Connect Microsoft Sentinel to Microsoft Defender XDR (preview)

**Applies to:**
- Microsoft Defender XDR
- Microsoft Sentinel

Combine the power of Microsoft Sentinel with Microsoft Defender XDR into a single portal enhanced with the following features:

- Advanced hunting that spans Microsoft Sentinel and Microsoft Defender XDR 
- Unified incidents
- AI
- Automation
- Guided experiences
- Curated threat intelligence

> [!IMPORTANT]
> Information in this article relates to a prerelease product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## Prerequisites

Before you begin, review the feature documentation to understand the product changes and limitations. The feature documentation is provided with your invitation to participate in the preview.

The Microsoft Defender portal supports a single Microsoft Entra tenant and the connection to one workspace at a time.  In the context of this article, a workspace is a Log Analytics workspace with Microsoft Sentinel enabled.

To onboard and use Microsoft Sentinel in the Microsoft Defender portal, you must have the following resources and access:

- A Microsoft Entra tenant that’s allow-listed by Microsoft to connect a workspace through the Defender portal
- A Log Analytics workspace that has Microsoft Sentinel enabled
- The data connector for Microsoft Defender XDR (formerly named Microsoft Defender XDR) enabled in Microsoft Sentinel for incidents and alerts
- Microsoft Defender XDR onboarded to the Microsoft Entra tenant
- An Azure account with the appropriate roles to onboard and use Microsoft Sentinel in the Defender portal. The following table highlights some of the key roles needed.

  |Azure built-in role |Scope  |Reason |
  |---------|---------|---------|
  |[Owner](/azure/role-based-access-control/built-in-roles#owner) or </br>[User Access Administrator](/azure/role-based-access-control/built-in-roles#user-access-administrator) and [Microsoft Sentinel Contributor](/azure/role-based-access-control/built-in-roles#microsoft-sentinel-contributor) |- Subscription for Owner or User Access Administrator roles </br></br>- Subscription, resource group, or workspace resource for Microsoft Sentinel Contributor |To connect or disconnect a workspace with Microsoft Sentinel enabled|
  |[Microsoft Sentinel Reader](/azure/role-based-access-control/built-in-roles#microsoft-sentinel-reader) or a role with the following actions:</br>- Microsoft.OperationalInsights/workspaces/read</br>- Microsoft.OperationalInsights/workspaces/query/read</br>- Microsoft.SecurityInsights/Incidents/read</br>- Microsoft.SecurityInsights/incidents/comments/read</br>- Microsoft.SecurityInsights/incidents/relations/read</br>- Microsoft.SecurityInsights/incidents/tasks/read|Subscription, resource group, or workspace resource       |Query Sentinel data tables or view incidents        |
  |[Microsoft Sentinel Contributor](/azure/role-based-access-control/built-in-roles#microsoft-sentinel-contributor) or a role with the following actions:</br>- Microsoft.OperationalInsights/workspaces/read</br>- Microsoft.OperationalInsights/workspaces/query/read</br>- Microsoft.SecurityInsights/incidents/read</br>- Microsoft.SecurityInsights/incidents/write</br>- Microsoft.SecurityInsights/incidents/delete</br>- Microsoft.SecurityInsights/incidents/comments/read</br>- Microsoft.SecurityInsights/incidents/comments/write</br>- Microsoft.SecurityInsights/incidents/comments/delete</br>- Microsoft.SecurityInsights/incidents/relations/read</br>- Microsoft.SecurityInsights/incidents/relations/write</br>- Microsoft.SecurityInsights/incidents/relations/delete</br>- Microsoft.SecurityInsights/incidents/tasks/read</br>- Microsoft.SecurityInsights/incidents/tasks/write</br>- Microsoft.SecurityInsights/incidents/tasks/delete    |Subscription, resource group, or workspace resource  |Take investigative actions on incidents     |

  After you connect Microsoft Sentinel to the Defender portal, your existing Azure role-based access control (RBAC) permissions allow you to work with the Microsoft Sentinel features that you have access to. Continue to manage roles and permissions for your Microsoft Sentinel users from the Azure portal. Any Azure RBAC changes are reflected in the Defender portal. For more information about Microsoft Sentinel permissions, see [Roles and permissions in Microsoft Sentinel | Microsoft Learn](/azure/sentinel/roles) and [Manage access to Microsoft Sentinel data by resource | Microsoft Learn](/azure/sentinel/resource-context-rbac).

## Onboard Microsoft Sentinel

To connect a workspace that has Microsoft Sentinel enabled to Defender XDR, complete the following steps:

1. Go to the [Microsoft Defender portal](https://security.microsoft.com/) and sign in.
1. In Microsoft Defender XDR, select **Overview**.

   If you're invited to participate in the preview, you’ll see a banner with an option to connect a workspace.

1. Select **Connect a workspace**.
1. Choose the workspace you want to connect and select **Next**.
1. Read and understand the product changes associated with connecting your workspace. These changes include:

   - Log tables, queries, and functions in the Microsoft Sentinel workspace are also available in advanced hunting within Defender XDR.
   - The Microsoft Sentinel Contributor role is assigned to the Microsoft Threat Protection and WindowsDefenderATP apps within the subscription.
   - Active [Microsoft security incident creation rules](/azure/sentinel/create-incidents-from-alerts#using-microsoft-security-incident-creation-analytics-rules) are deactivated to avoid duplicate incidents. This change only applies to incident creation rules for Microsoft alerts and not to other analytics rules.
   - All alerts related to Defender XDR products are streamed directly from the main Defender XDR data connector to ensure consistency. Make sure you have incidents and alerts from this connector turned on in the workspace.

   Detailed changes and limitations are in the documentation shared with you as part of this private preview.

1. Select **Connect**.
1. You might need to wait up to 6 hours until all experiences are fully connected.

After your workspace is connected, the banner on the **Overview** page shows that your unified security information and event management (SIEM) and extended detection and response (XDR) is ready.  You’ll also see the **Overview** page updated with new sections that include metrics from Microsoft Sentinel like the number of data connectors and automation rules.

## Explore Microsoft Sentinel features in the Defender portal

After you connect your workspace to the Defender portal, you’ll see **Microsoft Sentinel** on the left-hand side navigation pane. Pages like  **Overview**, **Incidents**, and **Advanced Hunting** have unified data from Microsoft Sentinel and Defender XDR.

You’ll also see many of the existing Microsoft Sentinel features are integrated into the Defender portal. For these features, you'll notice that the experience between Microsoft Sentinel in the Azure portal and Defender portal are similar. Use the following articles to help you start working with Microsoft Sentinel in the Defender portal. When using these articles, keep in mind that your starting point in this context is the [Defender portal](https://security.microsoft.com/) instead of the Azure portal.

- Search
  - [Search across long time spans in large datasets](/sentinel/search-jobs)
  - [Restore archived logs from search](/azure/sentinel/restore)
- Threat management
  - [Visualize and monitor your data by using workbooks](/azure/sentinel/monitor-your-data)
  - [Conduct end-to-end threat hunting with Hunts](/azure/sentinel/hunts)
  - [Use hunting bookmarks for data investigations](/azure/sentinel/bookmarks)
  - [Use hunting Livestream in Microsoft Sentinel to detect threat](/azure/sentinel/livestream)
  - [Hunt for security threats with Jupyter notebooks](/azure/sentinel/notebooks-hunt)
  - [Add indicators in bulk to Microsoft Sentinel threat intelligence from a CSV or JSON file](/azure/sentinel/indicators-bulk-file-import)
  - [Work with threat indicators in Microsoft Sentinel](/azure/sentinel/work-with-threat-indicators)
  - [Understand security coverage by the MITRE ATT&CK framework](/azure/sentinel/mitre-coverage)
- Content management
  - [Discover and manage Microsoft Sentinel out-of-the-box content](/azure/sentinel/sentinel-solutions-deploy)
  - [Microsoft Sentinel content hub catalog](/azure/sentinel/sentinel-solutions-catalog)
  - [Deploy custom content from your repository](/azure/sentinel/ci-cd)
- Configuration
  - [Find your Microsoft Sentinel data connector](/azure/sentinel/data-connectors-reference)
  - [Create custom analytics rules to detect threats](/azure/sentinel/detect-threats-custom)
  - [Work with near-real-time (NRT) detection analytics rules in Microsoft Sentinel](/azure/sentinel/create-nrt-rules)
  - [Create watchlists](/azure/sentinel/watchlists-create)
  - [Manage watchlists in Microsoft Sentinel](/azure/sentinel/watchlists-manage)
  - [Create automation rules](/azure/sentinel/create-manage-use-automation-rules)
  - [Create and customize Microsoft Sentinel playbooks from content templates](/azure/sentinel/use-playbook-templates)

Find Microsoft Sentinel settings in the Defender portal under **System** > **Settings** > **Microsoft Sentinel**.

## Offboard Microsoft Sentinel

You can only have one workspace connected to the Defender portal at a time. If you want to connect to a different workspace that has Microsoft Sentinel enabled, disconnect the current workspace and connect the other workspace.

1. Go to the [Microsoft Defender portal](https://security.microsoft.com/) and sign in.
1. In the Defender portal, under **System**, select **Settings** > **Microsoft Sentinel**.
1. On the **Workspaces** page, select the connected workspace and **Disconnect workspace**.
1. Confirm your selection.

   When your workspace is disconnected, the **Microsoft Sentinel** section is removed from the left-hand side navigation of the Defender portal. Data from Microsoft Sentinel is no longer included on the Overview page.

If you want to connect to a different workspace, from the **Workspaces** page, select the workspace and **Connect a workspace**.

## Next steps

- [Investigate incidents in Microsoft Defender XDR](investigate-incidents.md)
