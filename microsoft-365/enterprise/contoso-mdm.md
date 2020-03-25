---
title: "Mobile device management for Contoso"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 10/01/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-identity-device-management
- Strat_O365_Enterprise
ms.custom:

description: Understand how Contoso uses Microsoft Intune in Microsoft 365 Enterprise to manage its devices and the apps that run on them.
---

# Mobile device management for Contoso

Microsoft 365 Enterprise includes Intune and a set of Azure services to support mobile device and application management and security.

Contoso has many mobile-enabled employees, some of which have offices in Contoso locations and some of which have no offices. Contoso needed a way to enable employee productivity but keep the devices, the Contoso data stored on those devices, and application behavior secure.

## Plan

Early in the analysis of mobile device management for Microsoft 365 Enterprise, Contoso identified the following Intune use cases:

- Protect Exchange Online email and data so it can be safely accessed by mobile devices
- Implement a bring your own device (BYOD) program for Contoso employees
- Issue organization-owned phones and limited-use shared tablets to Contoso employees

Contoso is not using Intune to:

- Allow employees to securely access Office 365 from an unmanaged public kiosk
- Protect on-premises email and data so it can be safely accessed by mobile devices, because there are no longer on-premises Microsoft Exchange servers.

## Deploy

This is how Contoso set up their mobile device management infrastructure:

- Set Intune as the Mobile Device Management (MDM) authority and are using Intune on Azure to administer content and manage the devices
- Created Azure AD groups for devices for enrollment and Intune settings and device-based Conditional Access policies

  See [Contoso's Conditional Access policies](contoso-identity.md#conditional-access-policies-for-identity-and-device-access) for more information.

- Enabled the Apple device platform to support employees with iPads, iMacs, iPhones, and for iPhone-based corporate-owned phones
- Created Contoso-specific terms and conditions policies, which are seen during the installation of the Company Portal for Contoso on mobile devices
- For devices that are not enrolled, a set of Mobile Application Management (MAM) policies to require authentication for access to Office 365 services
- Created Intune policies that enforce:
  - Allowed apps
  - Device encryption to help prevent unauthorized access
  - A six-digit PIN or password
  - An inactivity timeout period
  - Antivirus and malware protection, and signature updates with Windows Defender on Windows 10 devices
  - Automatic updates on Windows 10 devices that include the latest security updates
  - Pushing certificates to managed devices
  - A clear separation of business and personal data. Users or admins can selectively wipe corporate data from the device, while leaving personal data such as pictures, personal email accounts, and personal files untouched.

Once deployed, Contoso enrolled PCs and company-owned smartphones and tablets by adding them to the appropriate Intune device groups and rolled out a BYOD program for employees to enroll their personal devices. Enrolled devices received Intune policies, resulting in managed and secured devices and their applications. Devices that are not enrolled have Mobile Application Management (MAM) policies that specify allowed applications.

Here is Contoso's mobile device management deployment architecture.

![Contoso’s mobile device management deployment infrastructure](../media/contoso-mdm/contoso-mdm-fig1.png)

## Next step

[Learn](contoso-info-protect.md) how Contoso uses the information protection capabilities of Microsoft 365 Enterprise to classify, identify, and protect crucial digital assets across its organization.

## See also

[Mobile device management for Microsoft 365 Enterprise](mobility-infrastructure.md)

[Deployment guide](deploy-microsoft-365-enterprise.md)

[Test lab guides](m365-enterprise-test-lab-guides.md)

