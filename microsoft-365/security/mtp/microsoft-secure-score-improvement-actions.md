---
title: Assess your security posture through Microsoft Secure Score
description: Describes how to take action to improve your Microsoft Secure Score in the Microsoft 365 security center.
keywords: microsoft secure score, secure score, office 365 secure score, microsoft security score, microsoft 365 security center, improvement actions
ms.prod: m365-security
ms.mktglfcycl: deploy
localization_priority: Normal
f1.keywords:
  - NOCSH
ms.author: ellevin
author: levinec
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
ms.topic: article
search.appverid: 
  - MOE150
  - MET150
ms.custom: 
  - seo-marvel-apr2020
  - seo-marvel-jun2020
ms.technology: m365d
---

# Assess your security posture with Microsoft Secure Score

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

Microsoft Secure Score is a measurement of an organization's security posture, with a higher number indicating more improvement actions taken. It can be found at https://security.microsoft.com/securescore in the [Microsoft 365 security center](overview-security-center.md).

To help you the information you need more quickly, Microsoft improvement actions are organized into groups:

* Identity (Azure Active Directory accounts & roles)
* Device (Microsoft Defender for Endpoint, known as [Microsoft Secure Score for Devices](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-microsoft-secure-score-devices))
* App (email and cloud apps, including Office 365 and Microsoft Cloud App Security)

>[!NOTE]
>In the recent release of Microsoft Secure Score, an improved scoring model has been released which made Microsoft Secure Score temporarily incompatible with Identity Secure Score and the Graph API. [View details](microsoft-secure-score-whats-new.md)

In the Microsoft Secure Score overview page, view how points are split between these groups and what points are available. You can also get an all-up view of the total score, historical trend of your secure score with benchmark comparisons, and prioritized improvement actions that can be taken to improve your score.

![Secure Score homepage](../../media/secure-score/secure-score-homepage-new.png)

## Check your current score

To check on your current score, go to the Microsoft Secure Score overview page and look for the tile that says **Your secure score**. Your score will be shown as a percentage, along with the number of points you've achieved out of the total possible points.

Additionally, if you select the **Include** button next to your score, you can choose different views of your score. These different score views will display in the graph on the score tile and the point breakdown chart.

The following are scores you can add to your view of your overall score to give you a fuller picture of your overall score:

- **Planned score**: Show projected score when planned actions are completed
- **Current license score**: Show score that can be achieved with your current Microsoft license
- **Achievable score**: Show score that can be achieved with your Microsoft licenses and current risk acceptance

This view is what it will look like if you've included all possible score views:

![Your secure score including planned score, current license score, and achievable score](../../media/secure-score/your-secure-score.png)

## Take action to improve your score

The **Improvement actions** tab lists the security recommendations that address possible attack surfaces. It also includes their status (to address, planned, risk accepted, resolved through third party, resolved through alternate mitigation, and completed). You can search, filter, and group all the improvement actions.  

### Ranking

Ranking is based on the number of points left to achieve, implementation difficulty, user impact, and complexity. The highest ranked improvement actions have a large number of points remaining with low difficulty, user impact, and complexity.

### View improvement action details

When you select a specific improvement action, a full page flyout appears.  

![Improvement action flyout example](../../media/secure-score/secure-score-improvement-action-details.png)

To complete the action, you have a few options:

- Select **Manage** to go the configuration screen and make the change. You'll then gain the points that the action is worth, visible in the fly out. Points generally take about 24 hours to update.

- Select **Share** to copy the direct link to the improvement action. You can also choose the platform to share the link, such as email, Microsoft Teams, Microsoft Planner, or ServiceNow. Selecting ServiceNow will let you create a change ticket that will be visible in ServiceNow and the Microsoft 365 security center home. To learn more, see [Microsoft 365 security center and ServiceNow integration](tickets-security-center.md).

Add **Notes** to keep track of progress or anything else you want to comment on. If you add your own **tags** to the improvement action, you can filter by those tags.

### Choose an improvement action status

Choose any statuses and record notes specific to the improvement action.

- **To address** - You recognize that the improvement action is necessary and plan to address it at some point in the future. This state also applies to actions that are detected as partially, but not fully completed.
- **Planned** - There are concrete plans in place to complete the improvement action.
- **Risk accepted** - Security should always be balanced with usability, and not every recommendation will work for your environment. When that is the case, you can choose to accept the risk, or the remaining risk, and not enact the improvement action. You won't be given any points, but the action will no longer be visible in the list of improvement actions. You can view this action in history or undo it at any time.
- **Resolved through third party** and **Resolved through alternate mitigation** - The improvement action has already been addressed by a third-party application or software, or an internal tool. You'll gain the points that the action is worth, so your score better reflects your overall security posture. If a third party or internal tool no longer covers the control, you can choose another status. Keep in mind, Microsoft will have no visibility into the completeness of implementation if the improvement action is marked as either of these statuses.

#### Threat & vulnerability management improvement actions

For improvement actions in the "Device" category, you can't choose statuses. Instead, you'll be directed to the associated [threat and vulnerability management security recommendation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-security-recommendation) in the [Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/use) to take action. The exception you choose and justification you write will be specific to that portal. It won't be present in the Microsoft Secure Score portal.

#### Completed improvement actions

Improvement actions have a "completed" status once all possible points for the improvement action have been achieved. Completed improvement actions are confirmed though Microsoft data, and you can't change the status.

### Assess information and review user impact

The section called **At a glance** will tell you the category, attacks it can protect against, and the product.

**User impact** is what the users will experience if the improvement action is enacted, and **Users affected​** are the people who will be impacted.

### Implement the improvement action

The **Implementation** section shows any prerequisites, step-by-step next steps to complete the improvement action, the current implementation status of the improvement action, and any learn more links.

Prerequisites include any licenses that are needed or actions to be completed before the improvement action is addressed. Make sure you have enough seats in your license to complete the improvement action and that those licenses are applied to the necessary users.  

## We want to hear from you

If you have any issues, let us know by posting in the [Security, Privacy & Compliance](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/bd-p/security_privacy) community. We're monitoring the community and will provide help.

## Related resources

- [Microsoft Secure Score overview](microsoft-secure-score.md)
- [Track your Microsoft Secure Score history and meet goals](microsoft-secure-score-history-metrics-trends.md)
- [What's coming](microsoft-secure-score-whats-coming.md)
- [What's new](microsoft-secure-score-whats-new.md)
