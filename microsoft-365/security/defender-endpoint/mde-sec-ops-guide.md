---
title: Security Operations Guide for Defender for Endpoint
ms.reviewer: joshbregman, mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: A prescriptive playbook for SecOps personnel to manage Microsoft Defender for Endpoint.
keywords: malware, defender, antivirus, tamper protection
ms.pagetype: security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.date: 02/07/2023
audience: ITPro
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.custom: 
- nextgen
- admindeeplinkDEFENDER
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Microsoft Defender for Endpoint Security Operations Guide 


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

This article gives an overview of the requirements and tasks for successfully operating Microsoft Defender for Endpoint in your organization. This helps your security operations center (SOC) to effectively detect and respond to email and collaboration-related security threats.

This article also describes daily, weekly, monthly, and ad-hoc tasks required to be performed by the security operations personnel in your organization.

## Prerequisites:

For general configuration and setup, see the following articles:

- [**Configure general Defender for Endpoint settings**](preferences-setup.md) 

- **General**

    - [Configure alert notifications](../defender/configure-email-notifications.md) 
    - [Configure vulnerability email notifications](configure-vulnerability-email-notifications.md) 
    - [Configure advanced features](advanced-features.md) 
- **Permissions**
    - [Use basic permissions to access the portal](basic-permissions.md) 
    - [Assign user access to Microsoft Defender Security Center](assign-portal-access.md) 
    - Manage portal access using RBAC 
        - [Manage portal access using RBAC](rbac.md) 
        - [Create and manage roles](user-roles.md) 
        - [Create and manage device groups](machine-groups.md) 
        - [Create and manage device tags](machine-tags.md)
        
- **Rules**
    - [Manage suppression rules](manage-suppression-rules.md) 
    - Create indicators. 
        - [Create indicators](manage-indicators.md) 
        - [Create indicators for files](indicator-file.md) 
        - [Create indicators for IPs and URLs/domains](indicator-ip-domain.md) 
        - [Create indicators for certificates](indicator-certificates.md) 
        - [Manage indicators](indicator-manage.md) 
    - [Manage automation file uploads](manage-automation-file-uploads.md)
    - [Manage automation folder exclusions](manage-automation-folder-exclusions.md) 

- **Device management** 
    - [Onboarding devices](onboard-configure.md) 
    - [Offboarding devices](offboard-machines.md) 
    - [Ensure your devices are configured properly](configure-machines.md) 
    - [Monitor and increase device onboarding](configure-machines-onboarding.md) 

- [**Configure Microsoft Defender Security Center time zone settings**](time-settings.md) 

- **Set up Microsoft 365 Defender incident notifications** <p> To get email notifications on defined Microsoft 365 Defender incidents, it's recommended that you configure email notifications. See [Get incident notifications by email](../defender/incidents-overview.md#get-incident-notifications-by-email).

- **Connect to SIEM (Sentinel)** <p> If you have existing security information and event management (SIEM) tools, you can integrate them with Microsoft 365 Defender. See [Integrate your SIEM tools with Microsoft 365 Defender](../defender/configure-siem-defender.md) and [Microsoft 365 Defender integration with Microsoft Sentinel.](/azure/sentinel/microsoft-365-defender-sentinel-integration)

- **Review data discovery configuration** <p> Review the Microsoft Defender for Endpoint device discovery configuration to ensure it's configured as required. <p> [Device discovery overview | Microsoft Learn](device-discovery.md) 

## Daily activities

### General

- **Review actions**

    In the action centre, review the actions that have been taken in your environment, both automated and manual. This will help you validate that automated investigation and response (AIR) is performing as expected and identify any manual actions that need to be reviewed. See [Visit the Action center to see remediation actions.](auto-investigation-action-center.md)

### Security Operations Team  

- **Monitor the Microsoft 365 Defender Incidents queue**

    When Microsoft Defender for Endpoint (MDE) identifies Indicators of compromise (IOCs) or Indicators of attack (IOAs) and generates an alert, this alert will be included in an incident and displayed in the Incidents queue in the Microsoft 365 Defender console. 
    
    Review these incidents to respond to any Microsoft Defender for Endpoint alerts and resolve once the incident has been remediated. See [Get incident notifications by email](../defender/incidents-overview.md#get-incident-notifications-by-email) and [View and organize the Microsoft Defender for Endpoint Incidents queue.](view-incidents-queue.md)

- **Manage false positive and false negative detections**

    Review the incident queue, identify false positive and false negative detections and submit them for review. This helps you effectively manage alerts in your environment and make your alerts more efficient. See [Address false positives/negatives in Microsoft Defender for Endpoint.](defender-endpoint-false-positives-negatives.md)

- **Review threat analytics high-impact threats** 

    Review threat analytics to identify any campaigns that are impacting your environment. 
    The “High-impact threats” table lists the threats that have had the highest impact to the organization. This section ranks threats by the number of devices that have active alerts. See [Track and respond to emerging threats through threat analytics.](threat-analytics.md#view-the-threat-analytics-dashboard)

### Security administration team 

- **Review health reports**  
    
    Review health reports to identify any device health trends that need to be addressed.  The device health reports cover Microsoft Defender for Endpoint AV signature, platform health, and EDR health. See [Device health reports in Microsoft Defender for Endpoint.](device-health-reports.md)

- **Check Endpoint Detection and Response (EDR) health**

    EDR health is maintaining the connection to the EDR service to make sure that MDE is getting all the required signals to alert and identify vulnerabilities.  
    
    Review unhealthy devices. 

- **Check AV health** 

    The Microsoft Defence Antivirus (MDAV) update status is critical for the best performance of your MDE environment and up-to-date detections.  The device health page shows you the status of your fleet for platform, intelligence, and engine version. 

## Weekly activities 

### General

- **Message Center** 

    Microsoft 365 Defender uses the Microsoft 365 Message center to notify you of upcoming changes, such as new and changed features, planned maintenance, or other important announcements. 
      
    Review the Message centre messages to understand any upcoming changes that will impact your environment. 
     
    You can access this in the Microsoft 365 admin center under the Health tab. See [How to check Microsoft 365 service health.](../../enterprise/view-service-health.md)

### Security operations team  

- **Review threat reporting** 

    Review health reports to identify any device threat trends that need to be addressed. See [Threat protection report.](threat-protection-reports.md)

- **Review threat analytics**  

Review threat analytics to identify any campaigns that are impacting your environment. See 
[Track and respond to emerging threats through threat analytics.](threat-analytics.md)

### Security administration team 

- **Review threat and vulnerability (TVM) status** 

    Review TVM to identify any new vulnerabilities that require action. See [Vulnerability management dashboard.](../defender-vulnerability-management/tvm-dashboard-insights.md)

- **Review attack surface reduction (ASR) reporting** 

    Review ASR reporting to identify any files that are impacting your environment. See [Attack surface reduction (ASR) rules report.](attack-surface-reduction-rules-report.md)
    
- **Review web protection events** 
- 
    Review web defense reporting to identify any IP / URLs that are being blocked. See [Web protection.](web-protection-overview.md)


## Monthly activities 

### General  

Review the relevant What’s new pages for your fleet to understand the recently released updates in the product. 

- [What's new in Microsoft Defender for Endpoint](whats-new-in-microsoft-defender-endpoint.md)

- [What's new in Microsoft Defender for Endpoint on Windows](windows-whatsnew.md)

- [What's new in Microsoft Defender for Endpoint on Mac](mac-whatsnew.md) 

- [What's new in Microsoft Defender for Endpoint on Linux](linux-whatsnew.md) 

- [What's new in Microsoft Defender for Endpoint on iOS](ios-whatsnew.md) 
 
- [What's new in Microsoft Defender for Endpoint on Android](android-whatsnew.md)

### Security Administration Team 

- **Review Device Excluded from policy**
 
    If any devices are excluded from the policy for any reason, review whether the devices still need to be excluded.
    
    > [!NOTE]
    > Review the troubleshooting mode for troubleshooting. See G[et started with troubleshooting mode in Microsoft Defender for Endpoint.](enable-troubleshooting-mode.md)

- **Review Device health states** 
 
    Verify sensor health states to make sure the “impaired communication” or “No sensor data” are investigated and troubleshoot accordingly.  
     
    [https://security.microsoft.com/devicehealth?viewid=sensorhealthsreport](https://security.microsoft.com/devicehealth?viewid=sensorhealthsreport )
   
## Periodically (Yearly / Half Yearly) 

These tasks are seen as maintenance for your security posture and are critical for your ongoing protection.  But as they may take time and effort, it's recommended that you set a standard schedule that you can maintain to perform these tasks.

- **Review exclusions** 
    
    Review exclusions that have been set in your environment to confirm you haven't created a protection gap by excluding things that are no longer required to be excluded. 


- **Review Defender policy configurations** 

    Periodically review your Defender configuration settings to confirm that they're set as required. 

- **Review Automation levels** 

    - [Automation levels in automated investigation and remediation | Microsoft Learn](automation-levels.md) 
    - [Review custom detection](../defender/custom-detection-rules.md)
    - [Review alerts suppression](manage-alerts.md)

## Troubleshooting

- **Troubleshoot Sensor state**
    - [Check sensor state ](check-sensor-status.md)
    - [Fix unhealthy sensors](fix-unhealthy-sensors.md) 
    - [Inactive devices](fix-unhealthy-sensors.md#inactive-devices)
    - [Misconfigured devices](fix-unhealthy-sensors.md#misconfigured-devices) 
    - [Review sensor events and errors on machines with Event Viewer](event-error-codes.md) 

- **Troubleshoot sensor health issues using Client Analyzer** 

    - [Client analyzer overview](overview-client-analyzer.md) 
    - [Download and run the client analyzer](download-client-analyzer.md) 
    - [Run the client analyzer on Windows](run-analyzer-windows.md) 
    - [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md) 
    - [Data collection for advanced troubleshooting on Windows](data-collection-analyzer.md) 
    - [Understand the analyzer HTML report](analyzer-report.md) 
    - [Provide feedback on the client analyzer tool](analyzer-feedback.md) 

- **Troubleshoot Microsoft Defender for Endpoint service issues** 

    - [Troubleshoot service issues](troubleshoot-mdatp.md) 
    - [Contact Microsoft Defender for Endpoint support](contact-support.md) 

- **[Troubleshoot live response issues](troubleshoot-live-response.md)** 


- **[Collect support logs using LiveAnalyzer](troubleshoot-collect-support-log.md)** 

- **Troubleshoot attack surface reduction issues** 
    - [Network protection](troubleshoot-np.md)
    - [Attack surface reduction rules](troubleshoot-asr.md) 
    - [Migrate to Attack surface reduction rules](migrating-asr-rules.md) 

- **Troubleshoot onboarding issues**

    - [Troubleshoot issues during onboarding](troubleshoot-onboarding.md)
    - [Troubleshoot subscription and portal access issues](troubleshoot-onboarding-error-messages.md)
    - [Troubleshoot security configuration management onboarding issues](troubleshoot-security-config-mgt.md) 
