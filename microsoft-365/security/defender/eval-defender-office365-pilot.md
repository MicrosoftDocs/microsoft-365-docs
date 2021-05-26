---
title: Pilot Microsoft Defender for Office
description: Steps to pilot your Evaluation with groups of active and existing users in order to properly test the features of Microsoft Defender for Office 365.
keywords: Microsoft 365 Defender trial, try Microsoft 365 Defender, evaluate Microsoft 365 Defender, Microsoft 365 Defender evaluation lab, Microsoft 365 Defender pilot, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.date: 05/25/2021
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-overview
  - m365solution-evalutatemtp
ms.topic: how-to
ms.technology: m365d
---

# Pilot Microsoft Defender for Office

**Applies to:**
- Microsoft 365 Defender

When you evaluate Microsoft Defender for Office 365, you may choose to pilot specific users before enabling and enforcing policies for your entire organization. Creating distribution groups can help manage the deployment processes. For example, create groups such as *Defender for Office 365 Users - Standard Protection*, *Defender for Office 365 Users - Strict Protection*, *Defender for Office 365 Users - Custom Protection*, or *Defender for Office 365 Users - Exceptions*.

It may not be evident why 'Standard' and 'Strict' are the terms used for this, but that will become clear when you explore more about Defender for Office 365 security presets. Naming groups 'custom' and 'exceptions' speak for themselves, and though most of your users should fall under *standard* and *strict*, custom and exception groups will collect valuable data for you regarding managing risk.

Distribution groups can be created and defined directly in Exchange Online or synchronized from on-premises Active Directory.

1. Logon to Exchange Admin Center (EAC) using an account that has been granted Recipient Administrator role or been delegated group management permissions.
2. From the navigation menu, expand *Recipients* and select *Groups*.

:::image type="content" source="../../media/MDOEval/1-MDO-eval-pilot.png" alt-text="Exchange admin center on the navigation menu (the quick launch) with an arrow pointing at Groups. Click Groups.":::

![Steps for creating the pilot for Microsoft 365 Defender for Office](../../media/defender/m365-defender-office-pilot.png)



## Step 1: Create pilot groups

add instructions


## Step 2: Configure protection

Some capabilities in Microsoft Defender for Office 365 are configured and turned on by default, but you'll want to raise the level of protection from the default. Some capabilities are not yet configured. You have three options for configuring protection:
- **Assign preset security policies** — Preset security policies are provided as a method to quickly assign a uniform level of protection across all of the capabilities. You can choose from standard or strict. One approach is to start with preset security policies and then fine-tune the policies as you learn more about the capabilies and your own unique threat environment. 
- **Configure baseline protection manually** — If you prefer to configure the environment yourself, you can quickly achieve a baseline of protection by following the guidance in [Protect against threats](../office-365-security/protect-against-threats.md). With this approach you get to learn more about the settings that are configurable. And, of course, you can fine-tune the policies later.
- **Configure custom protection policies** — You can also build and assign custom protection policies as part of your evaluation. Before you start customizing policies, it's important to understand the precedence in which these protection policies are applied and enforced.

### Option 1: Assign preset security policies

### Option 2: Configure baseline protection manually

### Option 3: Configure custom protection policies


## Step 3: Try out capabilities

Now that your pilot is set up and configured, it's helpful to become familiar with the reporting and attack simulation tools that are unique to Microsoft Defender for Microsoft 365.


|Capability  |Description  |More information  |
|---------|---------|---------|
|Row1     |         |         |
|Threat Explorer     | Threat Explorer is a powerful near real-time tool to help Security Operations teams investigate and respond to threats and displays information about suspected malware and phish in email and files in Office 365, as well as other security threats and risks to your organization.        | [Views in Threat Explorer and real-time detections ](../office-365-security/threat-explorer-views.md)       |
|Attack Simulator     | You can use Attack Simulator in the Security & Compliance Center to run realistic attack scenarios in your organization which help you identify and find vulnerable users before a real attack impacts your environment.        |  [Attack Simulator in Microsoft Defender for Office 365](../office-365-security/attack-simulator.md)       |
|Row4     |         |         |
|Row5     |         |         |

### Navigation you may need

[**Return to the Eval Overview** 'Evaluate and pilot Microsoft 365 Defender' | Microsoft Docs](../office-365-security/defender/eval-overview.md) 

[**Return to the evaluation environment** article | Microsoft Docs](/microsoft-365/security/defender/eval-defender-office365-enable-eval)

### Helpful information

[Recommended settings for EOP and Microsoft Defender for Office 365 security](../office-365-security/recommended-settings-for-eop-and-office365.md)