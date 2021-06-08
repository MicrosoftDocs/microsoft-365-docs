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
ms.date: 01/29/2021
---

# Review and manage remediation actions in Office 365

As automated investigations on email & collaboration content result in verdicts, such as *Malicious* or *Suspicious*, certain remediation actions are created. In Microsoft Defender for Office 365, remediation actions can include:
- Soft deleting email messages or clusters
- Turning off external mail forwarding

These remediation actions are not taken unless and until your security operations team approves them. We recommend reviewing and approving any pending actions as soon as possible so that your automated investigations complete in a timely manner. In some cases, you can undo a remediation action.

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)


## Approve (or reject) pending actions
There are four different ways to find and take auto investigation actions:

-Incident queue (<https://security.microsoft.com/incidents>)
-Action Center (<https://security.microsoft.com/action-center/pending>)
-Investigation itself (accessed via Incident or from an alert)
-Auto investigation and remediation investigations queue (<https://security.microsoft.com/airinvestigation>)

## Incident queue
1. Go to the Microsoft 365 security center (<https://security.microsoft.com>) and sign in.
2. In the navigation pane, select **Incidents & alerts > Incidents**
3. Select an incident name and it will open a summary page 
4. Go to **Evidence and Response** tab 
5. Select an item in the list. Its flyout pane opens. 
6. In the flyout take approve or reject actions

## Investigation queue 
1. Go to the Microsoft 365 security center (<https://security.microsoft.com>) and sign in.
2. Navigate from alerts / incident page
3. In the Investigation page, go to **pending actions** tab 
4. Select an item in the list. Its flyout pane opens.  
5. In the flyout take approve or reject actions
 
## Action Center
1. Go to the Microsoft 365 security center (<https://security.microsoft.com>) and sign in.
2. In the navigation pane, select **Action center**.
3. On the **Pending** tab, review the list of actions that are awaiting approval.
4. Select an item in the list. Its flyout pane opens. 
5. Review the information in the flyout pane, and then take one of the following steps:
   - Select **Open investigation page** to view more details about the investigation.
   - Select **Approve** to initiate a pending action.
   - Select **Reject** to prevent a pending action from being taken.
      
## Auto investigation and remediation investigations queue
1. Go to the Microsoft 365 security center (<https://security.microsoft.com/airinvestigation>) and sign in.
2. Open pending investigations 
3. In the Investigation page, go to **pending actions** tab
4. Select an item in the list. Its flyout pane opens.  
5. In the flyout take approve or reject actions


## Re-do one remediation action

There are two different ways to re-consider submitted actions 
   -Through Unified action center (<https://security.microsoft.com/action-center>)
   -Though office action center (<https://security.microsoft.com/threatincidents>)
   
 ## Re-do through Unified action center 
1. Go to the Action center (<https://security.microsoft.com/action-center>) and sign in.
2. On the **History** tab, select an action that you want to undo.
3. In the pane on the right side of the screen, select appropriate actions (** move to inbox**, **move to junk**,**move to deleted**, **soft delete", **hard delete**

 ## Re-do through office action center 
1. Go to the Action center (<https://security.microsoft.com/threatincidents>) and sign in.
2. Select appropriate remediation.
3. In the flyout, click on the mail submissions entry and wait for the list to load 
4. Wait for the action button to enable and click on the Action button on top to change the action type 
5. This will create appropriate actions

## Next steps

- [Use Threat Explorer](threat-explorer.md)
- [How to report false positives/negatives in automated investigation and response capabilities](air-report-false-positives-negatives.md)

## See also

- [View details and results of an automated investigation in Office 365](air-view-investigation-results.md)
