---
title: Manage generative AI apps for your organization
f1.keywords: NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.reviewer: 
ms.date: 12/23/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: article
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.collection: 
- m365copilot
- magic-ai-copilot
description: Learn how to discover, monitor, and manage the generative AI apps your organization uses. 
appliesto:
- ✅ Microsoft 365 Copilot
---

# Manage generative AI apps for your organization

As people embrace and incorporate [generative AI apps](/ai/playbook/technology-guidance/generative-ai/), such as Microsoft 365 Copilot and non-Microsoft AI apps into daily work, it's important for your organization's security team to be able to manage those apps. Microsoft applies a multi-layered, defense-in-depth strategy to secure Microsoft 365 Copilot at every level (see [What Microsoft does to secure Microsoft 365 Copilot](microsoft-365-copilot-ai-security.md#what-microsoft-does-to-secure-microsoft-365-copilot)). 

But what about non-Microsoft AI apps? 

Using capabilities in [Data Security Posture Management (DSPM) for AI](/purview/dspm-for-ai?tabs=m365) (part of Microsoft Purview) and/or [Microsoft Defender for Cloud Apps](/defender-cloud-apps/what-is-defender-for-cloud-apps) (part of Microsoft Defender), your security team can empower people in your organization to use generative AI apps more securely, including both Microsoft and non-Microsoft AI apps.

This article describes how to:

- [Use DSPM for AI to discover and manage AI app usage](#use-dspm-for-ai-to-discover-and-manage-ai-app-usage); and 
- [Use Defender for Cloud Apps to discover, monitor, or block generative AI apps](#use-defender-for-cloud-apps-to-discover-monitor-or-block-generative-ai-apps)

Discovering, monitoring, and managing AI apps is essential to prevent data leaks, maintain compliance, enforce governance, and uphold trust in enterprise AI adoption. This article describes how to perform these tasks using DSPM for AI and Defender for Cloud Apps.

## Before you begin

- **Make sure you have appropriate permissions assigned** to perform the tasks in this article.
   - See [Microsoft Purview permissions](/purview/purview-permissions#microsoft-purview-permissions)
   - See [Microsoft 365 and Microsoft Entra roles with access to Defender for Cloud Apps](/defender-cloud-apps/manage-admins#microsoft-365-and-microsoft-entra-roles-with-access-to-defender-for-cloud-apps)

- **To use DSPM for AI, configure Purview**. Select one or more of the [Microsoft Purview deployment models](/purview/deploymentmodels/depmod-overview), which include:
   - [Secure by default](/purview/deploymentmodels/depmod-securebydefault-intro)
   - [Purview Data Security Posture Management](https://aka.ms/DSPMBlueprintPDF)

- **To use Defender for Cloud Apps, [set up Microsoft Defender XDR](/defender-xdr/pilot-deploy-overview)**, including these components:
   - [Microsoft Defender for Cloud Apps](/defender-xdr/pilot-deploy-defender-cloud-apps) for discovering, monitoring, and blocking specific AI applications
   - [Microsoft Defender for Endpoint](/defender-xdr/pilot-deploy-defender-endpoint) for preventing unsanctioned AI apps from running on onboarded devices

## Use DSPM for AI to discover and manage AI app usage

DSPM for AI provides your security and compliance team to discover AI activity, protect data in AI prompts, and govern data handling. [Learn more about DSPM for AI](/purview/dspm-for-ai?tabs=m365).

1. **Create or activate Purview policies**. DSPM for AI includes default policies that you can activate. See [One-click policies from Data Security Posture Management for AI](/purview/dspm-for-ai-considerations#one-click-policies-from-data-security-posture-management-for-ai).

2. **After your policies are deployed, you can view generative AI events in the activity explorer and in audit logs**. Examples of such events include:

   - User interactions with a generative AI site
   - Data Loss Prevention (DLP) rules matched during user interactions with a generative AI site
   - Sensitive information types were found in user interactions with a generative AI site

   For more information, see [Activity explorer events](/purview/dspm-for-ai-considerations#activity-explorer-events) and [Audit logs for Copilot and AI applications](/purview/audit-copilot).

3. **Configure DLP policies for the Microsoft Edge browser** and [block other browsers](/deployedge/microsoft-edge-management-service-customizations#block-other-browsers). This action prevents users from accessing unmanaged AI apps in unprotected browsers. For more information, see [Activate your DLP policy in Microsoft Edge](/deployedge/microsoft-edge-dlp-purview-configuration).

## Use Defender for Cloud Apps to discover, monitor, or block generative AI apps

With Defender for Cloud Apps, you can discover, monitor, or block generative AI applications in your organization, as described in the following sections.

### Use the cloud app catalog to discover AI apps

You can use the Microsoft Defender portal to see a list of AI apps your organization is using. Defender for Cloud Apps provides a catalog of apps with security and compliance risk scores. See [Cloud app discovery overview](/defender-cloud-apps/set-up-cloud-discovery).

1. Go to the [Microsoft Defender portal](https://security.microsoft.com) and sign in.

2. In the navigation pane, expand **Cloud apps**, and then select **Cloud app catalog**.

3. In the **Category** filter, select **Generative AI**. 

4. Review the list of apps, along with their risk scores. Make a note of the apps you might want to monitor or block. For more information about risk scores, see [Find your cloud app and calculate risk scores](/defender-cloud-apps/risk-score).

### Create a policy to monitor AI apps

Make sure to review the [prerequisites](/defender-cloud-apps/governance-discovery#prerequisites). Also see [Control cloud apps with policies](/defender-cloud-apps/governance-discovery#control-cloud-apps-with-policies).

Create a new [custom policy](/defender-cloud-apps/app-governance-app-policies-create#custom-policies), specifying the following settings:

- For **Policy template**, choose **No template**.
- For **Policy name**, type a name, like *New Generative AI Apps*.
- For **Policy severity**, select the level 2 option.
- Provide a description, like *Generate an alert when a new Generative AI app is used*.
- In the **Apps matching all of the following** section, specify **Category equals Generative AI**.
- In the **Apply to** list, select **All continuous reports**.

### Create a policy to block specific AI apps

Make sure to review the articles [Control cloud apps with policies](/defender-cloud-apps/governance-discovery#control-cloud-apps-with-policies) and [Create app governance policies](/defender-cloud-apps/app-governance-app-policies-create#custom-policies).

1. In the [Microsoft Defender portal](https://security.microsoft.com), in the navigation pane, select **Cloud apps** > **Cloud discovery**. 

2. On the **Discovered apps** tab, in the **Category** filter, select **Generative AI**.

3. In the list of results, select an AI app that you want to block. At the end of its row, select the three dots, and then select **Unsanctioned**. This action adds an *Unsanctioned* tag that enables you to monitor the app.

   > [!IMPORTANT]
   > When an app is marked as unsanctioned, it's automatically blocked across devices that are onboarded to Defender for Endpoint. However, your security team can specify whether to warn and educate users instead of blocking apps. See [Educate users when accessing risky apps](/defender-cloud-apps/mde-govern#educate-users-when-accessing-risky-apps).

4. In the navigation pane, select **Cloud apps** > **App governance**.

5. Select the **Policies** tab, and then create a new [custom policy](/defender-cloud-apps/app-governance-app-policies-create#custom-policies), specifying the following settings:

   - For **Policy template**, choose **No template**.
   - For **Policy name**, type a name, like *Unsanctioned AI Apps*.
   - Provide a description, like *Block unsanctioned AI apps*.
   - In the **Apps matching all of the following** section, specify a condition, such as **Category equals Generative AI** and **Tag equals Unsanctioned**.
   - In the **Apply to** list, select **All continuous reports**.

## See also

- [Microsoft Purview data security and compliance protections for generative AI apps](/purview/ai-microsoft-purview)
- [App governance in Microsoft Defender for Cloud Apps](/defender-cloud-apps/app-governance-manage-app-governance)
- [Tech Community blog: Discover, monitor, and protect the use of Generative AI apps](https://techcommunity.microsoft.com/blog/microsoftthreatprotectionblog/discover-monitor-and-protect-the-use-of-generative-ai-apps/3999228)
- [Considerations to manage Microsoft 365 Copilot and Channel Agent in Teams for security and compliance](/purview/ai-m365-copilot-considerations)
- [Learn about using Microsoft Purview Data Loss Prevention to protect interactions with Microsoft 365 Copilot and Copilot Chat](/purview/dlp-microsoft365-copilot-location-learn-about)
