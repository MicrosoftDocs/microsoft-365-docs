---
title: User support
description:  Explains the options for customer-led and partner-led support.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
manager: laurawi
ms.topic: article
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# User support

Your Microsoft Managed Desktop users can get support either from your organization (we call this "customer-led" support) or from a selected partner ("partner-led" support). We aim to provide a consistent experience for users while keeping devices secure with both support options. No matter which option you choose, these same principles apply: 

- Flexibile integration {OF WHAT WITH WHAT? WHAT'S BEING INTEGRATED?} to customize and align to your existing support processes 
- Clear roles and responsibilities between the support provider, IT adminS, and Microsoft Managed Desktop 
- Defined escalation paths {LINK TO SOMEPLACE THESE ARE DESCRIBED?}
- Documentation proviced by Microsoft Managed Desktop, along with tooling {WHAT IS "TOOLING"?} and APIs [link to these in “Working With” LMK WHICH ARTICLE AND SUBHEADING, IF ANY] 
- Threat monitoring and mitigation provided by Microsoft Managed Desktop all day every day

## Roles and responsibilities

To ensure the quality of service without compromising security, the support provider, IT admins, and Microsoft Managed Desktop each have different roles and responsibilities.

### Support provider

Whoever provides support (either you for customer-led support or a partner for partner-led) is responsible for these items:

- Providing all user support and technical assistance from first contact through to resolution for the user
- Fulfilling all established service level agreements for user support
- Specific troubleshooting actions {POTENTIAL LINK}
- Requesting elevated device privileges when needed to resolve problems
- Troubleshooting and remediating user problems, including:
    - Operating system (Windows)
    - Microsoft Apps for enterprise
    - Browser features
    - Device problems
    - Problems with infrastructure, such as printers, drivers, and VPNs
    - Line-of-business applications

### IT admin

Your IT admin is responsible for these items:

- Working with the support provider to set and manage service level agreements for user support
- Managing elevated access privileges for approved support staff
- If there are device issues affecting multiple users, escalating those by using the Microsoft Managed Desktop admin support process {LINK?}
- Route hardware-related issues to the appropriate vendor or supplier
- Maintain and protect device security policy settings on Microsoft Managed Desktop devices {HOW? SINCE MMD CONTROLS ALL THOSE THROUGH INTUNE, NO?}

### Microsoft Managed Desktop

As the service provider, we are responsible for these items:

- Providing support tooling {WHAT DOES THIS MEAN?} and integration for the support provider, including documentation
- Updating and maintaining roles and responsibilities between roles in providing user support for Microsoft Managed Desktop devices {I DON'T THINK I UNDERSTAND WHAT THIS IS TRYING TO SAY}
- Responding to admin support requests in accordance with the severity definitions {LINK}
- Providing threat monitoring and mitigation for all enrolled devices all day every day

## Workflow for support providers

Whether support is customer-led or partner-led, the flow of activity for a user support request follows this path:

{IMAGE}

Integrating your existing processes with this workflow for Microsoft Managed Desktop devices is flexible, so the details could be different. Typically, the support provider follows an existing tier-based or handoff approach, designating specific users who have the ability to elevate permissions or escalate issues to Microsoft Managed Desktop Operations. It's best to keep this group smaller than the broader support team.

If a user issue needs to be escalated to Microsoft Managed Desktop, it's helpful to identify which team the issue should be directed to. We can transfer cases appropriately, but it saves time to route them to the right place from the start.

- Problems specific to Microsoft Managed Desktop (for example, a policy or setting that's deployed by the service itself): escalate directly to the Operations team {LINK}
- Hardware problems: direct to your hardware supplier or vendor
- Other problems: escalate through existing support channels {WHICH ARE WHAT?}, whether that's a Unified or Premier subscription {TO WHAT? m365? MMD?}.
