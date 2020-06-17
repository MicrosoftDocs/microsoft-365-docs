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
2. If your machine is running a non-Microsoft anti-virus solution, verify that Microsoft Defender AV [is in active mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility).
3. All devices must be [Azure Active Directory (AAD) joined](https://docs.microsoft.com/azure/active-directory/devices/concept-azure-ad-join).
4. Install Microsoft Chromium Edge browser on the endpoint device. See, [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium).

## Onboarding devices into device management

Before sensitive items on a device can be monitored and protected you must enable device monitoring and onboard your endpoints. Both of these actions are done in the M365 Compliance portal.

Device management is tightly integrated with [Microsoft Defender Advanced Threat Protection  (MDATP)](https://docs.microsoft.com/windows/security/threat-protection/). How you onboard Windows 10 devices into device management depends on whether you have MDATP deployed or not.

### With MDATP deployed

In this deployment scenario, MDATP is already deployed and there are endpoints reporting in. All these endpoints will appear in the managed devices list. You can continue to onboard new devices into EPDLP to expand coverage

1. Open the [Microsoft compliance center](https://compliance.microsoft.com).
2. Open the Compliance Center settings page and choose `Enable device monitoring`
3. Choose `Device management` to open the `Devices` list. You should see the list of devices that are already reporting in to MDATP. ![device management](../media/endpoint-dlp-getting-started-2-device-management.png)
4. Choose `Onboarding` if you need to onboard additional devices.
5. Choose the way you want to deploy to these additional devices from the `Deployment method` list and then `download package.
![deployment method](../media/endpoint-dlp-getting-started-3-deployment-method.png)
6. Follow the appropriate procedures in [Onboarding tools and methods for Windows 10 machines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints). This opens a landing page where you can access MDATP procedures that match the deployment package you selected in step 5:
    - Onboard Windows 10 machines using Group Policy
    - Onboard Windows machines using Microsoft Endpoint Configuration Manager
    - Onboard Windows 10 machines using Mobile Device Management tools
    - Onboard Windows 10 machines using a local script
    - Onboard non-persistent virtual desktop infrastructure (VDI) machines.

Once done and endpoint is onboarded, it should be visible under the “Devices” table and also start reporting audit logs to the “Activity Explorer”
Note that this experience is under license enforcement. Without the required license, it will not be visible or accessible.

### Without MDATP deployed

In this deployment scenario, MDATP is not deployed and you just want to monitor and protect sensitive items from unintentional sharing on Windows 10 devices. This procedure is very similar to the with MDATP process, except that there will not be any devices pre-populated in the device list.
The MDATP functionality will be provisioned in the cloud infrastructure, but, unless you have a license for it, you will not be able to use it.

1. Open the [Microsoft compliance center](https://compliance.microsoft.com).
2. Open the Compliance Center settings page and choose `Onboard devices`. ![enable device management](../media/endpoint-dlp-learn-about-1-enable-device-management.png)
3. Choose `Device management` to open the `Devices` list. The list will be empty until you onboard devices.
4. Choose `Onboarding` to begin the onboarding process.
5. Choose the way you want to deploy to these additional devices from the `Deployment method` list and then `download package.
![deployment method](../media/endpoint-dlp-getting-started-3-deployment-method.png)
6. Follow the appropriate procedures in [Onboarding tools and methods for Windows 10 machines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints). This opens a landing page where you can access MDATP procedures that match the deployment package you selected in step 5:
    - Onboard Windows 10 machines using Group Policy
    - Onboard Windows machines using Microsoft Endpoint Configuration Manager
    - Onboard Windows 10 machines using Mobile Device Management tools
    - Onboard Windows 10 machines using a local script
    - Onboard non-persistent virtual desktop infrastructure (VDI) machines.

Once done and endpoint is onboarded, it should be visible in the devices list and also start reporting audit activity logs to Activity explorer.
Note that this experience is under license enforcement. Without the required license, it will not be visible or accessible.

### Viewing Endpoint DLP data in activity explorer

1. Open the [Data classification page](https://compliance.microsoft.com/dataclassification?viewid=overview) in the Microsoft 365 Compliance center and choose Activity explorer.
2. Refer to the procedures in [Data classification activity explorer](data-classification-activity-explorer.md) to access and filter all the data for your Endpoint devices.

![activity explorer filter for endpoint devices](../media/endpoint-dlp-4-getting-started-activity-explorer.png)

Now that you have onboarded devices and can view the activity data in activity explorer, you are ready to move on to creating DLP policies that protect your sensitive items.
