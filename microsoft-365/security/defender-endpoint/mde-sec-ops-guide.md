---
title: Security Operations Guide for Defender for Endpoint
ms.reviewer: joshbregman, mattcall, pahuijbr, hayhov
manager: dansimp
description: A prescriptive playbook for SecOps personnel to manage Microsoft Defender for Endpoint.
keywords: malware, defender, antivirus, tamper protection
ms.service: microsoft-365-security
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

This article gives an overview of the requirements and tasks for successfully operating Microsoft Defender for Endpoint in your organization. These tasks help your security operations center (SOC) effectively detect and respond to Microsoft Defender for Endpoint detected security threats.

This article also describes daily, weekly, monthly, and ad-hoc tasks required to be performed by the security operations personnel in your organization.

> [!NOTE]
> These are recommended steps; check them against your own policies and environment to make sure they are fit for purpose.

## Prerequisites:

The Microsoft Defender Endpoint should be set up to support your regular security operations process. Although not covered in this document, the following articles provide configuration and setup information:

- [**Configure general Defender for Endpoint settings**](preferences-setup.md) 

    - General
    - Permissions
    - Rules
    - Device management 
    - Configure Microsoft Defender Security Center time zone settings 

- **Set up Microsoft 365 Defender incident notifications** <p> To get email notifications on defined Microsoft 365 Defender incidents, it's recommended that you configure email notifications. See [Get incident notifications by email](../defender/incidents-overview.md#get-incident-notifications-by-email).

- **Connect to SIEM (Sentinel)** <p> If you have existing security information and event management (SIEM) tools, you can integrate them with Microsoft 365 Defender. See [Integrate your SIEM tools with Microsoft 365 Defender](../defender/configure-siem-defender.md) and [Microsoft 365 Defender integration with Microsoft Sentinel.](/azure/sentinel/microsoft-365-defender-sentinel-integration)

- **Review data discovery configuration** <p> Review the Microsoft Defender for Endpoint device discovery configuration to ensure it's configured as required. <p> [Device discovery overview | Microsoft Learn](device-discovery.md) 

## Daily activities

### General

- **Review actions**

    In the action center, review the actions that have been taken in your environment, both automated and manual. This will help you validate that automated investigation and response (AIR) is performing as expected and identify any manual actions that need to be reviewed. See [Visit the Action center to see remediation actions.](auto-investigation-action-center.md)

### Security operations team  

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

- **Check Endpoint detection and response (EDR) sensor health**

    EDR health is maintaining the connection to the EDR service to make sure that MDE is getting all the required signals to alert and identify vulnerabilities.  
    
    Review unhealthy devices. See [Device health, Sensor health & OS report.](device-health-sensor-health-os.md) 

- **Check Microsoft Defender Antivirus health** 

    The Microsoft Defence Antivirus (MDAV) update status is critical for the best performance of your MDE environment and up-to-date detections.  The device health page shows you the status of your fleet for platform, intelligence, and engine version. See [Device health, Microsoft Defender Antivirus health report.](device-health-microsoft-defender-antivirus-health.md)

## Weekly activities 

### General

- **Message Center** 

    Microsoft 365 Defender uses the Microsoft 365 Message center to notify you of upcoming changes, such as new and changed features, planned maintenance, or other important announcements. 
      
    Review the Message center messages to understand any upcoming changes that will impact your environment. 
     
    You can access this in the Microsoft 365 admin center under the Health tab. See [How to check Microsoft 365 service health.](../../enterprise/view-service-health.md)

### Security operations team  

- **Review threat reporting** 

    Review health reports to identify any device threat trends that need to be addressed. See [Threat protection report.](threat-protection-reports.md)

- **Review threat analytics**  

    Review threat analytics to identify any campaigns that are impacting your environment. See [Track and respond to emerging threats through threat analytics.](threat-analytics.md)

### Security administration team 

- **Review threat and vulnerability (TVM) status** 

    Review TVM to identify any new vulnerabilities and recommendations that require action. See [Vulnerability management dashboard.](../defender-vulnerability-management/tvm-dashboard-insights.md)

- **Review attack surface reduction (ASR) reporting** 

    Review ASR reporting to identify any files that are impacting your environment. See [Attack surface reduction (ASR) rules report.](attack-surface-reduction-rules-report.md)
    
- **Review web protection events** 
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

### Security administration team 

- **Review device excluded from policy**
 
    If any devices are excluded from the Microsoft Defender Endpoint policy for any reason, review whether the device still needs to be excluded from the policy.
    
    > [!NOTE]
    > Review the troubleshooting mode for troubleshooting. See [Get started with troubleshooting mode in Microsoft Defender for Endpoint.](enable-troubleshooting-mode.md)

## Periodically 

These tasks are seen as maintenance for your security posture and are critical for your ongoing protection.  But as they may take time and effort, it's recommended that you set a standard schedule that you can maintain to perform these tasks.

- **Review exclusions** 
    
    Review exclusions that have been set in your environment to confirm you haven't created a protection gap by excluding things that are no longer required to be excluded. 


- **Review Defender policy configurations** 

    Periodically review your Defender configuration settings to confirm that they're set as required. 

- **Review automation levels**

    Review automation levels in automated investigation and remediation capabilities. See [Automation levels in automated investigation and remediation | Microsoft Learn](automation-levels.md) 

- **Review custom detections** 

    Periodically review whether the custom detections that have been created are still valid and effective. See [Review custom detection](../defender/custom-detection-rules.md)

- **Review alerts suppression**

    Periodically review any alert suppression rules that have been created to confirm they are still required and valid. See  [Review alerts suppression](manage-alerts.md)

## Troubleshooting

The following articles provide guidance to troubleshoot and fix errors that you may experience when setting up your Microsoft Defender for Endpoint service.

- [Troubleshoot Sensor state](check-sensor-status.md)
- [Troubleshoot sensor health issues using Client Analyzer](fix-unhealthy-sensors.md) 
- [Troubleshoot live response issues](troubleshoot-live-response.md)
- [Collect support logs using LiveAnalyzer](troubleshoot-collect-support-log.md)
- [Troubleshoot attack surface reduction issues](troubleshoot-asr.md)
- [Troubleshoot onboarding issues](troubleshoot-onboarding.md)
 
