---
title:  Manage incidents and alerts from Defender for Office 365 in Microsoft 365 Defender
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.date:
ms.topic: conceptual

ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.collection: 
  - M365-security-compliance
ms.custom:
description: SecOps personnel can learn how to use the Incidents queue in Microsoft 365 Defender to manage incidents in Microsoft Defender for Office 365. 
ms.technology: mdo
ms.prod: m365-security
---


# Manage incidents and alerts from Microsoft Defender for Office 365 in Microsoft 365 Defender

An [incident](/microsoft-365/security/defender/incidents-overview) in Microsoft 365 Defender is a collection of correlated alerts and associated data that define the complete story of an attack. Defender for Office 365 [alerts](/microsoft-365/compliance/alert-policies#default-alert-policies), [automated investigation and response (AIR)](office-365-air.md#the-overall-flow-of-air), and the outcome of the investigations are natively integrated and correlated on the **Incidents** page in Microsoft 365 Defender at <https://security.microsoft.com/incidents-queue>. We'll refer to this page as the _Incidents queue_.

Alerts are created when malicious or suspicious activity affects an entity (for example, email, users, or mailboxes). Alerts provide valuable insights about in-progress or completed attacks. However, an ongoing attack can affect multiple entities, which results in multiple alerts from different sources. Some built-in alerts will automatically trigger AIR playbooks. These playbooks do a series of investigation steps to look for other impacted entities or suspicious activity.

Defender for Office 365 alerts, investigations, and their data are automatically correlated. When a relationship is determined, an incident is created by the system to give security teams visibility for the entire attack.

We strongly recommend that SecOps teams manage incidents and alerts from Defender for Office 365 in the Incidents queue at <https://security.microsoft.com/incidents-queue>. This approach has the following benefits:

- Multiple options for [management](/microsoft-365/security/defender/manage-incidents):
  - Prioritization
  - Filtering
  - Classification
  - Tag management

  You can take incidents directly from the queue or assign them to someone. Comments and comment history can help track progress.

- If the attack impacts other workloads that are protected by Microsoft Defender<sup>\*</sup>, the related alerts, investigations, and their data are also correlated to the same incident.

  <sup>\*</sup>Microsoft Defender for Endpoint, Microsoft Defender for Identity, and Microsoft Defender for Cloud Apps.

- Complex correlation logic isn't required, because the logic is provided by the system.

- If the correlation logic doesn't fully meet your needs, you can add alerts to existing incidents or create new incidents.

- Related Defender for Office 365 alerts, AIR investigations, and pending actions from investigations are automatically added to incidents.

- If the AIR investigation finds no threat, the related alerts are automatically resolved by the system. If all alerts within an incident are resolved, the incident status also changes to **Resolved**.

- Related evidence and response actions are automatically aggregated on the **Evidence and response** tab of the incident.

- Security team members can take response actions directly from the incidents. For example, they can soft-delete email in mailboxes or remove suspicious Inbox rules from mailboxes.

- Recommended email actions are created only when the latest delivery location of a malicious email is a cloud mailbox.

- Pending email actions are updated based on the latest delivery location. If the email was already remediated by a manual action, the status will reflect that.

- Recommended actions are created only for email and email clusters that are determined to be the most critical threats:
  - Malware
  - High confidence phishing
  - Malicious URLs
  - Malicious files

> [!NOTE]
> Incidents don't just represent static events. They also represent attack stories that happen over time. As the attack progresses, new Defender for Office 365 alerts, AIR investigations, and their data are continuously added to the existing incident.

Manage incidents on the **Incidents** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/incidents-queue>:

![Incidents page in the Microsoft 365 Defender portal.](../../media/mdo-sec-ops-incidents.png)

![Details flyout on the Incidents page in the Microsoft 365 Defender portal.](../../media/mdo-sec-ops-incident-details.png)

![Filter flyout on the Incidents page in the Microsoft 365 Defender portal.](../../media/mdo-sec-ops-incident-filters.png)

![Summary tab of the incident details in the Microsoft 365 Defender portal.](../../media/mdo-sec-ops-incident-summary-tab.png)

![Evidence and alerts tab of the incident details in the Microsoft 365 Defender portal.](../../media/mdo-sec-ops-incident-evidence-and-response-tab.png)

Manage incidents on the **Incidents** page in Microsoft Sentinel at <https://portal.azure.com/#blade/HubsExtension/BrowseResource/resourceType/microsoft.securityinsightsarg%2Fsentinel>:

![Incidents page in Microsoft Sentinel.](../../media/mdo-sec-ops-microsoft-sentinel-incidents.png)

![Incident details page in Microsoft Sentinel.](../../media/mdo-sec-ops-microsoft-sentinel-incident-details.png)

## Response actions to take

Security teams can take wide variety of response actions on email using Defender for Office 365 tools:

- You can delete messages, but you can also take the following actions on email:
  - Move to Inbox
  - Move to Junk
  - Move to Deleted Items
  - Soft delete
  - Hard delete.

  You can take these actions from the following locations:

  - The **Evidence and response** tab from the details of the incident on the **Incidents** page** at <https://security.microsoft.com/incidents-queue> (recommended).
  - **Threat Explorer** at <https://security.microsoft.com/threatexplorer>.
  - The unified **Action center** at  <https://security.microsoft.com/action-center/pending>.

- You can start an AIR playbook manually on any email message using the **Trigger investigation** action in Threat Explorer.

- You can report false positive or false negative detections directly to Microsoft using [Threat Explorer](threat-explorer.md) or [admin submissions](admin-submission.md).

- You can block undetected malicious files, URLs, or senders using the [Tenant Allow/Block List](tenant-allow-block-list.md).

Defender for Office 365 actions are seamlessly integrated into hunting experiences and the history of actions are visible on the **History** tab in the unified **Action center** at <https://security.microsoft.com/action-center/history>.

The most effective way to take action is to use the built-in integration with Incidents in Microsoft 365 Defender. You can simply approve the actions that were recommended by AIR in Defender for Office 365 on the [Evidence and response](/microsoft-365/security/defender/investigate-incidents#evidence-and-response) tab of an Incident in Microsoft 365 Defender. This method of tacking action is recommended for the following reasons:

- You investigate the complete attack story.
- You benefit from the built-in correlation with other workloads: Microsoft Defender for Endpoint, Microsoft Defender for Identity, and Microsoft Defender for Cloud Apps.
- You take actions on email from a single place.

You take action on email based on the result of a manual investigation or hunting activity. [Threat Explorer](threat-explorer.md) allows security team members to take action on any email messages that might still exist in cloud mailboxes. They can take action on intra-org messages that were sent between users in your organization. Threat Explorer data is available for the last 30 days.
