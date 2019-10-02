---
title: Microsoft Secure Score
description: Describes Microsoft Secure Score in the Microsoft 365 security center, how details are calculated, and what security admins can expect using it.
keywords: security, malware, Microsoft 365, M365, secure score, security center, improvement actions
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.localizationpriority: medium
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
---

# Microsoft Secure Score

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

With Microsoft Secure Score in the Microsoft 365 security center, you can have increased visibility and control over your organization’s security posture. From a centralized dashboard you can monitor and improve the security for your Microsoft 365 identities, data, apps, devices, and infrastructure.

Microsoft Secure Score gives you robust visualizations, integration with other Microsoft products, comparison of your score with other companies, filtering by category, and much more. With the tool, you can complete security improvement actions within your organization and track the history of your score. The score can also reflect when third-party solutions have addressed recommended improvement actions.  

## How it works

You are given points for configuring recommended security features, performing security-related tasks (such as viewing reports), or addressing the improvement action with a third-party application or software. Some actions are scored for partial completion, like enabling multi-factor authentication (MFA) for your users. Security should always be balanced with usability, and not every recommendation will work for your environment.

## Required permissions

Currently, to view Microsoft Secure Score, you must be assigned one of the following roles in Azure Active Directory:

* Global Administrator
* Security Administrator
* Security Reader

## Rich experiences & additional security recommendations

In Microsoft Secure Score, we’ve added recommendations from Azure AD, Intune, and Cloud App Security, with recommendations from Azure Security Center and Microsoft Defender ATP coming soon. We've also added even more Office 365 security recommendations. With additional insights and more visibility into a broader set of Microsoft products and services, you can feel confident reporting up to management about your organization’s security health. You can also get your score using the [Microsoft Graph API](https://docs.microsoft.com/graph/api/resources/securescores?view=graph-rest-beta).

To help you the information you need more quickly, Microsoft recommendations are organized into groups:

* Identity (protection state of your Azure AD accounts and roles)
* Data (protection state of your Office 365 documents)
* Device (protection state of your devices; Microsoft Defender ATP improvement actions coming soon)
* App (protection state of your email and cloud apps)
* Infrastructure (protection state of your Azure resources; coming soon)

In the Microsoft Secure Score overview page, you can see how points are split between these groups and what points are available. The overview page is also the place to get an all-up view of the total score, historical trend of your secure score with benchmark comparisons, and prioritized improvement actions that can be taken to improve your score. You can use this data to act and make big differences in your security posture.  

![M365 homepage](../media/secure-score/homepage-original.png)
*Figure 1: Microsoft Secure Score overview page*

## Take action to improve your score

The improvement actions tab lists all the security recommendations applicable to your tenant along with their status (completed, not completed, resolved through third party, and ignored). You can search, filter, and group all the controls.  Ranking is based on Microsoft’s evaluation of both security value and effort to complete.

Actions labeled as [Not Scored] are not tracked by Microsoft Secure Score. You can still take action but completing them will not affect your score. If an action becomes tracked by Microsoft Secure Score in the future and you have already completed it, your secure score will automatically reflect the change.

When you click on an improvement action, a fly out appears. To complete the action, you have a few options:

1. Select **View settings** to go the configuration screen and make the change. You will then gain the points that the action is worth, visible at the top of the fly out. Points may take up to 24 hours to update.

2. Select **Resolve through third party** because the improvement action has already been addressed by a third-party application or software. You will gain the points that the action is worth, so your secure score better reflects your overall security posture. If a third party no longer covers the control, you can mark the improvement action as not complete. Please keep in mind, Microsoft will have no visibility into whether the score requirements have been met if the improvement action is marked as resolved through third party.

3. Select **Ignore** because you have decided to accept the risk and not enact the improvement action. Once you ignore an improvement action, the total number of secure score points you can achieve will be reduced. You can view this action in history or undo it at any time.

4. Select **Review** because the improvement action requires you to regularly review a part of your environment to gain and retain points. For example, mailbox forwarding rules should be reviewed on a weekly basis to make sure data is not being exfiltrated from your network. You do not need to make any changes, but an action will need to be performed. If you regularly review the rules, you will receive the points. If not, the score will be reduced.

![M365 homepage](../media/secure-score/secure-score1x450.png) ![M365 homepage](../media/secure-score/secure-score2x450.png)

*Figures 2 & 3: Improvement action flyouts*

## Monitor improvements over time

You can view a graph of your organization's score over time in the **History** tab. This view includes the global average, industry average, and similar seat count, along with all the actions taken in the selected time range. You can also customize a date range and filter by category.

The score is calculated once per day (around 1:00 AM PST). If you make a change to a measured action, the score will automatically update the next day. It is also important to note that some other portals show parts of the Microsoft Secure Score (like Microsoft Defender Security Center). If you complete an improvement action and the score is increased in those portals, it may take up to 24 hours for the updated score to display in Microsoft 365 security center.  

## How improvement actions are scored

Most are scored in a binary fashion - you get 100% of the points if you implement the improvement action, like creating a new policy or turning on a specific setting. For other improvement actions, points are given as a percentage of the total configuration. For example, if the improvement action states you’ll get 30 points if you protect all your users with multi-factor authentication and you only have 5 of 100 total users protected, you would be given a partial score of around 2 points (5 protected / 100 total * 30 max pts = 2 pts partial score).

## Risk awareness

Microsoft Secure Score is a numerical summary of your security posture based on system configurations, user behavior and other security related measurements; it is not an absolute measurement of how likely your system or data will be breached. Rather, it represents the extent to which you have adopted security controls in your Microsoft environment which can help offset the risk of being breached. No online service is completely immune from security breaches, and secure score should not be interpreted as a guarantee against security breach in any manner.

## We want to hear from you

If you have any issues, please let us know by posting in the [Security, Privacy & Compliance](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/bd-p/security_privacy) community. We're monitoring the community and will provide help.
