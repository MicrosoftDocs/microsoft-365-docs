---
title: "Device onboarding for information protection solutions"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
localization_priority: Priority
ms.collection:
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
search.appverid:
- MET150
description: "Set up Windows 10 devices for Microsoft 365 information protection solutions."
---

# Get started with device onboarding

**Applies to:**

- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management in Microsoft 365](insider-risk-management.md#learn-about-insider-risk-management-in-microsoft-365)

Microsoft 365 Endpoint data loss prevention (Endpoint DLP) and Microsoft 365 Insider risk require that Windows 10 devices be onboarded into the service so that they can send monitoring data to the services.
 
Microsoft 365 Endpoint DLP allows you to monitor Windows 10 devices and detect when sensitive items are used and shared. This gives you the visibility and control you need to ensure that they are used and protected properly, and to help prevent risky behavior that might compromise them. For more information about all of Microsoft’s DLP offerings, see [Learn about data loss prevention](dlp-learn-about-dlp.md). To learn more about Endpoint DLP, see [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md).

Insider risk management in Microsoft 365 uses the full breadth of service and 3rd-party indicators to help you quickly identify, triage, and act on risky user activity. By using logs from Microsoft 365 and Microsoft Graph, insider risk management allows you to define specific policies to identify risk indicators and to take action to mitigate these risks. For more information about the Microsoft 365 Insider Risk offering, see [Insider risk management in Microsoft 365](/microsoft-365/compliance/insider-risk-management-solution-overview?view=o365-worldwide)


## Before you begin

### SKU/subscriptions licensing

Before you get started, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons. To access and use information protection functionality, you must have one of these subscriptions or add-ons.

- Microsoft 365 E5
- Microsoft 365 A5 (EDU)
- Microsoft 365 E5 compliance
- Microsoft 365 A5 compliance
- Microsoft 365 E5 information protection and governance
- Microsoft 365 A5 information protection and governance

### Permissions

To enable device management, the account you use must be a member of any one of these roles:

- Global admin
- Security admin
- Compliance admin

If you want to use a custom account to view the device management settings, it must be in one of these roles:

- Global admin
- Compliance admin
- Compliance data admin
- Global reader

If you want to use a custom account to access the onboarding/offboarding page, it must be in one of these roles:

- Global admin
- Compliance admin

If you want to use a custom account to turn on/off device monitoring, it must be in one of these roles:

- Global admin
- Compliance admin

### Prepare your endpoints

Make sure that the Windows 10 devices that you need to onboard meet these requirements.

1. Must be running Windows 10 x64 build 1809 or later.

2. Antimalware Client Version is 4.18.2009.7 or newer. Check your current version by opening Windows Security app, select the Settings icon, and then select About. The version number is listed under Antimalware Client Version. Update to the latest Antimalware Client Version by installing Windows Update KB4052623.

   > [!NOTE]
   > None of Windows Security components need to be active, but the [Real-time protection and Behavior monitor](/windows/security/threat-protection/microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus)) must be enabled.

3. The following Windows Updates are installed for devices that will be monitored with Endpoint DLP.

   > [!NOTE]
   > These updates are not a pre-requisite to onboard a device to Endpoint DLP, but contain fixes for important issues thus must be installed before using the product.

   - For Windows 10 1809 - KB4559003, KB4577069, KB4580390
   - For Windows 10 1903 or 1909 - KB4559004, KB4577062, KB4580386
   - For Windows 10 2004 - KB4568831, KB4577063
   - For devices running Office 2016 (and not any other Office version) - KB4577063

4. All devices must be one of these:

   - [Azure Active Directory (Azure AD) joined](/azure/active-directory/devices/concept-azure-ad-join)
   - [Hybrid Azure AD joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid)
   - [AAD registered](/azure/active-directory/user-help/user-help-register-device-on-network)

5. Install Microsoft Chromium Edge browser on the endpoint device to enforce policy actions for the upload to cloud activity. See, [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium).

6. If you are on Monthly Enterprise Channel of Microsoft 365 Apps versions 2004-2008, there is a known issue with Endpoint DLP classifying Office content and you need to update to version 2009 or later. See [Update history for Microsoft 365 Apps (listed by date)](/officeupdates/update-history-microsoft365-apps-by-date) for current versions. To learn more about this issue, see the Office Suite section of [Release notes for Current Channel releases in 2020](/officeupdates/current-channel#version-2010-october-27).

7. If you have endpoints that use a device proxy to connect to the internet, follow the procedures in [Configure device proxy and internet connection settings for Endpoint DLP](endpoint-dlp-configure-proxy.md).

## Onboarding devices into device management

You must enable device monitoring and onboard your endpoints before you can monitor and protect sensitive items on a device. Both of these actions are done in the Microsoft 365 Compliance portal.

When you want to onboard devices that haven't been onboarded yet, you'll download the appropriate script and deploy it to those devices. Follow the [Onboarding devices procedure](endpoint-dlp-getting-started.md#onboarding-devices).

If you already have devices onboarded into [Microsoft Defender for Endpoint](/windows/security/threat-protection/), they will already appear in the managed devices list. <!--Follow the [With devices onboarded into Microsoft Defender for Endpoint procedure](?source=docs&view=o365-worldwide#with-devices-onboarded-into-microsoft-defender-for-endpoint).-->

### Onboarding devices

In this deployment scenario, you'll onboard devices that have not been onboarded yet.

1. Open the [Microsoft compliance center](https://compliance.microsoft.com) **Settings** page and choose **Enable device monitoring**.

   > [!NOTE]
   > While it usually takes about 60 seconds for device onboarding to be enabled, please allow up to 30 minutes before engaging with Microsoft support.

2. Open the Compliance Center settings page and choose **Onboard devices**.

   > [!div class="mx-imgBorder"]
   > ![enable device management.](../media/endpoint-dlp-learn-about-1-enable-device-management.png)

3. Choose **Device management** to open the **Devices** list. 

> [!NOTE]
> If you have previously deployed Microsoft Defender for Endpoint, all the devices that were onboarded during that process will be listed in the **Devices** list. There is no need to onboard them again.

4. Choose **Onboarding** to begin the onboarding process.

5. Choose the way you want to deploy to these additional devices from the **Deployment method** list and then **download package**.

6. Follow the appropriate procedures in [Onboarding tools and methods for Windows 10 machines](/microsoft-365/compliance/dlp-configure-endpoints). This link takes you to a landing page where you can access Microsoft 365 information protection procedures that match the deployment package you selected in step 5:

    - Onboard Windows 10 machines using Group Policy
    - Onboard Windows machines using Microsoft Endpoint Configuration Manager
    - Onboard Windows 10 machines using Mobile Device Management tools
    - Onboard Windows 10 machines using a local script
    - Onboard non-persistent virtual desktop infrastructure (VDI) machines in single-session scenarios

Once an device is onboarded, it should be visible in the devices list and also start reporting audit activity logs to Activity explorer.

> [!NOTE]
> This experience is under license enforcement. Without the required license, data will not be visible or accessible.

<!--### With devices onboarded into Microsoft Defender for Endpoint

In this scenario, Microsoft Defender for Endpoint is already deployed and there are devices reporting in. All these devices will appear in the managed devices list. You can continue to onboard new devices into Microsoft 365 information protection solution to expand coverage.

1. Open the [Microsoft compliance center](https://compliance.microsoft.com).

2. Open the Compliance Center settings page and choose **Enable device monitoring**.

3. Choose **Device management** to open the **Devices** list. You should see the list of devices that are already reporting in to Microsoft Defender for Endpoint.

4. Choose **Onboarding** if you need to onboard additional devices.

5. Choose the way you want to deploy to these additional devices from the **Deployment method** list and then **Download package**.

6. Follow the appropriate procedures in [Onboarding tools and methods for Windows 10 machines](/microsoft-365/compliance/device-onboarding.md). This link takes you to a landing page where you can access Microsoft 365 information protection device onboarding procedures that match the deployment package you selected in step 5:
    - Onboard Windows 10 machines using Group Policy
    - Onboard Windows machines using Microsoft Endpoint Configuration Manager
    - Onboard Windows 10 machines using Mobile Device Management tools
    - Onboard Windows 10 machines using a local script
    - Onboard non-persistent virtual desktop infrastructure (VDI) machines.

Once a device is onboarded, it should be visible under the **Devices** table and also start reporting audit logs to the **Activity Explorer**.

> [!NOTE]
>This experience is under license enforcement. Without the required license, data will not be visible or accessible.-->

## See also

- [Insider risk management in Microsoft 365](insider-risk-management-solution-overview.md#insider-risk-management-in-microsoft-365)
- [Learn about insider risk management in Microsoft 365](insider-risk-management.md#learn-about-insider-risk-management-in-microsoft-365)
- [Plan for insider risk management](insider-risk-management-plan.md#plan-for-insider-risk-management)
- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Using Endpoint data loss prevention](endpoint-dlp-using.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](/windows/security/threat-protection/)
- [Onboarding tools and methods for Windows 10 machines](/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
- [Azure AD joined devices](/azure/active-directory/devices/concept-azure-ad-join)
- [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium)
