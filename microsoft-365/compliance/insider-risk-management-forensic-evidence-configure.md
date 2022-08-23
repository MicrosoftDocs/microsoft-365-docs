---
title: Get started with insider risk management forensic evidence
description: Get started with insider risk management forensic evidence in Microsoft Purview
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

# Get started with insider risk management forensic evidence

>[!IMPORTANT]
>Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

## Configure forensic evidence

Configuring forensic evidence in your organization is very similar to configuring other policies from insider risk management policy templates. In general, you'll follow the same basic configuration steps to set up forensic evidence, but there are a few areas that need feature-specific configuration actions before your get started with the basic configuration steps.

### Step 1: Confirm your subscription and configure data storage

Before you get started with forensic evidence, you should confirm your [insider risk management subscription](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-insider-risk-management) and any add-ons. Users included in forensic evidence policies must be assigned licenses from one of the supported insider risk management plans.

Additionally, you'll need to add the following domain to your firewall allow list to support recording storage for your organization:

- *compliancedrive.microsoft.com*

Recordings and recording data are stored at this domain and is assigned only to your organization. No other Microsoft 365 organization has access to forensic evidence recordings for your organization.

### Step 2: Configure supported devices

User devices eligible for recording must be onboarded to the [Microsoft Purview compliance portal](/microsoft-365/compliance/microsoft-365-compliance-center) and must have the forensic evidence agent installed. Screen-by-screen visual recordings in forensic evidence are supported for the following devices/configurations:

- Latest Windows 10 or Windows 11 x64 build
- A maximum of 4 monitors per device

To onboard devices, complete the steps outlined in the [Onboard Windows 10 and Windows 11 devices into Microsoft 365 overview](/microsoft-365/compliance/device-onboarding-overview) article.

To install the forensic evidence agent, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Settings** > **Forensic evidence (preview)** > **Device onboarding**.
2. Select **Download installer package (x64 version)** to download the installation package.
3. Run the installer on devices for approved users included in forensic evidence policies.

### Step 3: Configure settings

Forensic evidence has several configuration settings that provide flexibility for the types of user activity recorded, recording parameters, bandwidth limits, and offline recording options. Forensic evidence capturing is off by default and policy creation requires dual authorization.

To configure forensic evidence settings, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Settings** > **Forensic evidence (preview)** > **General settings**.
2. Select **Allow Forensic evidence in your org to** enable recording support in your forensic evidence policies. If this is turned off later, this will remove all previously added users and groups for forensic evidence policies.
3. In the **User activity to record** section, select one of the following options:

    - **Only activity detected by policies**: This option only records activities detected by policies that users are included in. These activities are defined by the indicators selected in forensic evidence policies. Recordings for this option will be available for review on the **Forensic evidence (preview)** tab on the **Alerts** dashboard.
    - **All user activity**: This option records any activity performed by users, regardless of whether they're included in a forensic evidence policy. This includes mouse movement, keystrokes, and all activities defined by insider risk indicators. Recordings for this option will be available for review on the **Forensic evidence (preview)** tab on the **User activity reports (preview)** dashboard.

4. In the **Recording time** section, define when to start and stop activity recording. Available values are *10 seconds*, *30 seconds*, *1 minute*, *3 minutes*, or *5 minutes*.
5. In the **Upload bandwidth limit** section, define the amount of data to upload into your data storage account per user, per day. Available values are *100 MB*, *250 MB*, *500 MB*, *1 GB*, or *2 GB*.
6. In the **Offline recording** section, enable offline recording if needed. When enabled, users' offline activity is recorded and uploaded to your data storage account the next time they are online.
7. In the **Offline recording cache limit** section, define the maximum cache size to store on users' devices when offline recording is enabled. Available values are *100 MB*, *250 MB*, *500 MB*, *1 GB*, or *2 GB*.
8. Select **Save**.

### Step 4: Define approved users and groups for recording

Before user activities can be recorded, users or groups must follow the dual authorization process in forensic evidence. This process mandates that enabling screen-by-screen visual recording for specific users or groups is both defined and approved by applicable people in your organization.

>[!IMPORTANT]
>For public preview, a maximum of 5 concurrent users are eligible for forensic evidence recording. Recording for groups is limited for a single group containing 5 or less users.

You must request that forensic evidence recording be turned on for specific users and groups. When a request is submitted, approvers in your organization are notified in email and can approve or reject the request. If approved, the user or group will appear on the **Approved users & groups** tab and will be eligible for screen recording.

- To request approval for screen recording for users or groups, complete [these configuration steps](/microsoft-365/compliance/insider-risk-management-forensic-evidence-manage#request-recording-approvals).
- To approve (or reject) requests for screen recording for users or groups, complete [these configuration steps](/microsoft-365/compliance/insider-risk-management-forensic-evidence-manage#approve-recording-requests).

After you've completed the request and approval steps, continue to Step 5.

### Step 5: Complete the configuration steps and create a policy

Now that you've completed the initial configuration steps for forensic evidence, you'll follow the steps in the [Get started with insider risk management](/microsoft-365/compliance/insider-risk-management-configure) article to complete the process and configure your first forensic evidence policy.

## Next steps

After you've configured your forensic evidence policy, it may take up to 48 hours for the first eligible screen recordings to be available for review. For more information about managing forensic evidence and reviewing screen recordings, see the [Manage information risk management forensic evidence](/microsoft-365/compliance/insider-risk-management-forensic-evidence-manage) article.
