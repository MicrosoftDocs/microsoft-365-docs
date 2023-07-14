---
title: Configure policy indicators in insider risk management
description: Configure policy indicators in Microsoft Purview Insider Risk Management to define the type of risk activities that you want to detect and investigate.
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 07/11/2023
audience: itpro
ms.collection:
- highpri 
- tier1
- purview-compliance
- m365solution-insiderrisk
- m365initiative-compliance
- highpri
ms.custom: admindeeplinkCOMPLIANCE
---

# Configure policy indicators in insider risk management

> [!IMPORTANT]
> Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage, and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

Insider risk policy templates in Microsoft Purview Insider Risk Management define the type of risk activities that you want to detect and investigate. Each policy template is based on specific indicators that correspond to specific triggers and risk activities. All global indicators are disabled by default; **you must select one or more indicators to configure an insider risk management policy**.

Signals are collected and alerts are triggered by policies when users perform activities related to indicators. 

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Types of events and indicators

Insider risk management uses different types of events and indicators to collect signals and create alerts:

- **Triggering events**: Events that determine if a user is active in an insider risk management policy. If a user is added to an insider risk management policy that doesn't have a triggering event, the user isn't evaluated by the policy as a potential risk. For example, User A is added to a policy created from the *Data theft by departing users* policy template and the policy and Microsoft 365 HR connector are properly configured. Until User A has a termination date reported by the HR connector, User A isn't evaluated by this insider risk management policy for potential risk. Another example of a triggering event is if a user has a *High* severity DLP policy alert when using *Data leaks* policies.
- **Global settings indicators**: Indicators enabled in global settings for insider risk management define both the indicators available for configuration in policies and the types of events signals collected by insider risk management. For example, if a user copies data to personal cloud storage services or portable storage devices and these indicators are selected only in global settings, the user's potentially risky activity will be available for review in the Activity explorer. However, if this user isn't defined in an insider risk management policy, the user isn't evaluated by the policy as a potential risk and therefore won't be assigned a risk score or generate an alert.
- **Policy indicators**: Indicators included in insider risk management policies are used to determine a risk score for an in-scope user. Policy indicators are enabled from indicators defined in global settings and are only activated after a triggering event occurs for a user. Examples of policy indicators include:

   - A user copies data to personal cloud storage services or portable storage devices.
   - A user account is removed from Azure Active Directory.
   - A user shares internal files and folders with unauthorized external parties.

Certain policy indicators and sequences may also be used for customizing triggering events for specific policy templates. When configured in the policy wizard for the *General data leaks* or *Data leaks by priority users* templates, these indicators or sequences allow more flexibility and customization for your policies and when users are in-scope for a policy. Also, you can define risk management activity thresholds for these triggering indicators for more fine-grained control in a policy.

## Policy indicator categories

Policy indicators are segmented into the following areas. You can choose the indicators to activate and customize indicator event limits for each indicator level when creating an insider risk policy:

### Office indicators

These include policy indicators for SharePoint sites, Microsoft Teams, and email messaging.

### Device indicators

These include policy indicators for activity such as sharing files over the network or with devices. Indicators include activities involving all file types, excluding executable (.exe) and dynamic link library (.dll) file activity. If you select *Device indicators*, activity is processed for devices with Windows 10 Build 1809 or higher and macOS (three latest released versions) devices. For both Windows and macOS devices, you must first [onboard devices to the compliance portal](#step-2-onboard-devices). Device indicators also include browser signal detection to help your organization detect and act on exfiltration signals for non-executable files viewed, copied, shared, or printed in Microsoft Edge and Google Chrome. For more information on configuring Windows devices for integration with insider risk, see [Enable device indicators and onboard Windows devices](#enable-device-indicators-and-onboard-windows-devices) in this article. For more information on configuring macOS devices for integration with insider risk, see [Enable device indicators and onboard macOS devices](#enable-device-indicators-and-onboard-macos-devices) in this article. For more information about browser signal detection, see [Learn about and configure insider risk management browser signal detection](insider-risk-management-browser-support.md).

### Microsoft Defender for Endpoint indicators (preview)

These include indicators from Microsoft Defender for Endpoint related to unapproved or malicious software installation or bypassing security controls. To receive alerts in insider risk management, you must have an active Defender for Endpoint license and insider risk integration enabled. For more information on configuring Defender for Endpoint for insider risk management integration, see [Configure advanced features in Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/advanced-features\#share-endpoint-alerts-with-microsoft-compliance-center).

### Health record access indicators

These include policy indicators for patient medical record access. For example, attempted access to patient medical records in your electronic medical records (EMR) system logs can be shared with insider risk management healthcare policies. To receive these types of alerts in insider risk management, you must have a healthcare-specific data connector and the [HR data connector](import-hr-data.md) configured.

### Physical access indicators

These include policy indicators for physical access to sensitive assets. For example, attempted access to a restricted area in your physical badging system logs can be shared with insider risk management policies. To receive these types of alerts in insider risk management, you must have priority physical assets enabled in insider risk management and the [Physical badging data connector](import-physical-badging-data.md) configured. To learn more about configuring physical access, see the [Priority physical access section](insider-risk-management-settings-priority-physical-assets.md) in this article.

### Microsoft Defender for Cloud Apps indicators

These include policy indicators from shared alerts from Defender for Cloud Apps. Automatically enabled anomaly detection in Defender for Cloud Apps immediately starts detecting and collating results, targeting numerous behavioral anomalies across your users and the machines and devices connected to your network. To include these activities in insider risk management policy alerts, select one or more indicators in this section. To learn more about Defender for Cloud Apps analytics and anomaly detection, see [Get behavioral analytics and anomaly detection](/cloud-app-security/anomaly-detection-policy).

### Risky browsing indicators (preview)

These include policy indicators for user browsing activity related to websites that are considered malicious or risky and pose potential insider risk that may lead to a security or compliance incident. Risky browsing activity refers to users who visit potentially risky websites, such as those associated with malware, pornography, violence, and other unallowed activities. To include these risk management activities in policy alerts, select one or more indicators in this section. To learn about configuring browser exfiltration signals, see [Insider risk management browser signal detection](insider-risk-management-browser-support.md).

### Cumulative exfiltration detection (preview)

Detects when a user's exfiltration activities across all exfiltration channels over the last 30 days exceeds organization or peer group norms. For example, if a user is in a sales role and communicates regularly with customers and partners outside of the organization, their external email activity will likely be much higher than the organization's average. However, the user's activity may not be unusual compared to the user's teammates, or others with similar job titles. A risk score is assigned if the user's cumulative exfiltration activity is unusual and exceeds organization or peer group norms.  
   
   > [!NOTE]
   > Peer groups are defined based on organization hierarchy, access to shared SharePoint resources, and job titles in Azure AD. If you enable cumulative exfiltration detection, your organization is agreeing to share Azure AD data with the compliance portal, including organization hierarchy and job titles. If your organization does not use Azure AD to maintain this information, then detection may be less accurate. 

### Risk score boosters

These include raising the risk score for activity for the following reasons:
   - *Activity that is above the user's usual activity for that day*: Scores are boosted if the detected activity deviates from the user's typical behavior.
   - *User had a previous case resolved as a policy violation*: Scores are boosted if the user had a previous case in insider risk management that was resolved as a policy violation.
   - *User is a member of a priority user group*: Scores are boosted if the user is a member of a priority user group.
   - *User is detected as a potential high impact user*: When this is enabled, users are automatically flagged as potential high-impact users based on the following criteria:
     - The user interacts with more sensitive content compared to others in the organization.
     - The user's level in the organization's Azure AD hierarchy.
     - The total number of users reporting to the user based on the Azure AD hierarchy.
     - The user is a member of an Azure AD built-in role with elevated permissions.
     
     > [!NOTE] 
     > When you enable the potential high impact user risk score booster, you're agreeing to share Azure AD data with the compliance portal. If your organization doesn't use sensitivity labels or has not configured organization hierarchy in Azure AD, this detection may be less accurate. If a user is detected as both a member of a priority user group and also a potential high-impact user, their risk score will only be boosted once. 

In some cases, you may want to limit the insider risk policy indicators that are applied to insider risk policies in your organization. You can turn off the policy indicators for specific areas by disabling them from all insider risk policies in global settings. Triggering events can only be modified for policies created from the *Data leaks* or *Data leaks by priority users* templates. Policies created from all other templates don't have customizable triggering indicators or events.

## Define the insider risk policy indicators that are enabled in all insider risk policies

1. Select the **Settings** button, and then select **Policy indicators**.
2. Select one or more policy indicators. 
   The indicators selected on the **Policy indicators** settings page can't be individually configured when creating or editing an insider risk policy in the policy wizard.

   > [!NOTE]
   > It may take several hours for new manually-added users to appear in the **Users dashboard**. Activities for the previous 90 days for these users may take up to 24 hours to display. To view activities for manually added users, select the user on the **Users dashboard** and open the **User activity** tab in the details pane.

## Enable device indicators and onboard Windows devices

To enable the detection of risk activities on Windows devices and include policy indicators for these activities, your Windows devices must meet the following requirements and you must complete the following onboarding steps.

### Step 1: Prepare your endpoints

Make sure that the Windows 10 devices that you plan on reporting in insider risk management meet these requirements.

1. The device must be running Windows 10 x64 build 1809 or later and the [Windows 10 update (OS Build 17763.1075)](https://support.microsoft.com/help/4537818/windows-10-update-kb4537818) from February 20, 2020 must be installed.
2. The user account used to log into the Windows 10 device must be an active Azure AD account. The Windows 10 device may be [Azure AD](/azure/active-directory/devices/concept-azure-ad-join), Azure AD hybrid, joined, or registered.
3. Install the Microsoft Edge browser on the endpoint device to detect actions for the cloud upload activity. See [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium).

> [!NOTE]
> Endpoint DLP now supports virtualized environments (preview), which means that the insider risk management solution supports virtualized environments through endpoint DLP. [Learn more about support for virtualized environments in endpoint DLP](endpoint-dlp-getting-started.md#endpoint-dlp-support-for-virtualized-environments-preview)

### Step 2: Onboard devices

You must enable device checking and onboard your endpoints before you can detect insider risk management activities on a device. Both actions are done in the Microsoft Purview compliance portal.

When you want to enable devices that haven't been onboarded yet, you need to download the appropriate script and deploy it as outlined below.

If you already have devices onboarded into [Microsoft Defender for Endpoint](/windows/security/threat-protection/), they'll already appear in the managed devices list. [Follow Step 3: If you have devices onboarded into Microsoft Defender for Endpoint](#if-devices-are-already-onboarded-to-microsoft-defender-for-endpoint).

In this deployment scenario, you'll enable devices that haven't been onboarded yet, and you just want to detect insider risk activities on Windows devices.

1. Open the [Microsoft Purview compliance portal](https://compliance.microsoft.com).
2. Open the compliance portal settings page, and then select **Onboard devices**.

   > [!NOTE]
   > While it usually takes about 60 seconds for device onboarding to be enabled, please allow up to 30 minutes before engaging with Microsoft support.

3. Select **Device management** to open the **Devices** list. The list will be empty until you onboard devices.
4. Select **Onboarding** to begin the onboarding process.
5. Select the way you want to deploy to these devices from the **Deployment method** list, and then select **download package**.
6. Follow the appropriate procedures in [Onboarding tools and methods for Windows machines](/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints). This link takes you to a landing page where you can access Microsoft Defender for Endpoint procedures that match the deployment package you selected in step 5:
    - Onboard Windows machines using Group Policy
    - Onboard Windows machines using Microsoft Endpoint Configuration Manager
    - Onboard Windows machines using Mobile Device Management tools
    - Onboard Windows machines using a local script
    - Onboard non-persistent virtual desktop infrastructure (VDI) machines

When you're done and the endpoint device is onboarded, it should be visible in the devices list and the endpoint device will start reporting audit activity logs to insider risk management.

> [!NOTE]
> This experience is under license enforcement. Without the required license, data will not be visible or accessible.

### If devices are already onboarded to Microsoft Defender for Endpoint

If Microsoft Defender for Endpoint is already deployed and endpoint devices are reporting in, the endpoint devices will appear in the managed devices list. You can continue to onboard new devices into insider risk management to expand coverage by going to [Step 2: Onboarding devices](#step-2-onboard-devices).

1. Open the [Microsoft Purview compliance portal](https://compliance.microsoft.com).
2. Open the compliance portal settings page, and then select **Enable device monitoring**.
3. Select **Device management** to open the **Devices** list. You should see the list of devices that are already reporting into Microsoft Defender for Endpoint.
4. Select **Onboarding** if you need to onboard more devices.
5. Select the way you want to deploy to these devices from the **Deployment method** list, and then select **Download package**.
6. Follow the appropriate procedures in [Onboarding tools and methods for Windows machines](/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints). This link takes you to a landing page where you can access Microsoft Defender for Endpoint procedures that match the deployment package you selected in step 5:
    - Onboard Windows machines using Group Policy
    - Onboard Windows machines using Microsoft Endpoint Configuration Manager
    - Onboard Windows machines using Mobile Device Management tools
    - Onboard Windows machines using a local script
    - Onboard non-persistent virtual desktop infrastructure (VDI) machines

When you're done and endpoint devices are onboarded, they should be visible under the **Devices** tab and the endpoint devices will start reporting audit activity logs to insider risk management.

> [!NOTE]
> This experience is under license enforcement. Without the required license, data will not be visible or accessible.

## Enable device indicators and onboard macOS devices

macOS devices (Catalina 10.15 or later) can be onboarded into Microsoft 365 to support insider risk management policies using either Intune or JAMF Pro. For more information and configuration guidance, see [Onboard macOS devices into Microsoft 365 overview (preview)](device-onboarding-macos-overview.md).

## Indicator level settings

When creating a policy using the policy wizard, you can configure how the daily number of risk events should influence the risk score for insider risk alerts. These indicator settings help you control how the number of occurrences of risk events in your organization affect the risk score (and the associated alert severity) for these events. If you prefer, you can choose to keep the default event threshold levels recommended by Microsoft for all enabled indicators.

For example, you decide to enable SharePoint indicators in the insider risk policy settings and to set custom thresholds for SharePoint events when configuring indicators for a new insider risk *Data leaks* policy. In the insider risk policy wizard, you would configure three different daily event levels for each SharePoint indicator to influence the risk score for alerts associated with these events.

![Insider risk management custom indicator settings](../media/insider-risk-custom-indicators.png)

For the first daily event level, you set the threshold to:

- *10 or more events per day* for a lower impact to the risk score for the events
- *20 or more events per day* for a medium impact to the risk score for the events
- *30 or more events per day* for a higher impact to the risk score for the events 

These settings effectively mean:

- If there are 1-9 SharePoint events that take place after the triggering event, risk scores are minimally impacted and would tend not to generate an alert.
- If there are 10-19  SharePoint events that take place after a triggering event, the risk score is inherently lower and alert severity levels would tend to be at a low level.
- If there are 20-29 SharePoint events that take place after a triggering event, the risk score is inherently higher and alert severity levels would tend to be at a medium level.
- If there are 30 or more SharePoint events that take place after a triggering event, the risk score is inherently higher and alert severity levels would tend to be at a high level.

Another option for policy thresholds is to assign the policy triggering event to risk management activity that is above the typical daily number of users. Instead of being defined by specific threshold settings, each threshold is dynamically customized for anomalous activities detected for in-scope policy users. If threshold activity for anomalous activities is supported for an individual indicator, you can select **Activity is above user's usual activity for the day** in the policy wizard for that indicator. If this option isn't listed, anomalous activity triggering isn't available for the indicator. If the **Activity is above user's usual activity for the day** option is listed for an indicator, but is not selectable, you need to enable this option in **Insider risk settings** > **Policy indicators**.

### Use real-time analytics (preview) to manage alert volume 

You can use real-time analytics if you want to take advantage of a guided (data-driven) threshold configuration experience that enables you to quickly select the appropriate thresholds for each policy indicator. This guided experience can help you efficiently adjust selection of indicators and thresholds of activity occurrence so you don't have too few or too many policy alerts. When analytics is turned on, you can choose the **Customize thresholds** option in the policy wizard to see:

- **A**. A gauge that shows the approximate number of scoped users whose activities from the past 10 days exceeded the lowest daily thresholds for at least one of the selected indicators in the policy. This gauge can help you estimate the number of alerts that might be generated if all users included in the policy were being assigned risk scores.
- **B**. A list of the top five indicators sorted by the number of users exceeding the lowest daily thresholds. If your policies are generating a lot of alerts, these are the indicators you might want to focus on to reduce "noise."
- **C**. An insight for each indicator, displayed below the thresholds. The insight shows the approximate number of users whose activities from the past 10 days exceeded the currently specified low thresholds for this indicator. For example, if the low threshold setting for *Downloading content from SharePoint* is set to 100, the insight shows the number of users in the policy who performed more than 100 download activities on an average in the past 10 days. If you adjust the threshold setting to 200, the insight will update in real time to show you the number of users whose activity exceeded levels that exceeded the new thresholds. This helps you quickly configure the appropriate thresholds for each indicator and achieve the highest level of alert effectiveness before activating your policies. 

   ![Insider risk management real-time analytics](../media/insider-risk-management-real-time-analytics.png)

Real-time analytics (preview) is based on the last 10 days of activity data in your tenant and [global exclusions (intelligent detections) are taken into account](insider-risk-management-settings-intelligent-detections.md). 

#### Prerequisites for using real-time analytics

To use real-time analytics (preview), you must:

1. [Enable insider risk analytics insights](insider-risk-management-configure.md#step-3-optional-enable-and-view-insider-risk-analytics-insights).
2. Choose the **Include all users and groups** option when you [create the policy](insider-risk-management-configure.md#step-6-required-create-an-insider-risk-management-policy).

   > [!NOTE]
   > If you've chosen to receive alerts only for activities that include priority content for this policy, real-time analytics insights (preview) will not be displayed since they're not supported for these policies.