---
title: What's coming in Microsoft Secure Score?
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

# What's coming in Microsoft Secure Score?

To make Microsoft Secure Score a better representative of your security posture and improve usability, we are making some changes in the near future. Your score and the maximum possible score will change. However, this does not imply a change in your security posture.

To learn about recent changes, see [What's new in Microsoft Secure Score?](microsoft-secure-score.md#whats-new)

## March 16th 2020

### Removing improvement actions that don't meet expectations for reliable measurement or don't provide a useful representation of security posture

To ensure that the Microsoft Secure Score is meaningful and that every improvement action is measurable and reliable, we are removing the following improvement actions.

- Store user documents in OneDrive for Business
- Set up Office 365 ATP Safe Attachment policies
- Set up Office 365 Safe Links to verify URLs
- Do not allow mailbox delegation
- Allow anonymous guest sharing links for sites and docs
- Turn on Cloud App Security Console
- Configure expiration time for external sharing links

### Supporting security defaults for Azure AD improvement actions

Microsoft Secure Score will be updating improvement actions to support [security defaults in Azure AD](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults), which make it easier to help protect your organization with pre-configured security settings for common attacks.

It will affect the following improvement actions:

- Ensure all users can complete multi-factor authentication for secure access
- Require MFA for administrative roles
- Enable policy to block legacy authentication
