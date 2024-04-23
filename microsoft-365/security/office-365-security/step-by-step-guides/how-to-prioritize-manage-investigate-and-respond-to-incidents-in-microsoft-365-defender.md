---
title: How to prioritize, Manage, Investigate & Respond to Incidents in Microsoft Defender XDR
description: The steps to manage alerts triggered in Microsoft Defender XDR. Automated investigation and response (AIR) hunt across the subscription and determines the impact and scope of a threat, and combines the information into a single Incident.
ms.service: defender-office-365
f1.keywords: 
 - NOCSH
author: chrisda
ms.author: chrisda
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
search.appverid: met150
ms.date: 01/31/2023
---

# Prioritize, Manage, Investigate & Respond to Incidents in Microsoft Defender XDR

When alerts are triggered in Microsoft Defender XDR, automated investigation and response (AIR) begins and hunts across an organization's subscription, determine the impact and scope of the threat, and collate the information into a single Incident so that admins don't have to manage multiple incidents.

## What you need

- Microsoft Defender for Office 365 Plan 2 or higher
- Sufficient permissions (Security reader, security operations, or security administrator, plus [Search and purge](../mdo-portal-permissions.md) role)

## Prioritize & manage Incidents

Navigate to the security portal Incidents page <https://security.microsoft.com/incidents>.

When the Incident page loads you can filter and prioritize by clicking columns to sort the actions or press Filters to apply a filter such as data source, tags or state.

Now you have a prioritized list of incidents, from which you can select to rename, assign, classify, tag, change the status or add comments via the **Manage incidents** button.

Use the filters to make sure Microsoft Defender for Office 365 items are included.

If you're looking for specific alerts, either use the incident search capability (*Search for name or ID*) or consider using the alert queue filtering on a specific alert.

## Investigate & Respond to Incidents

After you have prioritized your incident queue, select the Incident you'd like to investigate to load the incidents Overview page. You see useful information, such as *MITRE ATT&CK techniques observed* and a *timeline of the attack*.

The tabs at the top of the incident page allow you to explore more details such as the affected users, mailboxes, endpoints, and et cetera.

The *Evidence and Response* tab shows items identified as related to the original alert via the investigation.

Any items showing as *Pending Action* within Evidence and Response are awaiting approval from an administrator. Sorting by the remediation status column in the *All Evidence* view is recommended, followed by clicking the entity or cluster to load the flyout menu where you can then approve the actions if appropriate.

If you need to understand the items involved further, you can use the incident graph to see the visual linkage of the evidence and entities involved. Alternatively, you can review the underlying investigations, which show more of the entities and items involved in the security event.

## Next Steps

You can start using *Action Center* to act on pending action items from all incidents in your organization if you want to focus on the action items AIR needs approval for.

## More Information

[Manage incidents in Microsoft Defender XDR | Microsoft Docs](../../defender/manage-incidents.md).

[How automated investigation and response works in Microsoft Defender for Office 365](../air-examples.md).

[Remediation actions in Microsoft Defender for Office 365](../air-remediation-actions.md).
