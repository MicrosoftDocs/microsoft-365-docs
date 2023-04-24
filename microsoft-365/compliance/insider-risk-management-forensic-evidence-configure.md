---
title: Get started with insider risk management forensic evidence 
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
ms.date: 04/24/2023
audience: itpro
ms.collection: m365-security-compliance
---

# Get started with insider risk management forensic evidence

> [!IMPORTANT]
> Forensic evidence is an opt-in add-on feature in Insider Risk Management that gives security teams visual insights into potential insider data security incidents, with user privacy built in. Forensic evidence includes customizable event triggers and built-in user privacy protection controls, enabling security teams to better investigate, understand and respond to potential insider data risks like unauthorized data exfiltration of sensitive data.
>
> Organizations set the right policies for themselves, including what risky events are highest priority for capturing forensic evidence and what data is most sensitive.   Forensic evidence is off by default, policy creation requires dual authorization and usernames can be masked with pseudonymization (which is on by default for Insider Risk Management).  Setting up policies and reviewing security alerts within Insider Risk Management leverages strong role-based access controls (RBAC), ensuring that the designated individuals in the organization are taking the right actions with additional auditing capabilities.

>[!IMPORTANT]
>Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

## Configure forensic evidence

Configuring forensic evidence in your organization is similar to configuring other policies from insider risk management policy templates. In general, you'll follow the same basic configuration steps to set up forensic evidence, but there are a few areas that need feature-specific configuration actions before you get started with the basic configuration steps.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

### Step 1: Confirm your subscription and configure data storage access

Before you get started with forensic evidence, you should confirm your [insider risk management subscription](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-insider-risk-management) and any add-ons.

Additionally, you'll need to add the following domain to your firewall allowlist to support forensic evidence capture storage for your organization:

- *compliancedrive.microsoft.com*

Captures and capture data are stored at this domain and is assigned only to your organization. No other Microsoft 365 organization has access to forensic evidence captures for your organization.

> [!NOTE]
> Forensic evidence data is stored in one region where your Exchange Online Protection (EOP) or exchange region is set.

### Step 2: Configure supported devices

User devices eligible for forensic evidence capturing must be onboarded to the [Microsoft Purview compliance portal](/microsoft-365/compliance/microsoft-365-compliance-center) and must have the Microsoft Purview Client installed. 

>[!IMPORTANT]
>The Microsoft Purview Client automatically collects general diagnostic data related to device configuration and performance metrics. This includes data on critical errors, RAM consumption, process failures, and other data. This data helps us assess the client's health and identify any issues. For more details about how diagnostic data may be used, see the Use of Software with Online Services on the [Microsoft Product Terms](https://www.microsoft.com/licensing/product-licensing/products).

For a list of device and configuration requirements, see [Learn about forensic evidence](insider-risk-management-forensic-evidence.md#device-and-configuration-requirements). To onboard supported devices, complete the steps outlined in the [Onboard Windows 10 and Windows 11 devices into Microsoft 365 overview](/microsoft-365/compliance/device-onboarding-overview) article. 

To install the Microsoft Purview Client, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Forensic evidence** > **Client installation**.
2. Select **Download installer package (x64 version)** to download the installation package for Windows.
3. After downloading the installation package, use your preferred method to install the client on users' devices. These options may include manually installing the client on devices or tools to help automate the client installation:

    - **Microsoft Intune**: Microsoft Intune is an integrated solution for managing all of your devices. Microsoft brings together [Configuration Manager](/mem/configmgr/core/understand/introduction) and [Intune](/mem/intune/fundamentals/what-is-intune), without a complex migration, and with simplified licensing.
    - **Third-party device management solutions**: If your organization is using third-party device management solutions, see the documentation for these tools to install the client.


### Step 3: Configure settings

Forensic evidence has several configuration settings that provide flexibility for the types of security-related user activity captured, capturing parameters, bandwidth limits, and offline capturing options. Forensic evidence capturing enables you to create policies based on your requirements in just a few steps and adding users to a policy requires dual authorization.

To configure forensic evidence settings, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Forensic evidence** > **Forensic evidence settings**.
2. Select **Forensic evidence capturing** to enable capturing support in your forensic evidence policies. If this is turned off later, this will remove all previously added users for forensic evidence policies.

    >[!IMPORTANT]
    >The Microsoft Purview Client used to capture activity on users' devices is licensed under the Use of Software with the Online Services on the [Microsoft Product Terms](https://www.microsoft.com/licensing/product-licensing/products). Note that customers are solely responsible for using the insider risk management solution, including the Microsoft Purview Client, in compliance with all applicable laws.
 
1. In the **Capturing window** section, define when to start and stop activity capturing. Available values are *10 seconds*, *30 seconds*, *1 minute*, *3 minutes*, or *5 minutes*. 
1. In the **Upload bandwidth limit** section, define the amount of capture data to upload into your data storage account per user, per day. Available values are *100 MB*, *250 MB*, *500 MB*, *1 GB*, or *2 GB*.
1. In the **Offline capturing cache limit** section, define the maximum cache size to store on users' devices when offline capturing is enabled. Available values are *100 MB*, *250 MB*, *500 MB*, *1 GB*, or *2 GB*.
1. Select **Save**.

### Step 4: Create a policy

Forensic evidence policies define the scope of security-related user activity to capture for configured devices. There are two options for capturing forensic evidence:

- **Capture only specific activities (such as printing or exfiltrating files).** With this option, you can choose the device activities that you want to capture and only the selected activities will be captured by the policy. You can also choose to capture activity for specific desktop apps and/or websites. This way you can focus on just the activities, apps, and websites that present risk. 
- **Capture all activities that approved users perform on their devices.** This option is typically used for a specific period of time, for example, when a particular user is potentially involved in risky activity that may lead to a security incident. To preserve capacity and user privacy, you can choose to exclude specific desktop apps and/or websites from the capture. 

After you create a policy, you'll include it in forensic evidence requests to control what activity to capture for users whose requests are approved.

> [!NOTE]
> Continuous forensic policies (capturing all activities) take precedence over selective forensic evidence policies (capturing only specific activities). 

#### Capture only specific activities

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Forensic evidence** > **Forensic evidence policies**.
2. Select **Create forensic evidence policy**.
3. On the **Scope** page, select **Specific activities**. This option only captures activities detected by policies that users are included in. These activities are defined by the indicators selected in forensic evidence policies. Captures for this option will be available for review on the **Forensic evidence (preview)** tab on the **Alerts** or **Cases** dashboard.    
4. Select **Next**.
5. On the **Name and description** page, complete the following fields:
    - **Name (required)**: Enter a friendly name for the forensic evidence policy. This name can't be changed after the policy is created.
    - **Description (optional)**: Enter a description for the forensic evidence policy.
6. Select **Next**.
7. On the **Choose device activities to capture** page:
   1. Select any device activities that you want to capture. Only the selected activities will be captured by the policy. 
      > [!NOTE] 
      > If the indicators aren't selectable, you'll be prompted to turn them on. 
   2. You can also choose to capture activity for particular desktop apps and/or websites in your policy by selecting the  **Opening a specific app or website** check box under **App and web browsing activities to capture**. 

   > [!IMPORTANT]
   > If you want to capture browsing activities (to include or exclude specific URLs in your forensic evidence policies), make sure to [install the necessary browser extensions](insider-risk-management-browser-support.md). You also need to turn on at least one browsing indicator. If you haven't already turned on one or more browsing indicators, you'll be prompted to do so if you choose to include or exclude desktop apps or websites. The triggering event for capturing browsing activities is a URL update in the URL bar that contains the specified URL.

   3. Select **Next**.
8. (Optional) If you chose to capture activity for particular desktop apps and websites, in the **Add apps and websites you want to capture activity for** page:
    1. To add a desktop app, select **Add desktop apps**, enter the name of an executable file (for example, teams.exe), and then select **Add**. Repeat this process for each desktop app that you want to add (up to 25 apps). To find the name of an executable file for the app, open the Task Manager, and then view the properties for the app. Here's a list of exe names for some of the common applications: Microsoft Edge (msedge.exe), Microsoft Excel (Excel.exe), the Snipping tool (SnippingTool.exe), Microsoft Teams (Teams.exe), Microsoft Word (WinWord.exe), and Microsoft Remote Desktop Connection (mstsc.exe).

    > [!NOTE]
    > Sometimes, the exe names for an app might differ based on the device and the permissions with which the app was opened. For example, on a Windows 11 enterprise device, when Windows PowerShell is opened without administrator permissions, the exe name is WindowsTerminal.exe but when opened with administrator permissions, the exe name changes to powershell.exe. Make sure to include/exclude both exe names in such scenarios.

    2. To add a web app or website, select **Add web apps and websites**, enter a URL (for example, https://teams.microsoft.com), and then select **Add**. Repeat this process for each web app or website that you want to add. You can add up to 25 URLs with a character length of 100 for each URL. 

    > [!TIP]
    > If an app has a desktop and web version, be sure to add both the desktop executable and the web URL to make sure you capture activity for both. 

    3. Select **Next**.
9. On the **Review settings and finish** page, review the settings you've chosen for the policy and any suggestions or warnings for your selections. Edit any of the policy values or select **Submit** to create and activate the policy.
10. After you've completed the policy configuration steps, continue to Step 5.

#### Capture all activities

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), go to **Insider risk management** > **Forensic evidence (preview)** > **Forensic evidence policies**.
2. Select **Create forensic evidence policy**.
3. On the **Scope** page, select **All activities**. This option captures any activity performed by users. Captures for this option will be available for review on the **Forensic evidence (preview)** tab on the **User activity reports (preview)** dashboard.    
4. Select **Next**.
5. On the **Name and description** page, complete the following fields:
    - **Name (required)**: Enter a friendly name for the forensic evidence policy. This name can't be changed after the policy is created.
    - **Description (optional)**: Enter a description for the forensic evidence policy.
6. Select **Next**.
7. On the **Choose device activities to capture** page, if you want to exclude certain desktop apps and/or web apps or websites from the capture, under **App and web browsing activities to capture**, select the **Exclude specific apps or websites** check box. 
9. Select **Next**.
10. If you chose to exclude particular desktop apps and websites from the capture, in the **Exclude applications/URLs** page:
    - To exclude a desktop app from the capture, select **Exclude desktop apps**, enter the name of an executable file (for example, teams.exe), and then select **Add**. Repeat this process for each desktop app that you want to exclude (up to 25 apps). To find the name of an executable file for an app, open the Task Manager, and then view the properties for the app. 
    - To exclude a web app or website, select **Exclude web apps and websites**, enter a URL (for example, https://teams.microsoft.com), and then select **Add**. Repeat this process for each web app or website that you want to exclude. You can exclude up to 25 URLs with a character length of 100 for each URL. 

    > [!TIP]
    > If an app has a desktop and web version, be sure to add both the desktop executable and the web URL to make sure you exclude both. 

11. On the **Review settings and finish** page, review the settings you've chosen for the policy and any suggestions or warnings for your selections. Edit any of the policy values or select **Submit** to create and activate the policy.
12. After you've completed the policy configuration steps, continue to Step 5.

### Step 5: Define and approve users for capturing

Before security-related user activities can be captured, admins must follow the dual authorization process in forensic evidence. This process mandates that enabling visual capturing for specific users is both defined and approved by applicable people in your organization.

You must request that forensic evidence capturing is enabled for specific users. When a request is submitted, approvers in your organization are notified in email and can approve or reject the request. If approved, the user will appear on the **Approved users** tab and will be eligible for capturing.

- To request approval for forensic evidence capturing for users, complete [these configuration steps](/microsoft-365/compliance/insider-risk-management-forensic-evidence-manage#request-capturing-approvals).
- To approve (or reject) requests for forensic evidence capturing for users, complete [these configuration steps](/microsoft-365/compliance/insider-risk-management-forensic-evidence-manage#approve-capturing-requests).

## Next steps

After you've configured your forensic evidence policy, it may take up to two hours for policy enforcement, given that the forensic evidence clients (installed at the endpoint devices) are online. When a clip is captured by the client, it may take up to one hour before the clip is available to review. For more information about managing forensic evidence and reviewing clip captures, see the [Manage information risk management forensic evidence](/microsoft-365/compliance/insider-risk-management-forensic-evidence-manage) article.
