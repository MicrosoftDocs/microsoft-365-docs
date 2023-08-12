---
title: Pilot Microsoft Defender for Cloud Apps with Microsoft 365 Defender
description: Set up your Microsoft 365 Defender trial lab or pilot environment to test and experience the security solution designed to protect devices, identity, data, and applications.
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: bcarter
author: brendacarter
ms.date: 07/09/2021
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - m365solution-scenario
  - m365solution-evalutatemtp
  - zerotrust-solution
  - highpri
  - tier1
ms.topic: conceptual
---

# Pilot Microsoft Defender for Cloud Apps with Microsoft 365 Defender


**Applies to:**
- Microsoft 365 Defender

This article is [Step 3 of 3](eval-defender-mcas-overview.md) in the process of setting up the evaluation environment for Microsoft Defender for Cloud Apps. For more information about this process, see the [overview article](eval-defender-mcas-overview.md).

Use the following steps to set up and configure the pilot for Microsoft Defender for Cloud Apps.


:::image type="content" source="../../media/defender/m365-defender-mcas-pilot-steps.png" alt-text="The steps for piloting the Microsoft Defender for Cloud Apps" lightbox="../../media/defender/m365-defender-mcas-pilot-steps.png":::
- [Step 1. Create the pilot group—Scope your pilot deployment to certain user groups](#step-1-create-the-pilot-groupscope-your-pilot-deployment-to-certain-user-groups)
- [Step 2. Configure protection—Conditional Access App Control](#step-2-configure-protectionconditional-access-app-control)
- [Step 3. Try out capabilities—Walk through tutorials for protecting your environment](#step-3-try-out-capabilitieswalk-through-tutorials-for-protecting-your-environment) 

## Step 1. Create the pilot group—Scope your pilot deployment to certain user groups

Microsoft Defender for Cloud Apps enables you to scope your deployment. Scoping allows you to select certain user groups to be monitored for apps or excluded from monitoring. You can include or exclude user groups. To scope your pilot deployment, see [Scoped Deployment](/cloud-app-security/scoped-deployment).


## Step 2. Configure protection—Conditional Access App Control

One of the most powerful protections you can configure is Conditional Access App Control. This protection requires integration with Azure Active Directory (Azure AD). It allows you to apply Conditional Access policies, including related policies (like requiring healthy devices), to cloud apps you've sanctioned. 

The first step in using Microsoft Defender for Cloud Apps to manage SaaS apps is to discover these apps and then add them to your Azure AD tenant. If you need help with discovery, see [Discover and manage SaaS apps in your network](/cloud-app-security/tutorial-shadow-it). After you've discovered apps, [add these apps to your Azure AD tenant](/azure/active-directory/manage-apps/add-application-portal).

You can begin to manage these apps by executing the following tasks:

- First, in Azure AD, create a new conditional access policy and configure it to "Use Conditional Access App Control." This configuration helps to redirect the request to Defender for Cloud Apps. You can create one policy and add all SaaS apps to this policy.
- Next, in Defender for Cloud Apps, create session policies. Create one policy for each control you want to apply.

For more information, including supported apps and clients, see [Protect apps with Microsoft Defender for Cloud Apps Conditional Access App Control](/cloud-app-security/proxy-intro-aad). 

For example policies, see [Recommended Microsoft Defender for Cloud Apps policies for SaaS apps](../office-365-security/mcas-saas-access-policies.md). These policies build on a set of [common identity and device access policies](../office-365-security/microsoft-365-policies-configurations.md) that are recommended as a starting point for all customers. 

## Step 3. Try out capabilities—Walk through tutorials for protecting your environment 

The Microsoft Defender for Cloud Apps documentation includes a series of tutorials to help you discover risk and protect your environment. 

Try out Defender for Cloud Apps tutorials:

- [Detect suspicious user activity](/cloud-app-security/tutorial-suspicious-activity)
- [Investigate risky users](/cloud-app-security/tutorial-ueba)
- [Investigate risky OAuth apps](/cloud-app-security/investigate-risky-oauth)
- [Discover and protect sensitive information](/cloud-app-security/tutorial-dlp)
- [Protect any app in your organization in real time](/cloud-app-security/tutorial-proxy)
- [Block downloads of sensitive information](/cloud-app-security/use-case-proxy-block-session-aad)
- [Protect your files with admin quarantine](/cloud-app-security/use-case-admin-quarantine)
- [Require step-up authentication upon risky action](/cloud-app-security/tutorial-step-up-authentication)

For more information on advanced hunting in Microsoft Defender for Cloud Apps data, see the [video](https://www.microsoft.com/en-us/videoplayer/embed/RWFISa).

## Next steps

[Investigate and respond using Microsoft 365 Defender in a pilot environment](eval-defender-investigate-respond.md)

Return to the overview for [Evaluate Microsoft Defender for Cloud Apps](eval-defender-mcas-overview.md)

Return to the overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
