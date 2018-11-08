---
title: Device configuration 
description: Learn about the default policies applied to Microsoft Managed Desktop devices.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: trudyha
ms.localizationpriority: normal
ms.date: 09/24/2018
---

# Device configuration


<!--This topic is the target for a "Learn more" link in the Enterprise Agreement (aka.ms/dev-config); do not delete.-->

<!-- Device configuration and Security Addendum-->

When a new Microsoft Managed Desktop device is being provisioned, we ensure that the right configuration, optimized for Microsoft Managed Desktop, is in place. This includes a set of default policies that are configured as part of the onboarding process. To avoid conflicts, these policies should not be altered. 

Devices will arrive with a signature image, then join the Azure Active Directory domain when the first user logs in. The device will automatically install required policies and applications without any IT intervention needed.

## Why MDM over Group Policy

There are a few reasons to use mobile device management (MDM) instead of Group Policy:

- Security - MDM policies are more secure in the modern world. Group Policy designed to work best with on-premises identity. MDM designed to work best with cloud identity management (Azure Active Directory (Azure AD)).
- Reliability - MDM policies provide more reliable policy deployment. MDM settings overwrite Group Policy Object (GPO) policies. Starting with Windows 10, version 1803, MDM settings will be prioritized over the Group Policy values. This supports customers moving to modern management. 
- Align with Microsoft Managed Desktop vision - Better monitoring on policy deployment. Support ring-based approach to gradually rollout policy changes with capability to pause / resume deployment when necessary.

## Default policies

This table highlights the default polices that are applied to all Microsoft Managed Desktop devices during device provisioning. To avoid conflict, these policies should not be altered. All detected changes not approved by Microsoft Managed Desktop Operations Team to objects managed by Microsoft Managed Desktop will be reverted.

Policy | Description
--- | ---
Security baseline | [Microsoft security baseline](https://docs.microsoft.com/windows/device-security/windows-security-baselines) for MDM is configured for all Microsoft Managed Desktop devices. This baseline is the industry-standard configuration. It is publicly released, well tested, and has been reviewed by Microsoft security experts to keep Microsoft Managed Desktop devices and apps secure in the modern workplace. <br><br>To mitigate threats in the constantly-evolving security threat landscape, the Microsoft security baseline will be updated and deployed to Microsoft Managed Desktop devices with each Windows 10 feature update.<br><br>For more information, see [Security baseline for Windows 10](https://blogs.technet.microsoft.com/secguide/2017/10/18/security-baseline-for-windows-10-fall-creators-update-v1709-final/).
Microsoft Managed Desktop recommended security template | A set of recommended changes to the security baseline that optimize user experience.  These changes are documented in [the Security Addendum](#security-addendum). Updates to the policy addendum occur on an as needed basis.  
Device compliance | These policies are configured by default for all Microsoft Managed Desktop devices. A device is reported as non-compliant when one of the following security conditions is not met:<br>- BitLocker Device Encryption enabled, to protect data on devices. For more information, see [Overview of BitLocker Device Encryption in Windows 10.](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-device-encryption-overview-windows-10)<br>- Secure Boot enabled and enforced, to validate firmware images on devices before they can execute. For more information, see [Secure boot and device encryption overview.](https://docs.microsoft.com/windows-hardware/drivers/bringup/secure-boot-and-device-encryption-overview)<br>- Password required to access Microsoft Managed Desktop devices.
Update deployment | Use Windows Update for Business (WUfB) to perform gradual deployment of software updates. IT admins can’t modify settings for the deployment ring policies. For more information on ring-based deployment, see [How updates are handled](../working-with-managed-desktop/updates.md).
Telemetry | Devices will be set to provide Enhanced diagnostic data to Microsoft under a known commercial identifier. For customers in General Data Protection Regulation (GDPR) regions, end users can reduce the level of diagnostic data that is provided. You can customize this, but there will be a reduction in service. For more information, see [Configure Windows diagnostic data in your organization.](https://docs.microsoft.com/windows/privacy/configure-windows-diagnostic-data-in-your-organization#enhanced-level)

## Advanced policies

 These are the additional policies that can be configured for a more secure/locked-down environment, for highly-regulated industries.

 Policy | Description
 --- | ---
 Advanced capabilities | Windows Information Protection (WIP) & Azure Information Protection (AIP) are used to protect enterprise data, by only allowing access to certain individuals, or a subset of applications/services. For more information, see<br>- [Protect your enterprise data using Windows INformation Protection](https://docs.microsoft.com/windows/threat-protection/windows-information-protection/protect-enterprise-data-using-wip)<br>- [Azure Information Protection client administrator guide](https://docs.microsoft.com/information-protection/rms-client/client-admin-guide)<br>- [Microsoft Managed Desktop Security Addendum](#security-addendum)

 ## Security addendum

 This section outlines the policies that will be deployed as additional to the standard Microsoft Managed Desktop policies. Standard policies are listed in [Default policies](#default-policies). This configuration is designed with Financial Services and highly-regulated industries in mind: optimizing for the most secure stance, while maintaining user productivity.

In a change to the published **Security baseline**, the setting [**Do not display network selection UI**](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowslogon#windowslogon-dontdisplaynetworkselectionui) will be disabled.

 ### Additional security policies

 These policies are added to increase security for highly-regulated industries. 
 - **App allow list**: Apps must be trusted by the organization to run on Microsoft Managed Desktop devices. This provides a locked-down environment. Any apps that need to be onboarded must be communicated to the Microsoft Managed Desktop Operations Team. For more information, see [Windows Defender Device Guard](https://docs.microsoft.com/windows/device-security/device-guard/device-guard-deployment-guide).
 - **Security monitoring**: Microsoft will monitor devices using [Windows Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection). If a threat be detected, Microsoft will notify the customer, isolate the device, and rectify the issue remotely. 
 - **Exploit Guard**: We will ensure that Microsoft Managed Desktop devices are always secured with the latest security update, for both operating system and apps, using [Windows Update for Business](https://docs.microsoft.com/windows/deployment/update/waas-manage-updates-wufb). Exploit Guard will be configured with these settings:

 Setting | Policy
 --- | ---
 Flag credential stealing from the Windows local security authority subsystem | Audit Only
 Office apps injecting into other processes | Audit Only
 Office apps/macros creating executable content | Block
 Office apps launching child processes | Audit Only
 Win32 imports from Office macro code | Block
 Obfuscated js/vbs/ps/macro code | Block
 Js/vbs executing payload downloaded from internet (no exceptions) | Block
 Process creation from PSExec and WMI commands | Audit Only
 Untrusted and unsigned processes that run from USB | Block
 Executables that don't meet a prevalence, age, or trusted-list criteria | Audit Only
 Execution of executable content dropped from email | Block
 Advanced ransomware protection | Audit Only









