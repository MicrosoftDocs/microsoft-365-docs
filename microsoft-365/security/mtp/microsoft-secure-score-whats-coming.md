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

## March 2nd 2020

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

### MFA improvement action updates

To reflect the need for businesses to ensure the upmost security while applying policies that work with their business, Microsoft Secure Score is removing three improvement actions centered around multi-factor authentication, and adding two.

The three that will be removed:

- Register all users for multi-factor authentication
- Require MFA for all users
- Require MFA for Azure AD privileged roles

New improvement actions added:

- Ensure all users can complete multi-factor authentication for secure access
- Require MFA for administrative roles

 These new improvement actions will require registering your users or admins for multi-factor authentication (MFA) across your directory and establishing the right set of policies that fit your organizational needs. The main goal is have flexibility while ensuring all your users and admins can authenticate with multiple factors or risk-based identity verification prompts. That can take the form of having multiple policies that apply scoped decisions, or setting security defaults (coming March 16th) that let Microsoft decide when to challenge users for MFA.

### Removing “review” improvement actions

One of the principles of Secure Score is that the score should be standardized and easy to relate to. Having improvement actions that are not measurable or actionable has been causing confusion. One Microsoft Secure Score only makes sense when every recommendation can have a clear effect on the score. Review improvement actions are not measured to the same standard as other improvement actions.  

For these reasons, all improvement actions that required a review cadence will be temporarily removed. No action is needed on your part.

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
