---
title: Assess your security posture through Microsoft Secure Score
description: Describes how to take action to improve your Microsoft Secure Score in the Microsoft 365 Defender portal.
keywords: microsoft secure score, secure score, office 365 secure score, microsoft security score, Microsoft 365 Defender portal, recommended actions
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
  - NOCSH
ms.author: siosulli
author: siosulli
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
ms.topic: conceptual
search.appverid:
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
- seo-marvel-jun2020
ms.date: 02/16/2021
---

# Assess your security posture with Microsoft Secure Score

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

Microsoft Secure Score is a measurement of an organization's security posture, with a higher number indicating more recommended actions taken. It can be found at https://security.microsoft.com/securescore in the [Microsoft 365 Defender portal](microsoft-365-defender.md).

To help you find the information you need more quickly, Microsoft recommended actions are organized into groups:

- Identity (Azure Active Directory accounts & roles)
- Device (Microsoft Defender for Endpoint, known as [Microsoft Secure Score for Devices](/windows/security/threat-protection/microsoft-defender-atp/tvm-microsoft-secure-score-devices))
- Apps (email and cloud apps, including Office 365 and Microsoft Defender for Cloud Apps)
- Data (through Microsoft Information Protection)

In the Microsoft Secure Score overview page, view how points are split between these groups and what points are available. You can also get an all-up view of the total score, historical trend of your secure score with benchmark comparisons, and prioritized recommended actions that can be taken to improve your score.

:::image type="content" source="../../media/secure-score/secure-score-home-page.png" alt-text="The Secure Score homepage in the Microsoft 365 Defender portal" lightbox="../../media/secure-score/secure-score-home-page.png":::

## Check your current score

To check on your current score, go to the Microsoft Secure Score overview page and look for the tile that says **Your secure score**. Your score will be shown as a percentage, along with the number of points you've achieved out of the total possible points.

Additionally, if you select the **Include** button next to your score, you can choose different views of your score. These different score views will display in the graph on the score tile and the point breakdown chart.

The following are scores you can add to your view of your overall score to give you a fuller picture of your overall score:

- **Planned score**: Show projected score when planned actions are completed
- **Current license score**: Show score that can be achieved with your current Microsoft license
- **Achievable score**: Show score that can be achieved with your Microsoft licenses and current risk acceptance

This view is what it will look like if you've included all possible score views:

:::image type="content" source="../../media/secure-score/secure-score-achievable.png" alt-text="Your secure score including planned score, current license score, and achievable score in the Microsoft 365 Defender portal" lightbox="../../media/secure-score/secure-score-achievable.png":::

## Take action to improve your score

The **recommended actions** tab lists the security recommendations that address possible attack surfaces. It also includes their status (to address, planned, risk accepted, resolved through third party, resolved through alternate mitigation, and completed). You can search, filter, and group all the recommended actions.

Once you have completed an action it can take between 24-48 hours for the changes to be reflected in your secure score.

### Ranking

Ranking is based on the number of points left to achieve, implementation difficulty, user impact, and complexity. The highest ranked recommended actions have a large number of points remaining with low difficulty, user impact, and complexity.

### View recommended action details

When you select a specific recommended action, a full page flyout appears.

:::image type="content" source="../../media/secure-score/secure-score-improvement-action-details.png" alt-text="Screenshot that shows the flyout of a recommended action in the Microsoft 365 Defender portal." lightbox="../../media/secure-score/secure-score-improvement-action-details.png":::

To complete the action, you have a few options:

- Select **Manage in Microsoft 365 Defender** to go to the configuration screen and make the change. You'll then gain the points that the action is worth, visible in the flyout. Points generally take about 24 hours to update.

- Select **Share** to copy the direct link to the recommended action. You can also choose the platform to share the link, such as email, Microsoft Teams, or Microsoft Planner.

Add **Notes** to keep track of progress or anything else you want to comment on. If you add your own **tags** to the recommended action, you can filter by those tags.

### Choose a recommended action status

Choose any statuses and record notes specific to the recommended action.

- **To address** - You recognize that the recommended action is necessary and plan to address it at some point in the future. This state also applies to actions that are detected as partially, but not fully completed.
- **Planned** - There are concrete plans in place to complete the recommended action.
- **Risk accepted** - Security should always be balanced with usability, and not every recommendation will work for your environment. When that is the case, you can choose to accept the risk, or the remaining risk, and not enact the recommended action. You won't be given any points for this status. You can view this action in history or undo it at any time.
- **Resolved through third party** and **Resolved through alternate mitigation** - The recommended action has already been addressed by a third-party application or software, or an internal tool. You'll gain the points that the action is worth, so your score better reflects your overall security posture. If a third party or internal tool no longer covers the control, you can choose another status. Keep in mind, Microsoft will have no visibility into the completeness of implementation if the recommended action is marked as either of these statuses.

#### Recommended action status for devices

You won't be able to choose a status for Secure Score recommended actions in the "Device" category, instead, you'll be directed to the associated [Microsoft Defender Vulnerability Management security recommendation](/windows/security/threat-protection/microsoft-defender-atp/tvm-security-recommendation) to take action.

> [!NOTE]
> If you choose to create a 'Global exception' in the Defender Vulnerability management security recommendation, the status in the Microsoft Secure Score recommended action will be updated with the exception justification. Updates may take up to 2 hours.
>
> If you choose to create an 'Exception per device group' in the Defender Vulnerability manage security recommendation, Secure Score will not be updated and the recommended action will remain as 'To address'.

#### Completed recommended actions

Recommended actions have a "completed" status once all possible points for the recommended action have been achieved. Completed recommended actions are confirmed through Microsoft data, and you can't change the status.

### Assess information and review user impact

The section called **At a glance** will tell you the category, attacks it can protect against, and the product.

**User impact** is what the users will experience if the recommended action is enacted, and the **Users affected** are the people who will be impacted.

### Implement the recommended action

The **Implementation** section shows any prerequisites, step-by-step next steps to complete the recommended action, the current implementation status of the recommended action, and any learn more links.

Prerequisites include any licenses that are needed or actions to be completed before the recommended action is addressed. Make sure you have enough seats in your license to complete the recommended action and that those licenses are applied to the necessary users.

## We want to hear from you

If you have any issues, let us know by posting in the [Security, Privacy & Compliance](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/bd-p/security_privacy) community. We're monitoring the community and will provide help.

## Related resources

- [Microsoft Secure Score overview](microsoft-secure-score.md)
- [Track your Microsoft Secure Score history and meet goals](microsoft-secure-score-history-metrics-trends.md)
- [What's coming](microsoft-secure-score-whats-coming.md)
- [What's new](microsoft-secure-score-whats-new.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
