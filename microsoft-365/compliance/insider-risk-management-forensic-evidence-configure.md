---
title: Get started with insider risk management forensic evidence (preview)
description: Get started with insider risk management forensic evidence in Microsoft Purview. Forensic evidence is an investigative tool for viewing captured security-related user activity to help determine whether the user's actions pose a risk and may lead to a security incident.
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

# Get started with insider risk management forensic evidence (preview)

>[!IMPORTANT]
>Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

## Configure forensic evidence

Configuring forensic evidence in your organization is similar to configuring other policies from insider risk management policy templates. In general, you'll follow the same basic configuration steps to set up forensic evidence, but there are a few areas that need feature-specific configuration actions before your get started with the basic configuration steps.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

### Step 1: Confirm your subscription and configure data storage access

Before you get started with forensic evidence, you should confirm your [insider risk management subscription](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-insider-risk-management) and any add-ons.

Additionally, you'll need to add the following domain to your firewall allowlist to support forensic evidence capture storage for your organization:

- *compliancedrive.microsoft.com*

Captures and capture data are stored at this domain and is assigned only to your organization. No other Microsoft 365 organization has access to forensic evidence captures for your organization.

### Step 2: Configure supported devices

User devices eligible for forensic evidence capturing must be onboarded to the [Microsoft Purview compliance portal](/microsoft-365/compliance/microsoft-365-compliance-center) and must have the Microsoft Purview Client installed. 

>[!IMPORTANT]
>The Microsoft Purview Client automatically collects general diagnostic data related to device configuration and performance metrics. This includes data on critical errors, RAM consumption, process failures, and other data. This data helps us assess the client's health and identify any issues. For more details about how diagnostic data may be used, see the Use of Software with Online Services on the [Microsoft Product Terms](https://www.microsoft.com/licensing/product-licensing/products).

Visual captures in forensic evidence are supported for the following devices/configurations:

- Latest Windows 10 or Windows 11 x64 build
- A maximum of 4 monitors per device

To onboard devices, complete the steps outlined in the [Onboard Windows 10 and Windows 11 devices into Microsoft 365 overview](/microsoft-365/compliance/device-onboarding-overview) article.

To install the Microsoft Purview Client, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Forensic evidence (preview)** > **Client installation**.
2. Select **Download installer package (x64 version)** to download the installation package for Windows.
3. After downloading the installation package, use your preferred method to install the client on users' devices. These options may include manually installing the client on devices or tools to help automate the client installation:

    - **Microsoft Endpoint Manager**: [Microsoft Endpoint Manager](/mem/endpoint-manager-overview) is an integrated solution for managing all of your devices. Microsoft brings together [Configuration Manager](/mem/configmgr/core/understand/introduction) and [Intune](/mem/intune/fundamentals/what-is-intune), without a complex migration, and with simplified licensing.
    - **Third-party device management solutions**: If your organization is using third-party device management solutions, see the documentation for these tools to install the client.


### Step 3: Configure settings

Forensic evidence has several configuration settings that provide flexibility for the types of security-related user activity captured, capturing parameters, bandwidth limits, and offline capturing options. Forensic evidence capturing enables you to create policies based on your requirements in just a few steps and adding users to a policy requires dual authorization.

To configure forensic evidence settings, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Forensic evidence (preview)** > **Forensic evidence settings**.
2. Select **Forensic evidence capturing** to enable capturing support in your forensic evidence policies. If this is turned off later, this will remove all previously added users for forensic evidence policies.

    >[!IMPORTANT]
    >The Microsoft Purview Client used to capture activity on users' devices is licensed under the Use of Software with the Online Services on the [Microsoft Product Terms](https://www.microsoft.com/licensing/product-licensing/products). Note that customers are solely responsible for using the insider risk management solution, including the Microsoft Purview Client, in compliance with all applicable laws.
 
1. In the **Capturing window** section, define when to start and stop activity capturing. Available values are *10 seconds*, *30 seconds*, *1 minute*, *3 minutes*, or *5 minutes*.
1. In the **Upload bandwidth limit** section, define the amount of capture data to upload into your data storage account per user, per day. Available values are *100 MB*, *250 MB*, *500 MB*, *1 GB*, or *2 GB*.
1. In the **Offline capturing** section, enable offline capturing if needed. When enabled, users' offline activity is captured and uploaded to your data storage account the next time they're online.
1. In the **Offline capturing cache limit** section, define the maximum cache size to store on users' devices when offline capturing is enabled. Available values are *100 MB*, *250 MB*, *500 MB*, *1 GB*, or *2 GB*.
1. Select **Save**.

### Step 4: Create a policy

Forensic evidence policies define the scope of security-related user activity to capture on configured devices. You can have one policy that captures all activities approved users perform on their devices (all keystrokes, mouse movements, and so on) and additional policies that capture only specific activities (such as printing or exfiltrating files). Once created, you'll include these policies in forensic evidence requests to control what activity to capture for users whose requests are approved.

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Forensic evidence (preview)** > **Forensic evidence policies**.
2. Select **Create forensic evidence policy**.
3. On the **Scope** page, you'll choose the scope of security-related user activity to capture. Select one of the following options:

    - **Specific activities**: This option only captures activities detected by policies that users are included in. These activities are defined by the indicators selected in forensic evidence policies. Captures for this option will be available for review on the **Forensic evidence (preview)** tab on the **Alerts** or **Cases** dashboard.
    - **All activities**: This option captures any activity performed by users. This includes mouse movement, keystrokes, and all activities defined by insider risk indicators. Captures for this option will be available for review on the **Forensic evidence (preview)** tab on the **User activity reports (preview)** dashboard.
4. Select **Next**.
5. On the **Name and description** page, complete the following fields:
    - **Name (required)**: Enter a friendly name for the forensic evidence policy. This name can't be changed after the policy is created.
    - **Description (optional)**: Enter a description for the forensic evidence policy.
6. Select **Next**.
7. If you've selected the **All Activities** option in Step 3, the **Device activities** page directs you the final step in the policy wizard. There aren't any device activities to configure when the **All activities** option is selected.

    If you've selected the **Specific activities** option in Step 3, you'll select device activities to capture on the **Device activities** page. Only the activities selected will be captured by the policy. If the indicators aren't selectable, you'll need to turn on these indicators for your organization before you can select these indicators in the forensic evidence policy. 

    After you've selected indicators, select **Next**.
8. On the **Finish** page, review the settings you've chosen for the policy and any suggestions or warnings for your selections. Select **Edit** to change any of the policy values or select **Submit** to create and activate the policy.

After you've completed the policy configuration steps, continue to Step 5.

### Step 5: Define and approve users for capturing

Before security-related user activities can be captured, admins must follow the dual authorization process in forensic evidence. This process mandates that enabling visual capturing for specific users is both defined and approved by applicable people in your organization.

>[!IMPORTANT]
>For the preview release, a maximum of 5 concurrent users are eligible for forensic evidence capturing. Capturing for groups isn't supported in the preview release.

You must request that forensic evidence capturing is enabled for specific users. When a request is submitted, approvers in your organization are notified in email and can approve or reject the request. If approved, the user will appear on the **Approved users** tab and will be eligible for capturing.

- To request approval for forensic evidence capturing for users, complete [these configuration steps](/microsoft-365/compliance/insider-risk-management-forensic-evidence-manage#request-capturing-approvals).
- To approve (or reject) requests for forensic evidence capturing for users, complete [these configuration steps](/microsoft-365/compliance/insider-risk-management-forensic-evidence-manage#approve-capturing-requests).

## Next steps

After you've configured your forensic evidence policy, it may take up to 48 hours for the first eligible clip captures to be available for review in alerts for other policies or as activity in **User Activity Reports**. For more information about managing forensic evidence and reviewing clip captures, see the [Manage information risk management forensic evidence](/microsoft-365/compliance/insider-risk-management-forensic-evidence-manage) article.
