---
title: "Onboard Windows devices into Microsoft 365 overview"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 07/06/2023
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- tier1
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
search.appverid:
- MET150
description: "Onboard Windows devices into Microsoft 365"
---

# Onboard Windows devices into Microsoft 365 overview

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

Endpoint data loss prevention (Endpoint DLP) and insider risk management require that Windows 10 Windows and Windows 11 devices be onboarded into the service so that they can send monitoring data to the services.
 
Endpoint DLP allows you to monitor Windows 10 or Windows 11 devices and detect when sensitive items are used and shared. This gives you the visibility and control you need to ensure that they are used and protected properly, and to help prevent risky behavior that might compromise them. For more information about all of Microsoft’s DLP offerings, see [Learn about data loss prevention](dlp-learn-about-dlp.md). To learn more about Endpoint DLP, see [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md).

Insider risk management uses the full breadth of service and 3rd-party indicators to help you quickly identify, triage, and act on risky user activity. By using logs from Microsoft 365 and Microsoft Graph, insider risk management allows you to define specific policies to identify risk indicators and to take action to mitigate these risks. For more information, see [Learn about insider risk management](insider-risk-management.md).

Device onboarding is shared across Microsoft 365 and Microsoft Defender for Endpoint (MDE). If you've already onboarded devices to MDE, they will appear in the managed devices list and no further steps are necessary to onboard those specific devices. Onboarding devices in Compliance portal also onboards them into MDE.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

### SKU/subscriptions licensing

Check the licensing requirements [here](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection-data-loss-prevention-for-exchange-online-sharepoint-online-and-onedrive-for-business).

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

### Prepare your Windows devices

Make sure that the Windows devices that you need to onboard meet these requirements.

1. Must be running one of the following builds of Windows or Windows Server:
    1.  Windows 10 x64 build 1809 or later or Windows 11. (See [April 11, 2023—KB5025221 (OS Builds 19042.2846, 19044.2846, and 19045.2846) - Microsoft Support](https://support.microsoft.com/en-us/topic/april-11-2023-kb5025221-os-builds-19042-2846-19044-2846-and-19045-2846-b00c3356-baac-4a41-8342-7f97ec83445a) for required minimum Windows Operating System builds.)
    1. Windows Server 2019 OS: 1809 onwards or Windows Server 2022 OS: 21H2 onwards.

1. Antimalware Client Version is 4.18.2110 or newer. Check your current version by opening Windows Security app, select the Settings icon, and then select About. The version number is listed under Antimalware Client Version. Update to the latest Antimalware Client Version by installing Windows Update KB4052623.

   > [!NOTE]
   > None of Windows Security components need to be active, but the [Real-time protection and Behavior monitor](/windows/security/threat-protection/microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus) must be enabled.

1. The following Windows Updates for Windows 10 are installed for devices that will be monitored.

   > [!NOTE]
   > These updates are not a pre-requisite to onboard a device, but contain fixes for important issues thus must be installed before using the product.
   >
    > - For Windows 10 1809 - KB4559003, KB4577069, KB4580390
    > - For Windows 10 1903 or 1909 - KB4559004, KB4577062, KB4580386
    > - For Windows 10 2004 - KB4568831, KB4577063

1. All devices must be one of these:

   - [Azure Active Directory (Azure AD) joined](/azure/active-directory/devices/concept-azure-ad-join)
   - [Hybrid Azure AD joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid)
   - [AAD registered](/azure/active-directory/user-help/user-help-register-device-on-network)

5. A supported version of Microsoft 365 Apps is installed and up to date. For the most robust protection and user experience, ensure Microsoft 365 Apps version 16.0.14701.0 or later is installed.

> [!NOTE]
   > - If you are running Office 365 - KB 4577063 is required.
   > - If you are on Monthly Enterprise Channel of Microsoft 365 Apps versions 2004-2008, you need to update to version 2009 or later. See [Update history for Microsoft 365 Apps (listed by date)](/officeupdates/update-history-microsoft365-apps-by-date) for current versions. To learn more about known issue, see the Office Suite section of [Release notes for Current Channel releases in 2020](/officeupdates/current-channel#version-2010-october-27).

1. If you have endpoints that use a device proxy to connect to the internet, follow the procedures in [Configure device proxy and internet connection settings for Information Protection](device-onboarding-configure-proxy.md#configure-device-proxy-and-internet-connection-settings-for-information-protection).

## Onboarding Windows 10 or Windows 11 devices

You must enable device monitoring and onboard your endpoints before you can monitor and protect sensitive items on a device. Both of these actions are done in the Microsoft Purview compliance portal.

When you want to onboard devices that haven't been onboarded yet, you'll download the appropriate script and deploy it to those devices. Follow the device onboarding procedures below.

If you already have devices onboarded into [Microsoft Defender for Endpoint](/windows/security/threat-protection/), they will already appear in the managed devices list.

In this deployment scenario, you'll onboard Windows 10 or Windows 11 devices that have not been onboarded yet.

1. Open the [Microsoft Purview compliance portal](https://compliance.microsoft.com). Choose **Settings** > **Device onboarding** > **Devices**.

> [!NOTE]
> If you have previously deployed Microsoft Defender for Endpoint, all the devices that were onboarded during that process will be listed in the **Devices** list. There is no need to onboard them again. While it usually takes about 60 seconds for device onboarding to be enabled, please allow up to 30 minutes before engaging with Microsoft support.

2. Choose **Turn on device onboarding**. 

3. Choose **Onboarding** to begin the onboarding process.

5. Choose the way you want to deploy to these additional devices from the **Deployment method** list and then **download package**.

6. Choose the appropriate procedure to follow from the table below:

|Topic | Description|
|:---|:---|
[Intune](device-onboarding-mdm.md) | Use Mobile Device Management tools or Microsoft Intune to deploy the configuration package on device.|
|[Configuration Manager](device-onboarding-sccm.md) | You can use either use Microsoft Endpoint Configuration Manager (current branch) version 1606 or Microsoft Endpoint Configuration Manager (current branch) version 1602 or earlier to deploy the configuration package on devices.|
|[Group Policy](device-onboarding-gp.md) | Use Group Policy to deploy the configuration package on devices.
[Local script](device-onboarding-script.md) | Learn how to use the local script to deploy the configuration package on endpoints.
[Virtual desktop infrastructure (VDI) devices](device-onboarding-vdi.md) | Learn how to use the configuration package to configure VDI devices.

## Device configuration and policy sync status (preview)

You can check the **Configuration status** and the **Policy sync status** of all your onboarded devices in the **Devices** list. For more information on the configuration and policy status, select an onboarded device to open the details pane.

**Configuration status** shows you if the device is configured correctly, is sending a heartbeat signal to Purview, and the last time the configuration was validated. For Windows devices configuration includes checking the status of [Microsoft Defender Antivirus always-on protection and behavior monitoring](/microsoft-365/security/defender-endpoint/configure-real-time-protection-microsoft-defender-antivirus).

**Policy sync status** shows you if the device received the latest policy version, or if the corresponding policies synced successfully to the device.


|Field value  |Configuration status  |Policy sync status  |
|---------|---------|---------|
|Updated    |Device health parameters are enabled and correctly set.   |Device has been updated with the current versions of policies.         |
|Not updated    | You need to enable the configuration settings for this device. Follow the procedures in [Microsoft Defender Antivirus always-on protection](/microsoft-365/security/defender-endpoint/configure-real-time-protection-microsoft-defender-antivirus)|This device has not synced the latest policy updates. If the policy update was made within the last 2 hours, wait for the policy to reach your device. |
|Not available  | Device properties are not available in the device list. This could be because the device doesn't meet the minimum OS version, or configuration or if the device was just onboarded.        |Device properties are not available in the device list. This could be because the device doesn't meet the minimum OS version, or configuration or if the device was just onboarded.|

It can take up to 2 hours for the sync status to get reflected on the dashboard. Devices must be online for the policy update to happen. If the status isn't updating, check the last time the device was seen.

Required KB for this Preview Feature: [KB5023773](https://support.microsoft.com/topic/march-21-2023-kb5023773-os-builds-19042-2788-19044-2788-and-19045-2788-preview-5850ac11-dd43-4550-89ec-9e63353fef23).

## See also

- [Learn about insider risk management](insider-risk-management.md)
- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Using Endpoint data loss prevention](endpoint-dlp-using.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](/windows/security/threat-protection/)
- [Onboarding tools and methods for Windows 10 machines](/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
- [Azure AD joined devices](/azure/active-directory/devices/concept-azure-ad-join)
- [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium)
