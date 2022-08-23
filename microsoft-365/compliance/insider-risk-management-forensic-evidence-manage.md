---
title: Manage insider risk management forensic evidence
description: Manage insider risk management forensic evidence in Microsoft Purview
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: m365-security-compliance
---

# Manage insider risk management forensic evidence

>[!IMPORTANT]
>Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

After you've completed the configuration steps and created your forensic evidence policy, you'll start to see alerts for potentially risky user activities that meet the conditions for indicators that are defined in the policy.

## Managing users and groups

You must request and approve specific users or groups before they are eligible for screen recording. Simply adding users or groups to a forensic evidence policy doesn't automatically make those users or groups eligible for screen recording. You can request and approve users or groups before or after forensic evidence policies are created, but the screen recordings associated with policy indicators will only be created and available for reviewing once the users or groups are approved.

Users assigned to the *Insider Risk Management* or *Insider Risk Management Admins* role groups can submit approval requests to users assigned to the *Insider Risk Management Approvers* role group.

### Request recording approvals

You must request that forensic evidence recording be turned on for specific users and groups. When a request is submitted, approvers in your organization are notified in email and can approve or reject the request. If approved, the user or group will appear on the **Approved users & groups** tab and will be eligible for screen recording.

To configure approved users and groups for forensic evidence, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Settings** > **Forensic evidence (preview)** > User management.
2. Select **Create request**.
3. On the **Users and groups** page, select **Add users and groups**.
4. Use **Search** to locate a specific user or group or select one or more users and groups from the list. Select **Add**, then select **Next**.
5. On the **Provide justification** page, let the reviewer know why you're requesting that recording be enabled for the user and groups you added in the **Justification for turning on screen recording** text box. This is a required field. When complete, select **Next**.
6. On the **Finish** page, review your settings before submitting the request. Select **Edit users and groups** or **Edit justification** to change any of the request values or select **Submit** to create and send the request to reviewers.

To view pending approval requests, navigate to **Insider risk management** > **Forensic evidence requests (preview)**. Here you'll see the users and groups with pending requests, their email address, the request submission date, and who submitted the approval request. If no users or groups are displayed, there aren't any pending approval requests for any users or groups.

Users assigned to the *Insider Risk Management Approvers* role group can select a user or group on the **Forensic evidence request (preview)** tab and review the request. After reviewing the request, these users can approve or reject the forensic evidence recording request. Approving or rejecting the recording request removes the pending request for users or groups from this view.

### Approve recording requests

After requests are complete, users assigned to the *Insider Risk Management Approvers* role group will receive an email notification for the approval request. To approve requests, reviewers must complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Forensic evidence requests (preview)** > **User management**.
2. Select a user or group.
3. On the **Review forensic evidence request (preview)** pane, review the justification submitted by the requestor. Select **Approve** or **Reject** as applicable.
4. On the **Request approved** or **Request rejected** page, select **Close**.

### Revoke recording approvals

If needed, you can revoke approval for specific users or groups and exclude them from forensic evidence recording. Revoking approval doesn't delete or remove any existing recordings for these users or groups, only future recording of activity for these users or groups is disabled.

To revoke approvals for users or groups, users assigned to the *Insider Risk Management Approvers* role group must complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Settings** > **Forensic evidence (preview)** > **User management**.
2. Select the **Approved users & groups** tab.
3. Select a user or group, then select **Remove**.
4. On the removal confirmation page, select **Remove** to revoke recording approval or select **Cancel** to close the confirmation page.

## Viewing recordings

If you've selected the settings option to only record activities detected by policies that users are included in, recordings are available as part of the alert and are accessible on the **Forensic evidence (preview)** tab on the **Alerts dashboard**. If alerts are later escalated to cases, the associated recordings are accessible on the **Forensic evidence (preview)** tab on the **Cases** dashboard.

If you've selected the settings option to record any activity performed by users, regardless of whether they're included in a forensic evidence policy, you'll view the recordings for individual users on the **User activity report** dashboard.

### Reviewing recordings included with alerts

For alerts generated by policies, forensic evidence recordings for users are available for review on the **Forensic evidence (preview)** tab on the **Alerts** dashboard. If one or more recordings are available for the alert, you'll also see a **View forensic evidence** notification in the Activity that generated this alert header section. You can select the notification link or the **Forensic evidence (preview)** tab to review the activity recordings.

Overall, reviewing an alert for potentially risky activity that may contain forensic evidence screen recordings is essentially the same as reviewing an alert without screen recordings. The significant difference is the inclusion of any applicable screen recordings. The **Forensic evidence (preview)** tab provides access to all available recordings associated with the alert. Each recording is displayed and includes the following information:

- **Date/time (UTC)**: The date, time (UTC), and duration of the screen recording.
- **Device**: The name of the device in Windows 10/11.
- **Activity type**: The activity type included in the recording. These activities are based on global and policy indicators assigned to the associated policy.
- **Recording events**: Each recording contains events within the recording to help focus your review on specific activities for the recording session.

SCREENSHOT

To view a recording, complete the following steps:

1. If needed, configure the filters for the available recordings. You can filter by the **Dates (UTC)** or by **Activity**.
2. Select a recording to review.
3. Select the device monitor to review. Each monitor connected to the device (up to 4) is eligible for screen recording and are listed as *Display 1*, *Display 2*, etc.
4. Using the video player controls, select the *Play control* to review the entire screen recording from beginning to end.
5. If you want to scope the review to a specific event in the recording, select the event from the **Recording events** lists to the right of the video player.

### Reviewing recordings without alerts

To view recordings for activity not associated with alerts, you'll use [User activity reports](/microsoft-365/compliance/insider-risk-management-activities#user-activity-reports). User activity reports allow you to examine activities for specific users for a defined time period without having to assign them temporarily or explicitly to an insider risk management policy. If these user activities include activities supported by forensic evidence recordings, recordings are included with the user activity.

If you've configured forensic evidence to record all user activity, regardless of whether they're included in a forensic evidence policy, you'll review these recordings by selecting **Insider risk management** > **User activity reports** and then selecting a specific user and selecting the **Forensic evidence (preview)** tab. Reviewing screen recordings for cases follows the same process as when you review recordings as part of examining alerts.

SCREENSHOT

### Reviewing recordings included with cases

If alerts are escalated to cases, all associated screen recordings are included as part of the case. Reviewing screen recordings for cases follows the same process as when you review recordings as part of examining alerts.

## Forensic evidence device health report (preview)

To support forensic evidence screen recording, devices must be onboarded to the [Microsoft Purview compliance portal](/microsoft-365/compliance/microsoft-365-compliance-center) and must have the forensic evidence agent installed. After devices are configured, you can review the forensic evidence agent health for all devices in your organization by navigating to **Insider risk management** > **Forensic evidence device health report (preview)**.

SCREENSHOT

The report allows you to view the status and health of all devices that have the forensic evidence agent installed. Each report widget on the report displays information for last 24 hours.

- **# Online machines**: The total number of devices currently online.
- **# Offline machines**: The total number of devices currently offline.
- **# Machines warning**: The total number of devices with a warning.
- **# Machines error**: The total number of devices with an error. Devices with an error status…

The device health queue lists all the devices in configured for forensic evidence in your organization. In addition, the report lists the status of the following device attributes:

- **Device name**: The name of the device, defined by the *ComputerName* attribute of the device.
- **Device status**: The status of the forensic evidence agent on the device. Status values are as follows:
    - ***Healthy***: The agent on the device is working properly and screen recording features are fully supported.
    - ***Warning***: The agent on the device is...
    - ***Error***: The agent on the device is...
- **Status details**:
- **Last sync (UTC)**:
- **User name**: 
- **Windows OS version**:
- **Purview Orchestrate version**:
