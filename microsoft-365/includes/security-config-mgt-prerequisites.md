--- 
title: include file
description: include file
author: mjcaparas
ms.service: microsoft-365-security
ms.author: macapara
ms.date: 10/28/2021
---



## Prerequisites

Review the following sections for requirements for the Security Management for Microsoft Defender for Endpoint Scenario:

### Environment

When a device onboards to Microsoft Defender for Endpoint:


- The device is surveyed for an existing Intune presence, which is a mobile device management (MDM) enrollment to Intune
- Devices without an Intune presence will enable the Security Management feature
- A trust is created with Azure Active Directory if one doesn't already exist
- Azure Active Directory trust is used to communicate with Intune and retrieve policies
- Policy retrieve from Intune is enforced on the device by Microsoft Defender for Endpoint

### Active Directory requirements

When a device that is domain joined creates a trust with Azure Active Directory, this scenario is referred to as a *Hybrid Azure Active Directory Join* scenario. The Security Management for Microsoft Defender for Endpoint fully supports this scenario with the following requirements:

- Azure Active Directory Connect (AAD Connect) must be synchronized to the tenant that is used from Microsoft Defender for Endpoint
- Hybrid Azure Active Directory Join must be configured in your environment (either through Federation or AAD Connect Sync)
- AAD Connect Sync must include the device objects *in scope* for synchronization with Azure Active Directory (when needed for join)
- AAD Connect rules for sync [must be modified for Server 2012 R2](/microsoft-365/security/defender-endpoint/troubleshoot-security-config-mgt#instructions-for-applying-computer-join-rule-in-aad-connect) (when support for Server 2012 R2 is needed)
- All devices must register in the Azure Active Directory of the tenant that hosts Microsoft Defender for Endpoint. Cross-tenant scenarios are not supported. 

### Connectivity requirements

Devices must have access to the following endpoints:

- `enterpriseregistration.windows.net` - For Azure AD registration.
- `login.microsoftonline.com` - For Azure AD registration.
- `*.dm.microsoft.com` - The use of a wildcard supports the cloud-service endpoints that are used for enrollment, check-in, and reporting, and which can change as the service scales.

> [!Note]
> If your organization users Secure Socket Layer (SSL) inspection, the endpoints should be excluded from inspection.

### Supported platforms

Policies for Microsoft Defender for Endpoint security management are supported for the following device platforms:

- Windows 10 Professional/Enterprise (with [KB5006738](https://support.microsoft.com/topic/october-26-2021-kb5006738-os-builds-19041-1320-19042-1320-and-19043-1320-preview-ccbce6bf-ae00-4e66-9789-ce8e7ea35541))
- Windows 11 Professional/Enterprise
- Windows Server 2012 R2 with [Microsoft Defender for Down-Level Devices](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-functionality-in-the-modern-unified-solution-for-windows-server-2012-r2-and-2016-preview)
- Windows Server 2016 with [Microsoft Defender for Down-Level Devices](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-functionality-in-the-modern-unified-solution-for-windows-server-2012-r2-and-2016-preview)
- Windows Server 2019 (with [KB5006744](https://support.microsoft.com/topic/october-19-2021-kb5006744-os-build-17763-2268-preview-e043a8a3-901b-4190-bb6b-f5a4137411c0))
- Windows Server 2022 (with [KB5006745](https://support.microsoft.com/topic/october-26-2021-kb5006745-os-build-20348-320-preview-8ff9319a-19e7-40c7-bbd1-cd70fcca066c))

Security management for Microsoft Defender for Endpoint will not work on non-persistent desktops, like Virtual Desktop Infrastructure (VDI) clients or Windows Virtual Desktops (WVD).


### Licensing and subscriptions

To use security management for Microsoft Defender for Endpoint, you need:

- A subscription that grants licenses for Microsoft Defender for Endpoint, like Microsoft 365, or a standalone license for only Microsoft Defender for Endpoint. A subscription that grants Microsoft Defender for Endpoint licenses also grants your tenant access to the Endpoint security node of the Microsoft Intune admin center.

  > [!NOTE]  
  > **Exception**: If you have access to Microsoft Defender for Endpoint *only* through Microsoft Defender for servers (part of Microsoft Defender for Cloud, formerly Azure Security Center), the Security Management for Microsoft Defender for Endpoint functionality is not available. You will need to have at least one Microsoft Defender for Endpoint (user) subscription license active.

The Endpoint security node is where you'll configure and deploy policies to manage Microsoft Defender for Endpoint for your devices and monitor device status.

For current information about options, see [Minimum requirements for Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/minimum-requirements?view=o365-worldwide&preserve-view=true).



## Architecture

The following diagram is a conceptual representation of the Microsoft Defender for Endpoint security configuration management solution.

:::image type="content" alt-text="Conceptual representation of the Microsoft Defender for Endpoint security configuration management solution" source="../security/defender-endpoint/images/mde-architecture.png":::

1. Devices onboard to Microsoft Defender for Endpoint.

2. A trust is established between each device and Azure AD. When a device has an existing trust, that is used. When devices haven't registered, a new trust is created.

3. Devices use their Azure AD Identity to communicate with Intune. This identity enables Microsoft Intune to distribute policies that are targeted to the devices when they check in.

4. Defender for Endpoint reports the status of the policy back to Intune.

## Which solution should I use?

Microsoft Intune includes several methods and policy types to manage the configuration of Defender for Endpoint on devices.

When your device protection needs extend beyond managing Defender for Endpoint, see [Device protection overview](/mem/intune/protect/device-protect) to learn about additional capabilities provided by Microsoft Intune to help protect devices, including *device compliance*, *managed apps*, *app protection policies*, and integration with third-party compliance and *mobile threat defense* partners.

The following table can help you understand which policies that can configure MDE settings are supported by devices that are managed by the different scenarios. When you deploy a policy that's supported for both *MDE security configuration* and *Microsoft Intune*, a single instance of that policy can be processed by devices that run Microsoft Defender for Endpoint only and devices that are managed by either Intune or Configuration Manager.

| Microsoft Intune  | Workload |Policy| MDE Security configuration  |  Microsoft Intune |
|----------------|----------------|-------------------|------------|
| Endpoint security    | Antivirus   |     Antivirus           | ![Supported](../media/green-check.png)  | ![Supported](../media/green-check.png)  |
|                      | Antivirus   |   Antivirus Exclusions   | ![Supported](../media/green-check.png)  | ![Supported](../media/green-check.png)  |
|                      | Antivirus   | Windows Security Experience |                        | ![Supported](../media/green-check.png)  |
|                      | Disk Encryption   |     All |      | ![Supported](../media/green-check.png)  |
|                      | Firewall   | Firewall              | ![Supported](../media/green-check.png) | ![Supported](../media/green-check.png)  |
|                      | Firewall | Firewall  Rules                | ![Supported](../media/green-check.png) | ![Supported](../media/green-check.png)  |
|                      | Endpoint detection and response   | Endpoint detection and response | ![Supported](../media/green-check.png) | ![Supported](../media/green-check.png)  |
|                      | Attack surface reduction    |   All |          | ![Supported](../media/green-check.png)  |
|                      | Account Protection       |    All |     | ![Supported](../media/green-check.png)  |
|                      | Device Compliance     |   All |  | ![Supported](../media/green-check.png)  |
|                      | Conditional Access    |   All |  | ![Supported](../media/green-check.png)  |
|                      | Security baselines      |  All |   | ![Supported](../media/green-check.png)  |

**Endpoint security policies** are discrete groups of settings intended for use by security admins who focus on protecting devices in your organization.

- **Antivirus** policies manage the security configurations found in Microsoft Defender for Endpoint. See  [antivirus](/mem/intune/protect/endpoint-security-antivirus-policy) policy for endpoint security.
- **Attack surface reduction** policies focus on minimizing the places where your organization is vulnerable to cyberthreats and attacks. For more information, see [Overview of attack surface reduction](/windows/security/threat-protection/microsoft-defender-atp/overview-attack-surface-reduction) in the Windows Threat protection documentation, and [attack surface reduction](/mem/intune/protect/endpoint-security-asr-policy) policy for endpoint security.
- **Endpoint detection and response** (EDR) policies manage the Defender for Endpoint capabilities that provide advanced attack detections that are near real-time and actionable. Based on EDR configurations, security analysts can prioritize alerts effectively, gain visibility into the full scope of a breach, and take response actions to remediate threats. See [endpoint detection and response](/mem/intune/protect/endpoint-security-edr-policy) policy for endpoint security.
- **Firewall** policies focus on the Defender firewall on your devices. See [firewall](/mem/intune/protect/endpoint-security-firewall-policy) policy for endpoint security.
- **Firewall Rules** configure granular rules for Firewalls, including specific ports, protocols, applications, and networks. See [firewall](/mem/intune/protect/endpoint-security-firewall-policy) policy for endpoint security.
- **Security baselines** include preconfigured security settings that define the Microsoft recommended security posture for different products like Defender for Endpoint, Edge, or Windows. The default recommendations are from the relevant product teams and enable you to quickly deploy that recommended secure configuration to devices. While settings are preconfigured in each baseline, you can create customized instances of them to establish your organization’s security expectations. See [security baselines](/mem/intune/protect/security-baselines) for Intune.

## Configure your tenant to support Microsoft Defender for Endpoint Security Configuration Management

To support Microsoft Defender for Endpoint security configuration management through the Microsoft Intune admin center, you must enable communication between them from within each console.

1. Sign in to [Microsoft 365 Defender portal](https://security.microsoft.com/) and go to **Settings** > **Endpoints** > **Configuration Management** > **Enforcement Scope** and enable the platforms for security settings management:

   :::image type="content" source="../media/security-settings-mgt.png" alt-text="Enable Microsoft Defender for Endpoint settings management in the Defender console.":::
    
1. Configure Pilot Mode and Configuration Manager authority settings to fit your organization needs.

1. Uncheck both **Windows Client devices** and **Windows Server devices** to be able to use Pilot Mode using tagging: 
 
   :::image type="content" source="../media/pilot-CMAuthority-mde-settings-management-defender.png" alt-text="Configure Pilot mode for Endpoint settings management in the Microsoft 365 Defender portal.":::
   
    > [!TIP]
    > Use pilot mode and the proper device tags to test and validate your rollout on a small number of devices. Without using pilot mode, any device that falls into the scope configured will automatically be enrolled.

1.  Make sure the relevant users have permissions to manage endpoint security settings in Microsoft Intune. If not already provided, request for your IT administrator to grant applicable users the Microsoft Intune's **Endpoint Security Manager** [built-in RBAC role](/mem/intune/fundamentals/role-based-access-control).

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

1. Select **Endpoint security** > **Microsoft Defender for Endpoint**, and set **Allow Microsoft Defender for Endpoint to enforce Endpoint Security Configurations** to **On**.

   :::image type="content" source="../media/enable-mde-settings-management-mem.png" alt-text="Enable Microsoft Defender for Endpoint settings management in the Microsoft Intune admin center.":::

   When you set this option to *On*, all devices in the platform scope in Microsoft Defender for Endpoint that aren't managed by Microsoft Intune will qualify to onboard to Microsoft Defender for Endpoint.

> [!TIP]
> Users that are delegated the ability to manage endpoint security settings may not have the ability to implement tenant-wide configurations in Intune.  Check with your Intune administrator for more information on roles and permissions in your organization.

## Onboard devices to Microsoft Defender for Endpoint

Microsoft Defender for Endpoint supports several options to onboard devices. For current guidance, see [Onboarding tools and methods for Windows devices](/microsoft-365/security/defender-endpoint/security-config-management) in the Defender for Endpoint documentation.



## Co-existence with Microsoft Endpoint Configuration Manager
In some environments it might be desired to use Security Management for Microsoft Defender for Endpoint with [Configuration Manager tenant attach](/mem/configmgr/tenant-attach/endpoint-security-get-started). If you use both, you’ll need to control policy through a single channel, as using more than one channel creates the opportunity for conflicts and undesired results.

To support this, configure the *Manage Security settings using Configuration Manager* toggle to *Off*.  Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com/) and go to **Settings** > **Endpoints** > **Configuration Management** > **Enforcement Scope**:

:::image type="content" source="../media/manage-security-settings-cfg-mgr.png" alt-text="Manage security settings using Configuration Manager setting.":::



## Create Azure AD Groups

After devices onboard to Defender for Endpoint, you'll need to create device groups to support deployment of policy for Microsoft Defender for Endpoint.

To identify devices that have enrolled with Microsoft Defender for Endpoint but aren't managed by Intune or Configuration Manager:

1. Sign in to [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Go to **Devices** > **All devices**, and then select the column **Managed by** to sort the view of devices.

   Devices that onboard to Microsoft Defender for Endpoint and have registered but aren't managed by Intune display **Microsoft Defender for Endpoint** in the *Managed by* column. These are the devices that can receive policy for security management for Microsoft Defender for Endpoint.

   You'll also find two labels for devices that are using security management for Microsoft Defender for Endpoint:

   - **MDEJoined** - Added to devices that are joined to the directory as part of this scenario.
   - **MDEManaged** - Added to devices that are actively using the security management scenario. This tag is removed from the device if Defender for Endpoint stops managing the security configuration.

You can create groups for these devices [in Azure AD](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal) or [from within the Microsoft Intune admin center](/mem/intune/fundamentals/groups-add).

## Deploy policy

After creating one or more Azure AD groups that contain devices managed by Microsoft Defender for Endpoint, you can create and deploy the following policies for Security Management for Microsoft Defender for Endpoint to those groups:

- Antivirus
- Firewall
- Firewall Rules
- Endpoint Detection and Response

> [!TIP]
> Avoid deploying multiple policies that manage the same setting to a device.
>
> Microsoft Intune supports deploying multiple instances of each endpoint security policy type to the same device, with each policy instance being received by the device separately. Therefore, a device might receive separate configurations for the same setting from different policies, which results in a conflict. Some settings (like Antivirus Exclusions) will merge on the client and apply successfully.

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Go to **Endpoint security** and then select the type of policy you want to configure, either Antivirus or Firewall, and then select **Create Policy**.

3. Enter the following properties or the policy type you selected:

    - For Antivirus policy, select:
     - Platform: **Windows 10, Windows 11, and Windows Server**
     - Profile: **Microsoft Defender Antivirus**
   - For Firewall policy, select:
     - Platform: **Windows 10, Windows 11, and Windows Server**
     - Profile: **Microsoft Defender Firewall**
   - For Firewall Rules policy, select:
     - Platform: **Windows 10, Windows 11, and Windows Server**
     - Profile: **Microsoft Defender Firewall Rules**
   - For Endpoint Detection and Response policy, select:
     - Platform: **Windows 10, Windows 11, and Windows Server**
     - Profile: **Endpoint detection and response**

   >[!Note]
   > These profiles apply to both devices communicating through Mobile Device Management (MDM) with Microsoft Intune as well as devices that are communicating using the Microsoft Defender for Endpoint client.
   >
   > Ensure you review your targeting and groups as necessary.

4. Select **Create**.

5. On the **Basics** page, enter a name and description for the profile, then choose **Next**.

6. On the **Configuration settings** page, select the settings you want to manage with this profile. To learn more about a setting, expand its information dialog and select the *Learn more* link to view the CSP information for the setting in the on-line documentation.

   When your done configuring settings, select **Next**.

7. On the **Assignments** page, select the Azure AD groups that will receive this profile. For more information on assigning profiles, see [Assign user and device profiles](/mem/intune/configuration/device-profile-assign).

   Select **Next** to continue.

   > [!TIP]
   >
   > - Assignment filters are not supported for devices leveraging the Security Management for Microsoft Defender for Endpoint feature.
   > - Only *Device Objects* are applicable for Microsoft Defender for Endpoint management. Targeting users is not supported.
   > - Policies configured will apply to both Microsoft Intune and Microsoft Defender for Endpoint clients

8. Complete the policy creation process and then on the **Review + create** page, select **Create**. The new profile is displayed in the list when you select the policy type for the profile you created.

9. Wait for the policy to be assigned and view a success indication that policy was applied.

10. You can validate that settings have applied locally on the client by using the [Get-MpPreference](/powershell/module/defender/get-mppreference#examples) command utility.
