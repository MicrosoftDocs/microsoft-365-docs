--- 
title: include file
description: include file
author: mjcaparas
ms.service: microsoft-365-enterprise
ms.author: macapara
---



## Prerequisites

Review the following sections for requirements for the Security Management for Microsoft Defender for Endpoint Scenario:

### Environment

When a device onboards to Microsoft Defender for Endpoint:

- The device is surveyed for an existing Endpoint Manager presence, either Configuration Manager or Intune
- Devices without an Endpoint Manager presence enable the Security Management feature
- A trust is created with Azure Active Directory if one doesn't already exist
- Azure Active Directory trust is used to communicate with Endpoint Manager (Intune) and retrieve policies
- Policy retrieve from Endpoint Manager is enforced on the device by Microsoft Defender for Endpoint

### Active Directory Requirements

When a device that is domain joined creates a trust with Azure Active Directory, this scenario is referred to as a *Hybrid Azure Active Directory Join* scenario. The Security Management for Microsoft Defender for Endpoint fully supports this scenario with the following requirements:

- Azure Active Directory Connect (AAD Connect) must be synchronized to the tenant that is used from Microsoft Defender for Endpoint
- Hybrid Azure Active Directory Join must be configured in your environment (either through Federation or AAD Connect Sync)
- AAD Connect Sync must include the device objects *in scope* for synchronization with Azure Active Directory (when needed for join)
- AAD Connect rules for sync must be modified for Server 2012 R2 (when support for Server 2012 R2 is needed)
- All devices must register in the Azure Active Directory of the tenant that hosts Microsoft Defender for Endpoint. Cross-tenant scenarios are not supported. 

### Connectivity Requirements

Devices must have access to the following endpoints:

- `enterpriseregistration.windows.net` - For Azure AD registration.
- `login.microsoftonline.com` - For Azure AD registration.
- `*.dm.microsoft.com` - The use of a wildcard supports the cloud-service endpoints that are used for enrollment, check-in, and reporting, and which can change as the service scales.

### Supported platforms

Policies for Microsoft Defender for Endpoint security management are supported for the following device platforms:

- Windows 10 Professional/Enterprise (with [KB5006738](https://support.microsoft.com/topic/october-26-2021-kb5006738-os-builds-19041-1320-19042-1320-and-19043-1320-preview-ccbce6bf-ae00-4e66-9789-ce8e7ea35541))
- Windows Server 2012 R2 with [Microsoft Defender for Down-Level Devices](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-functionality-in-the-modern-unified-solution-for-windows-server-2012-r2-and-2016-preview)
- Windows Server 2016 with [Microsoft Defender for Down-Level Devices](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-functionality-in-the-modern-unified-solution-for-windows-server-2012-r2-and-2016-preview)
- Windows Server 2019 (with [KB5006744](https://support.microsoft.com/topic/october-19-2021-kb5006744-os-build-17763-2268-preview-e043a8a3-901b-4190-bb6b-f5a4137411c0))
- Windows Server 2022


### Licensing and subscriptions

To use security management for Microsoft Defender for Endpoint, you need:

- A subscription that grants licenses for Microsoft Defender for Endpoint, like Microsoft 365, or a standalone license for only Microsoft Defender for Endpoint. For current information about options, see [Minimum requirements for Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/minimum-requirements).

  *Any subscription* that grants Microsoft Defender for Endpoint licenses also grants your tenant access to the Endpoint security node of the Microsoft Endpoint Manager admin center. The Endpoint security node is where you'll configure and deploy policies to manage Microsoft Defender for Endpoint for your devices and monitor device status.

## Architecture

The following diagram is a conceptual representation of the Microsoft Defender for Endpoint security configuration management solution.


:::image type="content" alt-text="Conceptual representation of the Microsoft Defender for Endpoint security configuration management solution" source="../security/defender-endpoint/images/mde-architecture.png":::


1. Devices onboard to Microsoft Defender for Endpoint.

2. A trust is established between each device and Azure AD. When a device has an existing trust, that is used. When devices haven't registered, a new trust is created.


3. Devices use their Azure AD Identity to communicate with Endpoint Manager. This identity enables Microsoft Endpoint Manager to distribute policies that are targeted to the devices when they check in.

4. Defender for Endpoint reports the status of the policy back to Endpoint Manager.

## Configure your tenant to support Microsoft Defender for Endpoint Security Configuration Management

To support Microsoft Defender for Endpoint security configuration management through the Microsoft Endpoint Manager admin center, you must enable communication between them from within each console.

1. Sign in to [Microsoft 365 Defender portal](https://security.microsoft.com/) and go to **Settings** > **Endpoints** > **Configuration Management** > **Enforcement Scope** and enable the platforms for security settings management:

   :::image type="content" source="../media/enable-mde-settings-management-defender.png" alt-text="Enable Microsoft Defender for Endpoint settings management in the Microsoft 365 Defender portal.":::

2. Make sure the relevant users have permissions to manage endpoint security settings in Microsoft Endpoint Manager or grant those permissions by configuring a role in the Microsoft 365 Defender portal. Go to **Settings** > **Roles** > **Add item**:

   :::image type="content" source="../media/add-role-in-mde.png" alt-text="Create a new role in the Microsoft 365 Defender portal.":::

   > [!TIP]
   > You can modify existing roles and add the necessary permissions versus creating additional roles in Microsoft Defender for Endpoint

3. When configuring the role, add users and be sure to select **Manage endpoint security settings in Microsoft Endpoint Manager**:

   :::image type="content" source="../media/add-role.png" alt-text="Grant users permissions to manage settings.":::

4. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

5. Select **Endpoint security** > **Microsoft Defender for Endpoint**, and set **Allow Microsoft Defender for Endpoint to enforce Endpoint Security Configurations (Preview)** to **On**.

   :::image type="content" source="../media/enable-mde-settings-management-mem.png" alt-text="Enable Microsoft Defender for Endpoint settings management in the Microsoft Endpoint Manager admin center.":::

   When you set this option to *On*, all devices in the platform scope in Microsoft Defender for Endpoint that aren't managed by Microsoft Endpoint Manager will qualify to onboard to Microsoft Defender for Endpoint.

## Onboard devices to Microsoft Defender for Endpoint

Microsoft Defender for Endpoint supports several options to onboard devices. For current guidance, see [Onboarding tools and methods for Windows devices](/microsoft-365/security/defender-endpoint/security-config-management) in the Defender for Endpoint documentation.

> [!IMPORTANT]
> After a device onboards with Microsoft Defender for Endpoint, it must and be tagged with **MDE-Management** before it can enroll with Security Management for Microsoft Defender for Endpoint. For more information on device tagging in MDE, see [*Create and manage device tags*](/microsoft-365/security/defender-endpoint/machine-tag).

Devices that you manage with Intune or Configuration Manager are not supported for this scenario.

## Create Azure AD Groups

After devices onboard to Defender for Endpoint, you'll need to create device groups to support deployment of policy for Microsoft Defender for Endpoint.

To identify devices that have enrolled with Microsoft Defender for Endpoint but aren't managed by Intune or Configuration Manager:

1. Sign in to [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Go to **Devices** > **All devices**, and then select the column **Managed by** to sort the view of devices.

   Devices that onboard to Microsoft Defender for Endpoint and have registered but aren't managed by Intune or Configuration Manager display **Microsoft Defender for Endpoint** in the *Managed by* column. These are the devices that can receive policy for security management for Microsoft Defender for Endpoint.

You can create groups for these devices [in Azure AD](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal) or [from within the Microsoft Endpoint Manager admin center](/mem/intune/fundamentals/groups-add).

## Deploy policy

After creating one or more Azure AD groups that contain devices managed by Microsoft Defender for Endpoint, you can create and deploy the following policies for Security Management for Microsoft Defender for Endpoint to those groups:

- Antivirus
- Firewall
- Firewall Rules
- Endpoint Detection and Response

> [!TIP]
> Avoid deploying multiple policies that manage the same setting to a device.
>
> Microsoft Endpoint Manager supports deploying multiple instances of each endpoint security policy type to the same device, with each policy instance being received by the device separately. Therefore, a device might receive separate configurations for the same setting from different policies, which results in a conflict. Some settings (like Antivirus Exclusions) will merge on the client and apply successfully.

1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Go to **Endpoint security** and then select the type of policy you want to configure, either Antivirus or Firewall, and then select **Create Policy**.

3. Enter the following properties or the policy type you selected:

   - For Antivirus policy, select:
     - Platform: **Windows 10, Windows 11, and Windows Server (Preview)**
     - Profile: **Microsoft Defender Antivirus (Preview)**

   - For Firewall policy, select:
     - Platform: **Windows 10, Windows 11, and Windows Server (Preview)**
     - Profile: **Microsoft Defender Firewall (Preview)**

   - For Firewall Rules policy, select:
     - Platform: **Windows 10, Windows 11, and Windows Server (Preview)**
     - Profile: **Microsoft Defender Firewall Rules (Preview)**

   - For Endpoint Detection and Response policy, select:
     - Platform: **Windows 10, Windows 11, and Windows Server (Preview)**
     - Profile: **Endpoint detection and response (Preview)**

4. Select **Create**.

5. On the **Basics** page, enter a name and description for the profile, then choose **Next**.

6. On the **Configuration settings** page, select the settings you want to manage with this profile. To learn more about a setting, expand its information dialog and select the *Learn more* link to view the CSP information for the setting in the on-line documentation.

   When your done configuring settings, select **Next**.

7. On the **Assignments** page, select the Azure AD groups that will receive this profile. For more information on assigning profiles, see [Assign user and device profiles](/mem/intune/configuration/device-profile-assign).

   Select **Next** to continue.

   > [!TIP]
   >
   > - Assignment filters are not supported for Security Configuration Management profiles.
   > - Only *Device Objects* are applicable for Microsoft Defender for Endpoint management. User targeting is not supported.
   > - Policies configured will apply to both Microsoft Intune and Microsoft Defender for Endpoint clients

8. Complete the policy creation process and then on the **Review + create** page, select **Create**. The new profile is displayed in the list when you select the policy type for the profile you created.

9. Wait for the policy to be assigned and view a success indication that policy was applied.

10. You can validate that settings are applied locally on the client by using the [Get-MpPreference](/powershell/module/defender/get-mppreference#examples) command utility.
