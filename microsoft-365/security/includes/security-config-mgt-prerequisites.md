--- 
title: include file
description: include file
author: mjcaparas
ms.service: microsoft-365-enterprise
ms.author: macapara
---



## Prerequisites

Review the following sections for requirements for the Security Management for Microsoft Defender for Endpoint Scenario:

### Environment

When a device onboards to Microsoft Defender for Endpoint:

- The device is surveyed for an existing Endpoint Manager presence, either Configuration Manager or Intune
- Devices without an Endpoint Manager presence enable the Security Management feature
- A trust is created with Azure Active Directory if one doesn't already exist
- Azure Active Directory trust is used to communicate with Endpoint Manager (Intune) and retrieve policies
- Policy retrieve from Endpoint Manager is enforced on the device by Microsoft Defender for Endpoint

### Active Directory Requirements

When a device that is domain joined creates a trust with Azure Active Directory, this scenario is referred to as a *Hybrid Azure Active Directory Join* scenario. The Security Management for Microsoft Defender for Endpoint fully supports this scenario with the following requirements:

- Azure Active Directory Connect (AAD Connect) must be synchronized to the tenant that is used from Microsoft Defender for Endpoint
- Hybrid Azure Active Directory Join must be configured in your environment (either through Federation or AAD Connect Sync)
- AAD Connect Sync must include the device objects *in scope* for synchronization with Azure Active Directory (when needed for join)
- AAD Connect rules for sync must be modified for Server 2012 R2 (when support for Server 2012 R2 is needed)

### Connectivity Requirements

Devices must have access to the following endpoints:

- `enterpriseregistration.windows.net` - For Azure AD registration.
- `login.microsoftonline.com` - For Azure AD registration.
- `*.dm.microsoft.com` - The use of a wildcard supports the cloud-service endpoints that are used for enrollment, check-in, and reporting, and which can change as the service scales.

### Supported platforms

Policies for Microsoft Defender for Endpoint security management are supported for the following device platforms:

- Windows 10 Professional/Enterprise (With KB5006738)
- Windows 11 Professional/Enterprise (With KB5007262)
- Windows Server 2012 R2 with Microsoft Defender for Down-Level Devices
- Windows Server 2019 with Microsoft Defender for Down-Level Devices
- Windows Server 2022 (with KB5006745)

### Licensing and subscriptions

To use security management for Microsoft Defender for Endpoint, you need:

- A subscription that grants licenses for Microsoft Defender for Endpoint, like Microsoft 365, or a standalone license for only Microsoft Defender for Endpoint. For current information about options, see [Minimum requirements for Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/minimum-requirements?view=o365-worldwide).

  *Any subscription* that grants Microsoft Defender for Endpoint licenses also grants your tenant access to the Endpoint security node of the Microsoft Endpoint Manager admin center. The Endpoint security node is where you'll configure and deploy policies to manage Microsoft Defender for Endpoint for your devices and monitor device status.