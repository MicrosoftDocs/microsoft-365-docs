---
title: Microsoft Defender for Business troubleshooting
description: Resolve issues that might occur in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 11/15/2021
ms.prod: m365-security
ms.technology: mde
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Microsoft Defender for Business troubleshooting

Use this article as a guide to resolve issues you might encounter in Microsoft Defender for Business.

## I need to resolve a policy conflict.

Policy conflicts can arise when security policies and settings are defined using multiple tools or methods. Here's an example:

Suppose that Lee has been using Microsoft Endpoint Manager to manage devices and security settings. Lee has recently started using Microsoft Defender for Business. Lee has chosen to use the simplified configuration process in Defender for Business. Now, Lee sees policy conflicts in Microsoft Endpoint Manager and in the Microsoft 365 Defender portal. 

### Resolve policy conflicts

To resolve policy conflicts, take one or more of the following actions:

- Delete your existing policies in Microsoft Endpoint Manager
- See [Troubleshoot policies in Microsoft Intune](/troubleshoot/mem/intune/troubleshoot-policies-in-microsoft-intune)

### Learn more about policy settings

See the following articles to learn more about your security policies and settings in Defender for Business:

- [Understand next-generation configuration settings in Microsoft Defender for Business](mdb-next-gen-configuration-settings.md)
- [Firewall settings in Microsoft Defender for Business](mdb-firewall.md)

## My setup and configuration process failed

If you were using the simplified configuration process in Defender for Business and something went wrong, you can still configure your security settings and policies manually.

See [Set up and configure Microsoft Defender for Business](mdb-setup-configuration.md).

## See also

- [Microsoft Defender for Business - Frequently asked questions and answers](mdb-faq.md)