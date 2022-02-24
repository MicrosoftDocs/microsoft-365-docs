---
title: Use the wizard to set up Microsoft Defender for Business (preview)
description: Defender for Business includes a wizard-like setup and configuration process. Use the wizard to save time and effort.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: article
ms.date: 02/21/2022
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
ms.custom: intro-get-started
---

# Use the wizard to set up Microsoft Defender for Business (preview)

> [!IMPORTANT]
> Microsoft Defender for Business is now in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. We will onboard an initial set of customers and partners in the coming weeks and will expand the preview leading up to general availability. Note that preview will launch with an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

Microsoft Defender for Business (preview) was designed to save small and medium-sized businesses time and effort with a wizard-like experience for initial setup and configuration. This article describes the steps of the wizard and your options for setting up and configuring Defender for Business manually.

:::image type="content" source="media/mdb-wizard-start.png" alt-text="Screenshot of wizard home screen to set up Defender for Business.":::

## Overview of the wizard

The wizard is designed to help you set up and configure Defender for Business quickly and efficiently. The wizard walks you through the following steps:

1. **Assign user permissions**. In this step, you grant your security team access to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). Portal access is granted through roles that imply certain permissions. [Learn more about roles and permissions](mdb-roles-permissions.md).

   - A Global Admin can view and edit all settings across your Microsoft 365 tenant. 
   - A Security Administrator can view and edit security settings. 
   - A Security Reader can only view information in reports. 

2. **Onboard and configure Windows devices**. In this step, you can onboard your organization's Windows devices to Defender for Business quickly. Onboarding devices right away helps to protect those devices from day one. See [Onboard devices to Microsoft Defender for Business (preview)](mdb-onboard-devices.md) for more details.

   - If you're already using Microsoft Intune (part of Microsoft Endpoint Manager), and your organization has devices enrolled in Endpoint Manager, you'll be asked whether you want to use automatic onboarding for some or all of your enrolled Windows devices. Automatic onboarding sets up a connection between Endpoint Manager and Defender for Business, and then onboards Windows devices to Defender for Business seamlessly.

   - If you're not already using Endpoint Manager, or if you have non-Windows devices enrolled in Endpoint Manager, you can onboard devices to Defender for Business (preview) manually. 
   
3. **Configure your security policies**. Defender for Business includes default security policies for next-generation protection and firewall protection that can be applied to your organization's devices. These default policies use recommended settings and are designed to provide strong protection for your devices. 

   You can also create your own security policies if you wish. And, if you're already using Endpoint Manager, you can continue using that to manage your security policies. 

   To learn more, see [View and edit your security policies and settings](mdb-configure-security-settings.md).

## What happens if I don't use the wizard?

If you choose not to use the wizard, or if you exit the wizard before your setup process is complete, you can still complete your setup and configuration process on your own. See [Set up and configure Microsoft Defender for Business (preview)](mdb-setup-configuration.md) to walk through the steps.

## Next steps

- [Set up email notifications for your security team](mdb-email-notifications.md)

- [Get started using the Microsoft 365 Defender portal](mdb-get-started.md)

- [Use your Threat & Vulnerability Management dashboard](mdb-view-tvm-dashboard.md)
