---
title: Microsoft Secure Score
description: Describes Microsoft Secure Score in the Microsoft 365 security center, how details are calculated, and what security admins can expect.
keywords: security, malware, Microsoft 365, M365, secure score, security center, improvement actions
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.localizationpriority: medium
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

You are given points for configuring recommended security features, performing security-related tasks (such as viewing reports), or addressing the improvement action with a third-party application or software. Some improvement actions only give points when fully completed, and some give partial points if they are completed for some devices or users.

We show you the full set of possible improvements, regardless of license, so you can understand security best practices and improve your score. Your absolute security posture is represented by Secure Score, which stays the same no matter what product licenses your organization owns. Keep in mind that security should be balanced with usability, and not every recommendation can work for your environment.

Your score is updated in real time to reflect the information presented in the visualizations and improvement action pages. Secure Score also syncs daily to receive system data about your achieved points for each action.

### How improvement actions are scored

Most are scored in a binary fashion — if you implement the improvement action, like create a new policy or turn on a specific setting, you get 100% of the points. For other improvement actions, points are given as a percentage of the total configuration. For example, if the improvement action states you get 30 points by protecting all your users with multi-factor authentication and you only have 5 of 100 total users protected, you would be given a partial score of around 2 points (5 protected / 100 total * 30 max pts = 2 pts partial score).

### Products included in Secure Score

Currently there are recommendations for Office 365 (including SharePoint Online, Exchange Online, OneDrive for Business, Microsoft Information Protection, and more), Azure AD, and Cloud App Security. Recommendations for other security products, like Azure ATP and Microsoft Defender ATP, are coming soon. The recommendations will not cover all the attack surfaces associated with each product, but they are a good baseline. You can also mark the improvement actions as covered by a third party.

## Required permissions

To have permission to access Microsoft Secure Score, you must be assigned one of the following roles in Azure Active Directory.

### Read and write roles

With read and write access, you can make changes and directly interact with Secure Score. You can also assign read-only access to other users.

* Global administrator
* Security administrator
* Exchange administrator
* SharePoint administrator

### Read-only roles

With read-only access, you are not able to edit status or notes for an improvement action, edit score zones, or edit custom comparisons.

* Helpdesk administrator
* User administrator
* Service administrator
* Security reader
* Security operator
* Global reader

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

## What's new?

To make Microsoft Secure Score a better representative of your security posture we have made some changes.

### Removed “not scored” improvement actions

One of the principles of Secure Score is that the score should be standardized and easy to relate to. Having improvement actions that are not measurable or actionable has been causing confusion. One Microsoft Secure Score only makes sense when every recommendation can have a clear effect on the score. Not scored improvement actions are not measurable.  

For these reasons, all improvement actions that were not scored have been removed. No action is needed on your part.

## What's coming?

To make Microsoft Secure Score a better representative of your security posture and improve usability, we are making some changes in the near future. Your score and the maximum possible score will change. However, this does not imply a change in your security posture.

### Removing improvement actions from Intune

After an evaluation of the Microsoft Secure Score improvement actions supplied from Intune, it was decided that they do not provide a useful representation of the security posture of devices in organizations. Instead of focusing on policies, we are working to bring in security controls that directly assess the configuration state of the devices.

The following Intune improvement actions will be removed:

- Enable Microsoft Intune Mobile Device Management
- Create a Microsoft Intune Compliance Policy for Android
- Create a Microsoft Intune Compliance Policy for Android for Work
- Create a Microsoft Intune App Protection Policy for Android
- Create a Microsoft Intune App Protection Policy for iOS
- Mark devices with no Microsoft Intune Compliance Policy assigned as not compliant
- Create a Microsoft Intune Compliance Policy for iOS
- Create a Microsoft Intune Compliance Policy for macOS
- Create a Microsoft Intune Compliance Policy for Windows
- Create a Microsoft Intune Configuration Profile for Android
- Create a Microsoft Intune Configuration Profile for Android for Work
- Create a Microsoft Intune Configuration Profile for macOS
- Create a Microsoft Intune Configuration Profile for iOS
- Create a Microsoft Intune Configuration Profile for Windows
- Enable enhanced jailbreak detection in Microsoft Intune
- Require all devices to be patched, have anti-virus, and firewalls enabled
- Enable Windows Defender ATP integration into Microsoft Intune
- Create a Microsoft Intune Windows Information Protection Policy
- Require all devices to have advanced security configurations
- Review blocked devices report weekly

### Removing improvement actions that don't meet expectations for reliable measurement

To ensure that the Microsoft Secure Score is meaningful and that every improvement action is measurable and reliable, we are removing the following improvement actions.

- Turn on audit data recording
- Discover risky and non-compliant shadow IT applications
- Review permissions & block risky OAuth applications connected to your environment
- Set up versioning on SharePoint online document libraries
- Store user documents in OneDrive for Business
- Do not allow mailbox delegation
- Allow anonymous guest sharing links for sites and docs
- Set up Office 365 ATP Safe Attachment policies
- Set up Office 365 Safe Links to verify URLs

### MFA improvement action updates

To reflect the need for businesses to ensure the upmost security while applying policies that work with their business, Microsoft Secure Score is removing three improvement actions centered around multi-factor authentication, and adding two.

The three that will be removed:

- Register all users for multi-factor authentication
- Require MFA for all users
- Require MFA for Azure AD privileged roles

New improvement actions added:

- Ensure all users can complete multi-factor authentication for secure access
- Require MFA for administrative roles

 These new improvement actions will require registering your users or admins for multi-factor authentication (MFA) across your directory and establishing the right set of policies that fit your organizational needs. The main goal is have flexibility while ensuring all your users and admins can authenticate with multiple factors or risk-based identity verification prompts. That can take the form of setting security defaults that let Microsoft decide when to challenge users for MFA, or having multiple policies that apply scoped decisions.

### Removing “review” improvement actions

One of the principles of Secure Score is that the score should be standardized and easy to relate to. Having improvement actions that are not measurable or actionable has been causing confusion. One Microsoft Secure Score only makes sense when every recommendation can have a clear effect on the score. Review improvement actions are not measured to the same standard as other improvement actions.  

For these reasons, all improvement actions that required a review cadence will be temporarily removed. No action is needed on your part.

### Simplification of the point system

To standardize points across multiple experiences, each Secure Score improvement action point total will be updated to be worth 10 points or less. It is necessary be more consistent across the wide breather of security controls that we have today and ones that we will be adding in the future. While this is a significant change and you will see a drop in point totals, there will be no change to your security posture.  

### Preview features

The following features will be included in the [preview release](microsoft-secure-score-preview.md):

* All new metrics and trends views for CISO and lead level discussions
* New ways to track and benchmark your score
* Better tracking and monitoring for score regressions
* Filter, tag, search, and group your improvement actions
* Manage towards your future goals using score projections and planned actions
* And more!

## We want to hear from you

If you have any issues, please let us know by posting in the [Security, Privacy & Compliance](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/bd-p/security_privacy) community. We're monitoring the community and will provide help.