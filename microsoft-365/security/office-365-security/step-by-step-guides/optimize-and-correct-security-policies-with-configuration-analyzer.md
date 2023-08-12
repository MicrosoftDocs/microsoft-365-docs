---
title: Optimize and correct security policies with configuration analyzer
description: The steps to optimize and correct security policies with configuration analyzer. Configuration analyzer is a central location and single pane of glass for administering and viewing the email security policies you have configured in your tenant.
search.product:
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
ms.subservice: mdo
search.appverid: met150
ms.date: 1/31/2023
---

# Optimize and correct security policies with configuration analyzer

Configuration analyzer is a central location and single pane of glass for administering and viewing the email security policies you have configured in your tenant. You can perform a side-to-side comparison of your settings to our Standard and Strict recommended settings, apply recommendations and view historical changes that affected your posture.

## What you'll need

- Exchange Online Protection
- Sufficient permissions (Security Administrator role)
- 5 minutes to perform the steps below.

## Compare settings and apply recommendations

1. Navigate to [https://security.microsoft.com/configurationAnalyzer](https://security.microsoft.com/configurationAnalyzer).
1. Pick either **Standard recommendations** or **Strict recommendations** from the top menu based on the side-to-side comparison you'd like to make.
1. Recommendations for policy changes will be displayed. (If applicable)
1. You can then select a recommendation, note the recommended action, policy which the recommendation is applicable to, setting name & current configuration etc.
1. With a recommendation selected, you can press **Apply recommendation** and then **OK** on the confirmation message that appears.
1. If you wish to manually edit a policy, or confirm settings directly within the policy, you can press **View policy** instead of **Apply recommendation** which will load a new tab and take you directly to the affected policy for ease.

## View historical configuration changes

While in **Configuration analyzer** you can select **Configuration drift analysis and history** from the top menu bar.

The page which loads will show you the modifications to your security policies in the timeframe selected by the filters, along with data about the change and if it increased or decreased your overall posture.

To learn more details about Configuration Analyzer, see [Configuration analyzer for security policies - Office 365 | Microsoft Docs](../../office-365-security/configuration-analyzer-for-security-policies.md).
