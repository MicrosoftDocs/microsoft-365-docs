---
title: "Step 4: Configure Windows Information Protection"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/19/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
ms.custom:
description: Understand and deploy Windows Information Protection in Microsoft 365.
---

# Step 4: Configure Windows Information Protection

*This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![Phase 6: Information Protection](./media/deploy-foundation-infrastructure/infoprotection_icon-small.png)

With more personal devices being used for work, there’s increased risk for apps and devices to leak private organization data. For example, an employee inadvertently sends a picture of a marketing plan for a future product to a social media site or saves a file containing highly confidential information to their public cloud storage. 

Windows Information Protection (WIP) helps protect against these types of data leakage on Windows 10 devices. For more information, see [Protect your enterprise data using WIP](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip).

In Microsoft 365 Enterprise, WIP is a combination of Windows 10 Enterprise and Microsoft Intune, which is included with your subscription. 

To deploy WIP in your organization with Microsoft 365 Enterprise:

1. Enroll your Windows devices in Intune. You should have done this in [Phase 5: Mobile Device Management](mobility-infrastructure.md).
2. Create an [Intune policy for WIP](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/create-wip-policy-using-intune-azure).
  -	Ensure that you have filled out your Protected apps list.
  - Choose your WIP protection level.

You can also use WIP with [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/overview-create-wip-policy-sccm). 

See [WIP best practices]( https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/guidance-and-best-practices-wip) for more information.

As an interim checkpoint, see the [exit criteria](infoprotect-exit-criteria.md#crit-infoprotect-step4) corresponding to this step.

## Next step

|||
|:-------|:-----|
|![Step 5](./media/stepnumbers/Step5.png)|[Configure Office 365 Data Loss Prevention](infoprotect-data-loss-prevention.md)|


