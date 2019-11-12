---
title: Microsoft Secure Score
description: Describes Microsoft Secure Score in the Microsoft 365 security center, how details are calculated, and what security admins can expect.
keywords: security, malware, Microsoft 365, M365, secure score, security center, improvement actions
ms.prod: w10
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

Microsoft Secure Score is a measurement of an organization’s security posture, with a higher number indicating more improvement actions taken. Following the Security Score recommendations can protect your organization from threats. From a centralized dashboard in the Microsoft 365 security center, organizations can monitor and work on the security of their Microsoft 365 identities, data, apps, devices, and infrastructure.

Secure Score helps organizations:

* Report on the current state of the organization’s security posture.
* Improve their security posture by providing discoverability, visibility, guidance, and control.  
* Compare with benchmarks and establish key performance indicators (KPIs).

Organizations gain access to robust visualizations of metrics and trends, integration with other Microsoft products, score comparison with similar organizations, and much more. The score can also reflect when third-party solutions have addressed recommended actions.

Additionally, you can access your recommendations and score through the [Microsoft Graph API](https://www.microsoft.com/security/partnerships/graph-security-api). Learn about the [Secure Score resource type](https://go.microsoft.com/fwlink/?linkid=2092996).

## How it works

You are given points for configuring recommended security features, performing security-related tasks (such as viewing reports), or addressing the improvement action with a third-party application or software. Some improvement actions only give points when fully completed, and some give partial points if they are completed for some devices or users. Security should be balanced with usability, and not every recommendation can work for your environment.

Your score is updated in real time to reflect the information presented in the visualizations and improvement action pages. Secure Score also syncs daily to receive system data about your achieved points for each action.

### How improvement actions are scored

Most are scored in a binary fashion — if you implement the improvement action, like create a new policy or turn on a specific setting, you get 100% of the points. For other improvement actions, points are given as a percentage of the total configuration. For example, if the improvement action states you get 30 points by protecting all your users with multi-factor authentication and you only have 5 of 100 total users protected, you would be given a partial score of around 2 points (5 protected / 100 total * 30 max pts = 2 pts partial score).

### Products included in Secure Score

Currently there are recommendations for Office 365 (including SharePoint Online, Exchange Online, OneDrive for Business, Microsoft Information Protection, and more), Azure AD, Intune, and Cloud App Security. Recommendations for other security products, like Azure ATP and Microsoft Defender ATP, are coming soon. The recommendations will not cover all the attack surfaces associated with each product, but they are a good baseline. You can also mark the improvement actions as covered by a third party.

## Required permissions

To have permission to access Microsoft Secure Score, you must be assigned one of the following roles in Azure Active Directory.

### Read and write roles

With read and write access, you can make changes and directly interact with Secure Score. You can also assign read-only access to other users.

* CompanyAdministrator
* SecurityAdministrator
* ExchangeAdmin
* SharePointAdmin

### Read-only roles

With read-only access, you are not able to edit status or notes for an improvement action, edit score zones, or edit custom comparisons.

* HelpdeskAdmin
* UserAccountAdmin
* ServiceSupportAdmin
* SecurityReader
* SecurityOperator
* GlobalReader

### Graph API

To access the Graph API, you need to have one of the following scopes in addition to a role:

* SecurityEvents.Read.All (for read-only role)
* SecurityEvents.ReadWrite.All (for read and write role)

## Gain visibility into your security posture

To help you the information you need more quickly, Microsoft improvement actions are organized into groups:

* Identity (Azure AD accounts & roles, with Azure ATP coming soon)
* Data  (Microsoft Information Protection)
* Device (Microsoft Defender ATP devices, coming soon)
* App (email and cloud apps, including Office 365 and Microsoft Cloud App Security)
* Infrastructure (Azure resources)

In the Microsoft Secure Score overview page, you can see how points are split between these groups and what points are available. The overview page is also the place to get an all-up view of the total score, historical trend of your secure score with benchmark comparisons, and prioritized improvement actions that can be taken to improve your score.

![Secure Score homepage](../media/secure-score/homepage-original.png)
*Figure 1: Microsoft Secure Score overview page*

## Take action to improve your score

The improvement actions tab lists the security recommendations that address possible attack surfaces, along with their status (completed, not completed, resolved through third party, and ignored). You can search, filter, and group all the improvement actions.

### Ranking

Ranking is based on the number of remaining points left to achieve, implementation difficulty, user impact, and complexity. The highest ranked improvement actions have a large number of points remaining with low difficulty, user impact, and complexity.

### Actions

Actions labeled as [Not Scored] are not tracked by Microsoft Secure Score. You can still take action but completing them will not affect your score. If an action becomes tracked by Microsoft Secure Score in the future and you have already completed it, your secure score will automatically reflect the change.

When you select a specific improvement action, a fly out appears. To complete the action, you have a few options:

1. Select **View settings** to go the configuration screen and make the change. You then gain the points that the action is worth, visible at the top of the fly out. Points may take up to 24 hours to update.

2. Select **Resolve through third party** because the improvement action has already been addressed by a third-party application or software. You gain the points that the action is worth, so your secure score better reflects your overall security posture. If a third party no longer covers the control, you can mark the improvement action as not complete. Keep in mind, Microsoft has no visibility into whether the score requirements have been met if the improvement action is marked as resolved through third party.

3. Select **Ignore** because you have decided to accept the risk and not enact the improvement action. Once you ignore an improvement action, the total number of secure score points you can achieve is reduced. You can view this action in history or undo it at any time.

4. Select **Review** because the improvement action requires you to regularly review a part of your environment to gain and retain points. For example, mailbox forwarding rules should be reviewed on a weekly basis to make sure data is not being exfiltrated from your network. You do not need to make any changes, but an action will need to be performed. If you regularly review the rules, you will receive the points. If not, the score is reduced.

![Secure Score improvement action example](../media/secure-score/secure-score1x450.png) ![Secure Score review improvement action example](../media/secure-score/secure-score2x450.png)

*Figures 2 & 3: Improvement action flyouts*

## Monitor improvements over time

You can view a graph of your organization's score over time in the **History** tab. Below the graph is a list of all the actions taken in the selected time range and their attributes, such as resulting points and category. You can customize a date range and filter by category.

## Risk awareness

Microsoft Secure Score is a numerical summary of your security posture based on system configurations, user behavior and other security-related measurements; it is not an absolute measurement of how likely your system or data will be breached. Rather, it represents the extent to which you have adopted security controls in your Microsoft environment which can help offset the risk of being breached. No online service is completely immune from security breaches, and secure score should not be interpreted as a guarantee against security breach in any manner.

## What's coming?

To make Microsoft Secure Score a better representative of your security posture and improve usability, we are making some changes in the near future. Your score and the maximum possible score will change. However, this does not imply a change in your security posture.

### Removing “not scored” and “review” improvement actions

One of the principles of Secure Score is that the score should be standardized and easy to relate to. Having improvement actions that are not measurable or actionable has been causing confusion. One Microsoft Secure Score only makes sense when every recommendation can have a clear effect on the score. Not scored improvement actions are not measurable, and review improvement actions are not measured to the same standard as other improvement actions.  

For these reasons, all improvement actions that were not scored or required a review cadence will be temporarily removed. No action is needed on your part.

### Simplification of the point system

To standardize points across multiple experiences, each Secure Score improvement action point total will be updated to be worth 10 points or less. It is necessary be more consistent across the wide breather of security controls that we have today and ones that we will be adding in the future. While this is a significant change and you will see a drop in point totals, there will be no change to your security posture.  

### Preview features

The following features will be included in the preview release:

* All new metrics and trends views for CISO and lead level discussions
* New ways to track and benchmark your score
* Better tracking and monitoring for score regressions
* Filter, tag, search, and group your improvement actions
* Manage towards your future goals using score projections and planned actions
* And more!

## We want to hear from you

If you have any issues, please let us know by posting in the [Security, Privacy & Compliance](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/bd-p/security_privacy) community. We're monitoring the community and will provide help.
