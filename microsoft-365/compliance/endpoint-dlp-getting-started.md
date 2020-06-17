---
title: "Get started with Microsoft 365 Endpoint data loss prevention (preview)"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2020
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MET150
description: "Set up Microsoft 365 Endpoint data loss prevention to monitor file activities and implement protective actions for those file to endpoints."
---

# Get started with Endpoint data loss prevention (preview)

Microsoft Endpoint data loss prevention (EPDLP) is part of the Microsoft 365 data loss prevention (DLP) suite of features you can use to discover and protect sensitive items across Microsoft 365 services. For more information about all of Microsoft’s DLP offerings, see [Overview of data loss prevention](data-loss-prevention-policies.md). To learn more about EPDLP, see [Learn about Endpoint data loss prevention (preview)](endpoint-dlp-learn-about.md)

Microsoft EPDLP allows you to monitor Windows 10 devices and detect when sensitive items are used and shared. This gives you the visibility and control you need to ensure that they are used and protected properly, and to help prevent risky behavior that might compromise them.

## Before you begin

### SKU/subscriptions licensing

Before you get started with EPDLP, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons. To access and use EPDLP functionality, you must have one of these subscriptions or add-ons.

- Microsoft 365 E5
- Microsoft 365 A5 (EDU)
- Microsoft 365 E5 compliance
- Microsoft 365 A5 compliance
- Microsoft 365 E5 information protection and governance
- Microsoft 365 A5 information protection and governance

### Permissions

To enable device management the account you use must be a member of any one of these roles:

- Global admin
- Security admin
- Compliance admin

If you want to use a custom account to view the device management settings, it must be in one of these roles:

- IsAadCompanyAdmin
- Is AadComplianceAdmin
- IsAadComplianceDataAdmin
- IsAadGlobalReader

If you want to use a custom account to access the onboarding/offboarding page, it must be in one of these roles:

- IsAadCompanyAdmin
- IsAasComplianceAdmin

If you want to use a customer account to turn on/off device monitoring, it must be in one of these roles:

- IsAadCompanyAdmin
- IsAadComplianceAdmin


Data from EPDLP can be viewed [activity explorer](data-classification-activity-explorer.md). There are four roles that grant permission to activity explorer, the account you use for accessing the data must be a member of any one of them.

- Global administrator
- Compliance administrator
- Security administrator
- Compliance data administrator

### Prepare your endpoints

Make sure that the Windows 10 devices that you plan on deploying EPDLP to meet these requirements.

1. Must be running Windows 10 build 1809 or up.
2. If your machine is running a non-Microsoft anti-virus solution, verify that Microsoft Defender AV [is in active mode](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility).
3. All devices must be [Azure Active Directory (AAD) joined](https://docs.microsoft.com/en-us/azure/active-directory/devices/concept-azure-ad-join).
4. Install Microsoft Chromium Edge browser on the endpoint device. See, [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/en-us/help/4501095/download-the-new-microsoft-edge-based-on-chromium).


## Onboarding devices into device management

Before sensitive items on a device can be monitored and protected the device must be onboarded into device management. Device management is tightly integrated with [Microsoft Defender Advanced Threat Protection  (MDATP)](https://docs.microsoft.com/windows/security/threat-protection/). How you onboard Windows 10 devices into device management depends on whether you have MDATP deployed or not.

### With MDATP deployed

In this deployment scenario, MDATP is already deployed and there are endpoints reporting in. All these endpoints will appear in the managed devices list. You can continue to onboard new devices into EPDLP to expand coverage

1. Open the [Microsoft compliance center](https://compliance.microsoft.com.
2. Open the Compliance Center settings page and choose `Enable device monitoring`
3. Choose `Device management` to open the `Devices` list. You should see the list of devices that are already reporting in to MDATP. INSERT DEVICE MANAGEMENT SCREENSHOT
4. Choose `Onboarding` if you need to onboard additional devices.
5. Choose the way you want to deploy to these additional devices from the `Deployment method` list and then `download package. INSERT DEPLOYMENT METHOD SCREENSHOT
6. Follow the appropriate procedures in [Onboarding tools and methods for Windows 10 machines](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints). This opens a landing page where you can access MDATP procedures that match the deployment package you selected in step 5:
    - Onboard Windows 10 machines using Group Policy
    - Onboard Windows machines using Microsoft Endpoint Configuration Manager
    - Onboard Windows 10 machines using Mobile Device Management tools
    - Onboard Windows 10 machines using a local script
    - Onboard non-persistent virtual desktop infrastructure (VDI) machines.

Once done and endpoint is onboarded, it should be visible under the “Devices” table and also start reporting audit logs to the “Activity Explorer”
Note that this experience is under license enforcement. Without the required license, it will not be visible or accessible.

Onboard new devices and enabled device monitoring from M365 Compliance portal
To start using Endpoint DLP you must enable both device monitoring and onboard your endpoints. Both are done from the M365 Compliance portal.

1. Go to https://compliance.microsoft.com/compliancesettings/device_management
2. Click on “Turn on device monitoring” button
3. Click on the “onboarding” option on the right
4. Select your deployment method and click the button to download the package
5. Follow the instructions in the downloaded package



#### procedure

### Without MDATP deployed
## Global settings

Path exclusions
You may want to exclude certain paths on your endpoint devices from monitoring and alerting because they are too noisy and don’t contain files you are interested in. Files in those locations will not be audited and any files that are created or modified in those locations will not be protected. You can configure path exclusions in Global settings.
Path matching supports the following logic:

1. Begins with – matches every file path that starts with the defined prefix. For example, C:\Windows will match any file under C:\Windows folder and its subfolders.
2. Environment variables – defined paths can contain environment variables, for example, %AppData%\app123
3. Wildcards – defined paths can contain wildcards, for example, C:\Users\*\Desktop will match C:\Users\user1\Desktop, C:\Users\user1\Desktop and also C:\Users\user1\user1\Desktop

Global settings contain several parameters that impact all DLP policies:

1. Path exclusions – file paths defined here will be excluded from Endpoint DLP monitoring and prevention. See path exclusions for more details.
2. Blocked/allowed domains – List of domains that Edge Chromium refers to when enforcing cloud upload. If list mode is set to Block, then the domains in the list are essentially blacklisted and DLP will either generate a warning on upload attempt or block an upload attempt of files to those domain if the file matches the conditions of the enforced policy. If the list mode is set to Allow, then those domains are essentially whitelisted for upload while upload attempts to all domains not on the whitelist will either generate a warning on upload attempt or block an upload attempt if the file matches the conditions of the enforced policy.
3. Unallowed browsers – List of browsers, identified by their process names, that will be blocked from accessing files that match the conditions of an enforced  a DLP policy where Cloud upload is set to either warn or block. When these browsers are blocked from accessing a file, the end users will see a toast notification asking them to open the file through Edge.