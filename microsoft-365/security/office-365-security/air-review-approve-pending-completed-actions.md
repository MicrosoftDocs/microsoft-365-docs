---
title: Review and manage remediation actions in Microsoft Defender for Office 365
keywords: AIR, autoIR, Microsoft Defender for Endpoint, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords: 
- NOCSH
author: JoeDavies-MSFT
ms.author: josephd
manager: dansimp
audience: ITPro
ms.topic: how-to
localization_priority: Normal
search.appverid: 
- MET150
- MOE150
ms.collection: 
- M365-security-compliance
- m365initiative-defender-office365
description: Learn about remediation actions in automated investigation and response capabilities in Microsoft Defender for Office 365 Plan 2.
ms.technology: mdo
ms.prod: m365-security
ms.date: 06/10/2021
---

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

# Review and manage remediation actions in Office 365

As automated investigations on email & collaboration content result in verdicts, such as *Malicious* or *Suspicious*, certain remediation actions are created. In Microsoft Defender for Office 365, remediation actions can include:

- Soft deleting email messages or clusters
- Turning off external mail forwarding

These remediation actions are not taken unless and until your security operations team approves them. We recommend reviewing and approving any pending actions as soon as possible so that your automated investigations complete in a timely manner. In some cases, you can re-consider submitted actions.


## Approve (or reject) pending actions
There are four different ways to find and take auto investigation actions:

- Incident queue (<https://security.microsoft.com/incidents>)
- Action Center (<https://security.microsoft.com/action-center/pending>)
- Investigation itself (accessed via Incident or from an alert)
- Investigation and remediation investigations queue (<https://security.microsoft.com/airinvestigation>)

## Incident queue
1. Go to the Microsoft 365 security center (<https://security.microsoft.com>) and sign in.
2. In the navigation pane, select **Incidents & alerts > Incidents**
3. Select an incident name and it will open a summary page 
4. Go to **Evidence and Response** tab 
5. Select an item in the list. Its sidepane opens 
6. In the sidepane take approve or reject actions.

## Investigation queue 
1. Go to the Microsoft 365 security center (<https://security.microsoft.com>) and sign in.
2. Navigate from alerts / incident page. 
3. In the Investigation page, go to **pending actions** tab. 
4. Select an item in the list. Its sidepane opens.  
5. In the sidepane take approve or reject actions.

## Action Center
1. Go to the Microsoft 365 security center (<https://security.microsoft.com>) and sign in.
2. In the navigation pane, select **Action center**.
3. On the **Pending** tab, review the list of actions that are awaiting approval.
   - Select **Open investigation page** to view more details about the investigation.
   - Select **Approve** to initiate a pending action.
   - Select **Reject** to prevent a pending action from being taken.

## Auto investigation and remediation investigations queue
1. Go to the Microsoft 365 security center (<https://security.microsoft.com/airinvestigation>) and sign in.
2. Open pending investigations. 
3. In the Investigation page, go to **pending actions** tab.
4. Select an item in the list. Its sidepane pane opens.  
5. In the sidepane take approve or reject actions.

## Change or undo one remediation action

There are two different ways to re-consider submitted actions 
   - Through Unified action center (<https://security.microsoft.com/action-center>)
   - Though office action center (<https://security.microsoft.com/threatincidents>)
   
## Change or undo through Unified action center
1. Go to the Action center (<https://security.microsoft.com/action-center>) and sign in.
2. On the **History** tab, select an action that you want to change or undo.
3. In the pane on the right side of the screen, select appropriate actions (**move to inbox**, **move to junk**,**move to deleted items**, **soft delete", **hard delete** )

 ## Change or undo through Office action center 
1. Go to the Action center (<https://security.microsoft.com/threatincidents>) and sign in.
2. Select appropriate remediation.
3. In the sidepane, click on the mail submissions entry and wait for the list to load. 
4. Wait for the action button to enable and click on the Action button on top to change the action type. 
5. This will create appropriate actions.

## Next steps

- [Use Threat Explorer](threat-explorer.md) 
- [Admin /Manual Actions](remediate-malicious-email-delivered-office-365.md)
- [How to report false positives/negatives in automated investigation and response capabilities](air-report-false-positives-negatives.md)

## See also

- [View details and results of an automated investigation in Office 365](air-view-investigation-results.md)
