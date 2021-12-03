---
title: "Step 5. Deploy device profiles in Microsoft Intune"
ms.author: bcarter
author: brendacarter
f1.keywords:
- NOCSH
manager: dougeby
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection:
- M365-security-compliance
- m365solution-managedevices
- m365solution-scenario
ms.custom: 
keywords: 
description: 
---

# Step 5. Deploy device profiles in Microsoft Intune

Microsoft Intune includes settings and features you can enable or disable on different devices within your organization. These settings and features are added to "configuration profiles." You can create profiles for different devices and different platforms, including iOS/iPadOS, Android device administrator, Android Enterprise, and Windows. Then, use Intune to apply or "assign" the profile to the devices.

This article provides guidance on getting started with configuration profiles. 


![Steps for managing devices](../media/devices/intune-mdm-step-4.png#lightbox)

Configuration profiles give you the ability to configure important protection and to bring devices into compliance so they can access your resources. Previously, these kinds of configuration changes were configured by using Group Policy settings in Active Directory Domain Services. A modern security strategy includes moving security controls to the cloud where enforcement of these is not dependent on on-premises resources and access. Intune configuration profiles are the way to transition these security controls to the cloud. 

To give you an idea of the kind of configuration profiles you can create, see [Apply features and settings on your devices using device profiles in Microsoft Intune](/mem/intune/configuration/device-profiles).

## Deploy Windows security baselines for Intune

As a starting point, if you want to align your device configurations to Microsoft security baselines, we recommend the security baselines within Microsoft Endpoint Manager. The advantage of this approach is you can rely on Microsoft to keep the baselines up to date as Windows 10 and 11 features are released. 

To deploy the Windows security baselines for Intune, available for Windows 10 and Windows 11. See [Use security baselines to configure Windows devices in Intune](/mem/intune/protect/security-baselines) to learn about the available baselines.

For now, just deploy the most appropriate MDM security baseline. See [Manage security baseline profiles in Microsoft Intune ](/mem/intune/protect/security-baselines-configure)to create the profile and choose the baseline version.

Later, when Microsoft Defender for Endpoint is set up and you’ve connected Intune, deploy the Defender for Endpoint baselines. This is covered in the next article in this series: [Step 6. Monitor device risk and compliance to security baselines](manage-devices-with-intune-monitor-risk.md).

It is important to understand that these security baselines are not CIS or NIST compliant but closely mirror their recommendations. For more information, see [Are the Intune security baselines CIS or NIST compliant](/mem/intune/protect/security-baselines)?

## Customize configuration profiles for your organization

In addition to deploying the pre-configured baselines, many enterprise-scale organizations implement configuration profiles for more granular control. This helps reduce the dependency on Group Policy Objects in the on-premises Active Directory environment and move security controls to the cloud. 

The many settings you can configure by using configuration profiles can be grouped into four categories, as illustrated below.

![Intune device profile categories](../media/devices/intune-device-profile-categories.png#lightbox)

The following table describes the illustration.


|Category |Description |Examples  |
|---------|---------|---------|
|Device features     | Controls features on the device. This category only applies to iOS/iPadOS and macOS devices.        | Airprint, notifications, lock screen messages        |
|Device restrictions     | Controls security, hardware, data sharing, and more settings on the devices        | Require a PIN, data encryption        |
|Access configuration     |  Configures a device to access your organization’s resources        | Email profiles, VPN profiles, Wi-Fi settings, certificates        |
|Custom     | Set custom configuration or execute custom configuration actions       | Set OEM settings, execute PowerShell scripts        |
|    |         |         |

When customizing configuration profiles for your organization, use the following guidance:
- Simplify your security governance strategy by keeping the overall number of policies small.
- Group settings into the categories listed above, or categories that make sense for your organization.
- When moving security controls from Group Policy Objects (GPO) to Intune configuration profiles, consider whether the settings configured by each GPO are still relevant and needed to contribute to your overall cloud security strategy. Conditional access and the many policies that can be configured across cloud services, including Intune, provide more sophisticated protection than could be configured in an on-premises environment where custom GPOs were originally designed.
- Utilize Group Policy Analytics to compare and map your current GPO settings to capabilities within Microsoft Endpoint Manager. See [Analyze your on-premises group policy objects (GPO) using Group Policy analytics](/mem/intune/configuration/group-policy-analytics) in Microsoft Endpoint Manager.
- When utilizing custom configuration profiles, be sure to use the guidance here: [Create a profile with custom settings in Intune](/mem/intune/configuration/custom-settings-configure).

## Additional resources

If you're not sure where to start with device profiles, the following can help:

- [Guided scenarios](/mem/intune/fundamentals/guided-scenarios-overview) 
- [Security baselines](/mem/intune/protect/security-baselines)

If your environment includes on-prem GPOs, the following features are a good transition to the cloud:

- [Group Policy analytics](/mem/intune/configuration/group-policy-analytics)
- [Admin templates (ADMX)](/mem/intune/configuration/administrative-templates-windows)
- [Settings Catalog](/mem/intune/configuration/settings-catalog)


## Next steps
Go to [Step 6. Monitor device risk and compliance to security baselines](manage-devices-with-intune-monitor-risk.md).