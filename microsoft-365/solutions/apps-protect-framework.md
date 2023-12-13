---
title: "Use the app protection framework with Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
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
1. **Determine which platforms you must support at your organization** - For more information about app platforms, see [Supported platforms](/microsoft-365/solutions/apps-protect-overview#supported-platforms).
2. **Add one or more protected apps to Intune** - For more information, see [Intune protected apps](/mem/intune/apps/apps-supported-intune-apps). These apps have been enhanced to support Intune app protection policies. If you are uncertain, start with a Core Microsoft App. For more information, see [Apps to include in the App Protection Policies](/mem/intune/apps/app-protection-framework) and [Microsoft apps](/intune/apps/apps-supported-intune-apps#microsoft-apps).
3. **Determine the level of app protection your organization requires**:
    1. [Minimum data protection](/microsoft-365/solutions/apps-protect-step-1)
    2. [Enhanced data protection](/microsoft-365/solutions/apps-protect-step-2)
    3. [High data protection](/microsoft-365/solutions/apps-protect-step-3)

> [!TIP]
> For more information about protected apps, suppported platforms, app store links, supported app configuration, and supported protection, see [Microsoft apps](/intune/apps/apps-supported-intune-apps#microsoft-apps).

<!--
https://learn.microsoft.com/mem/intune/apps/app-protection-policy#app-protection-policy-data-protection-framework
-->