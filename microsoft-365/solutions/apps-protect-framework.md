---
title: "Use the app protection framework with Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: how-to
ms.date: 04/21/2025
description: Use the app protection framework with Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Use the app protection framework

Your organization's data protection requirements may differ from other organizations. For this reason, you can tailor the app protection that you deploy from Intune based on your organization's specific needs. You can use the App protection policy (APP) data protection framework to apply app protection across your organization. The APP data protection framework is organized into three distinct configuration levels, with each consecutive level building off the previous level.

| Protection   level | Description |
|---|---|
| Enterprise basic data protection<br>(Level 1) | This is an entry level configuration that provides similar data protection control in Exchange Online mailbox policies and introduces you and your IT admins APP. Microsoft recommends this configuration as the minimum data protection configuration for an enterprise device. |
| Enterprise enhanced data protection<br>(Level 2)  | This protection level, which builds on the previous level, is applicable to most mobile users accessing work or school data. Microsoft recommends this configuration for devices where users access sensitive or confidential information.  |
| Enterprise high data protection<br>(Level 3) | This protection level, which also builds on the previous level, is desirable for users that are accessing high risk data.  Microsoft recommends this configuration for devices run by an organization with a larger or more sophisticated security team, or for specific users or groups who are at uniquely high risk (users who handle highly sensitive data where unauthorized disclosure causes considerable material loss to the organization). An organization likely to be targeted by well-funded and sophisticated adversaries should aspire to this configuration. |

> [!IMPORTANT]
> Because each protection level builds on the previous, you should consider implementing them in order.

## Steps before applying the app protection framework

Once you have followed the [prerequisites](apps-protect-overview.md#prerequisites) and understood the different app data protection settings available for each support platform, you can use the following process to add app protection policies. 

Process to add app data protection:
1. **Determine which platforms you must support at your organization** - For more information about app platforms, see [Supported platforms](apps-protect-overview.md#supported-platforms).
2. **Add one or more protected apps to Intune** - For more information, see [Intune protected apps](/mem/intune/apps/apps-supported-intune-apps). These apps have been enhanced to support Intune app protection policies. If you are uncertain, start with a Core Microsoft App. For more information, see [Apps to include in the App Protection Policies](/mem/intune/apps/app-protection-framework) and [Microsoft apps](/mem/intune/apps/apps-supported-intune-apps#microsoft-apps).
3. **Determine the level of app protection your organization requires**:
    1. [Minimum data protection](apps-protect-step-1.md)
    2. [Enhanced data protection](apps-protect-step-2.md)
    3. [High data protection](apps-protect-step-3.md)

> [!TIP]
> For more information about protected apps, suppported platforms, app store links, supported app configuration, and supported protection, see [Microsoft apps](/mem/intune/apps/apps-supported-intune-apps#microsoft-apps).

## Steps to apply the app protection framework

This solution steps you through the process of creating app protection policies in Microsoft Intune for specific apps and assigning those policies to members of your organization. Once you've completed the above [prerequisites](apps-protect-overview.md#prerequisites), you're ready to create app protection policies for your organization in Intune. Using configuration and protection policies as part of your app management efforts allows members of your organization to safely use apps. By managing apps at your organization, you help to protect and secure your organization’s data.

Follow these steps to add the recommended settings when adding app protection policies in Intune:
1. [Apply minimum data protection](apps-protect-step-1.md)
2. [Apply enhanced data protection](apps-protect-step-2.md)
3. [Apply high data protection](apps-protect-step-3.md)
4. [Understand app protection delivery](apps-protect-step-4.md)
5. [Verify and monitor app protection](apps-protect-step-5.md)
6. [Use app protection actions](apps-protect-step-6.md)

[:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-steps-01.png" alt-text="Step 1. Apply minimum data protection." border="false" :::](apps-protect-step-1.md)

After you completed the above steps, you are ready to deploy, manage, and monitor the managed apps your organization uses.
