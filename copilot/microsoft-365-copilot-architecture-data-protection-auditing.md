---
title: Microsoft 365 Copilot data protection and auditing architecture
f1.keywords:
- NOCSH
ms.author: mandia
author: MandiOhlinger
manager: laurawi
ms.date: 01/28/2025
audience: Admin
ms.reviewer: mandia, bcarter, ruihu, cabailey
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-overview
description: Learn how data protection and auditing work with Microsoft 365 Copilot. Learn more about sensitivity labels in Microsoft Purview, oversharing controls in SharePoint, and auditing tools that affect eDiscovery and retention policies.
ms.custom: [copilot-learning-hub]
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Microsoft 365 Copilot data protection and auditing architecture

[Microsoft 365 Copilot](microsoft-365-copilot-overview.md) honors your security & data protection controls, and includes tools for auditing usage data. This article describes and illustrates:

- How Copilot works with Microsoft Purview sensitivity labels.
- The controls you can use to prevent oversharing data in SharePoint sites and OneDrive.
- Where Copilot usage data is stored and how you can discover, audit, and retain this data.

This article applies to:

- Microsoft 365 Copilot

## How Microsoft 365 Copilot works with sensitivity labels and encryption

Copilot works together with your Microsoft Purview sensitivity labels and encryption to provide an extra layer of protection.

The following diagram provides a visual representation of how Copilot honors your information protection controls using sensitivity labels and encryption.

:::image type="content" source="media/microsoft-365-copilot-architecture-data-protection-auditing/copilot-sensitivity-labels.svg" alt-text="Diagram that shows how Copilot works with documents with Microsoft Purview sensitivity labels." lightbox="media/microsoft-365-copilot-architecture-data-protection-auditing/copilot-sensitivity-labels.svg":::

Let's take a look:

- You open a file in a [supported Office app](/purview/sensitivity-labels-office-apps). When the file opens, the sensitivity label name and content markings that are configured for the label are shown.

  - When the sensitivity label applies encryption, the user must have the EXTRACT and VIEW usage rights for Copilot to summarize the data.

  - Items encrypted by the [Azure Rights Management](/azure/information-protection/office-apps-services-support) service without a sensitivity label still require EXTRACT or VIEW usage rights for the user for Copilot to summarize the data.

- In a prompt session with Copilot (called [Microsoft 365 Copilot Chat](https://support.microsoft.com/topic/get-started-with-microsoft-365-copilot-business-chat-5b00a52d-7296-48ee-b938-b95b7209f737)), the labels are displayed for data that is returned. The current response shows the label with the highest priority.
- When you use Copilot to create new content based on items that have a sensitivity label, the new content automatically inherits the sensitivity label with the highest priority and that label's protection settings.

- Protection extends to data stored outside of your Microsoft 365 tenant when the file is opened in an Office app.

  For example, there's a file with a sensitivity label saved outside of your Microsoft 365 tenant, like on a user's personal device, a network share, or in cloud storage. When this file is opened in an Office app, the protection settings go with the file.

To learn more, see:

- [Get started with sensitivity labels](/purview/get-started-with-sensitivity-labels)
- [Microsoft Purview strengthens information protection for Copilot](/purview/ai-microsoft-purview#microsoft-purview-strengthens-information-protection-for-copilot)

## Oversharing controls you can use with Microsoft 365 Copilot

Microsoft 365 includes controls to help you prevent oversharing data through Copilot.

The following diagram provides a visual representation of some of the features in your Microsoft 365 E3+ and SharePoint Advanced Management licenses that help you prevent oversharing.

:::image type="content" source="media/microsoft-365-copilot-architecture-data-protection-auditing/copilot-oversharing-controls.svg" alt-text="Diagram that shows the controls you can use to prevent sharing specific data in SharePoint Online and OneDrive, and how they affect Microsoft 365 Copilot." lightbox="media/microsoft-365-copilot-architecture-data-protection-auditing/copilot-oversharing-controls.svg":::

Let's take a look:

1. [Restricted SharePoint Search](/sharepoint/restricted-sharepoint-search) allows you to limit organization-wide search and Copilot experiences to selected SharePoint sites. By default, this setting is off and the [allowed list](/sharepoint/restricted-sharepoint-search-allowed-list) is empty. It serves as a temporary solution to review and apply proper permission settings to your sites.

2. SharePoint includes more built-in controls:

    - Use **Specific people links** instead of organization-wide sharing by default.
    - Hide broad scoped permissions from users, like the **Everyone Except External Users** claim.
    - Site admins can use site level controls to restrict member sharing, and ensure **Site Owners** handle access requests.

3. In SharePoint Advanced Management, use **[data access governance reports](/SharePoint/data-access-governance-reports)** to identify sites that contain potentially overshared or sensitive content.

4. With **[Restricted Content Discovery](/sharepoint/restricted-content-discovery)**, organizations can put a flag on sites so that users can't find them through Copilot or Org-wide search. Restricted content discovery doesn't change users' existing permissions. Users with access can still visit sites and open files.

5. In SharePoint Advanced Management, create an **[inactive site policy](/sharepoint/site-lifecycle-management#create-an-inactive-site-policy)** to automatically manage and reduce inactive sites.

6. In SharePoint Advanced Management, you can restrict access to SharePoint and OneDrive sites to users in a specific group by using the **[restricted access control policy](/sharepoint/restricted-access-control)**.     Users that aren't members of the specified group can't access the site or content, even if they had prior permissions or a shared link. This policy can be used with Microsoft 365 Group-connected, Teams-connected, and non-group connected sites.

    To learn more, see:

    - [SharePoint restricted access control policy](/sharepoint/restricted-access-control)
    - [OneDrive restricted access control policy](/sharepoint/onedrive-site-access-restriction)

7. Microsoft Purview includes capabilities to limit oversharing:

   - Use [Microsoft Purview sensitivity labels](/purview/sensitivity-labels) that apply encryption to restrict which files Copilot can access. The user must have the EXTRACT and VIEW usage rights for Copilot to summarize the data.

    - Use [Data Loss Prevention (DLP) for Microsoft 365 Copilot](/purview/dlp-microsoft365-copilot-location-learn-about) to prevent Copilot from accessing content that has specific sensitivity labels applied.

## Where Copilot usage data is stored and how you can audit it

Copilot usage data is stored in several places. You can use the tools provided with Microsoft 365 E5 to discover, audit, and apply retention policies.

The following diagram provides a visual representation of the different features in your Microsoft 365 E5 license that help you search and audit Copilot data.

:::image type="content" source="media/microsoft-365-copilot-architecture-data-protection-auditing/copilot-auditing-tools.svg" alt-text="Diagram that shows the eDiscovery, Communication Compliance, and retention features in Microsoft 365 and how they affect Microsoft 365 Copilot." lightbox="media/microsoft-365-copilot-architecture-data-protection-auditing/copilot-auditing-tools.svg":::

Let's take a look:

1. Use [Microsoft Purview audit logs](/purview/audit-solutions-overview) to identify how, when, and where Copilot interactions occurred and which items were accessed, including any sensitivity labels on those items.

2. Use [Microsoft Purview eDiscovery](/purview/edisc) to search for keywords in Copilot prompts and responses that might be inappropriate. You can also include this info in an eDiscovery case to review, export, or put this data on hold for an ongoing legal investigation.

3. Use [Microsoft Purview Communication Compliance](/purview/communication-compliance) to detect and alert inappropriate or risky Copilot prompts and responses, like personal data or highly confidential information.

4. Use [Microsoft Purview retention policies](/purview/retention) to keep a copy of deleted Copilot conversations so they're available to eDiscovery.

    Or, if you have a compliance requirement to delete data after a specific period of time, use retention policies to automatically delete Copilot prompts and responses.

5. During a Copilot prompt and response session (called interactions), Copilot can provide links to the source files. These embedded links are called **[cloud attachments](/purview/retention-policies-sharepoint#how-retention-works-with-cloud-attachments)**.

    When a retention label is automatically applied, the specific version of the cloud attachments used in the interaction is retained. The version is kept even if the original file is edited or deleted from SharePoint or OneDrive.

    This original or deleted version of the file is stored in the **[Preservation Hold Library](/purview/retention-policies-sharepoint#how-retention-works-for-sharepoint-and-onedrive)** in SharePoint or OneDrive. It remains accessible to eDiscovery searches.

6. In a Copilot interaction, users can upload local files. These uploaded files are automatically stored in the **Microsoft Copilot Chat Files folder** in the user's OneDrive.

    As with other files in OneDrive, Copilot-related files are accessible for eDiscovery searches and can be automatically retained or deleted with a retention policy.

7. Content created by **[Copilot Pages](https://techcommunity.microsoft.com/blog/microsoft365copilotblog/copilot-pages-for-it-admins---sep-2024-update/4241521)** is stored in a **user-owned SharePoint Embedded container** (one per user). As with other files in SharePoint, this Copilot-related content is accessible for eDiscovery searches and can be automatically retained or deleted with a retention policy.

To learn more, see [Learn about retention for Copilot](/purview/retention-policies-copilot).

## Related content

- [Microsoft 365 Copilot architecture and how it works](microsoft-365-copilot-license-feature-overview.md)
- [Read about Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)
- [Microsoft 365 license feature comparison list for Microsoft 365 Copilot](microsoft-365-copilot-license-feature-overview.md)
