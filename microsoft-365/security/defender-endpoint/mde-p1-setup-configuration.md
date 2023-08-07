---
title: Set up and configure Microsoft Defender for Endpoint Plan 1
description: Learn how to set up and configure Defender for Endpoint Plan 1. Review the requirements, plan your rollout, and set up your environment. 
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.date: 06/19/2023
ms.reviewer: shlomiakirav
f1.keywords: NOCSH
ms.collection: 
- m365-security
- tier2
---

# Set up and configure Microsoft Defender for Endpoint Plan 1

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

This article describes how to set up and configure Defender for Endpoint Plan 1. Whether you have assistance or are doing it yourself, you can use this article as a guide throughout your deployment.  

## The setup and configuration process

:::image type="content" source="images/mde-p1-deploymentflow.png" alt-text="Setup and deployment flow for Microsoft Defender for Endpoint Plan 1" lightbox="images/mde-p1-deploymentflow.png":::

The general setup and configuration process for Defender for Endpoint Plan 1 is as follows: <br/><br/>


| Number  | Step  | Description  |
|:---------:|:---------|:---------|
| 1 | [Review the requirements](#review-the-requirements)  | Lists licensing, browser, operating system, and datacenter requirements   |
| 2 | [Plan your deployment](#plan-your-deployment) | Lists several deployment methods to consider and includes links to more resources to help you decide which method to use  |
| 3 | [Set up your tenant environment](#set-up-your-tenant-environment) | Lists tasks for setting up your tenant environment |
| 4 | [Assign roles and permissions](#assign-roles-and-permissions) | Lists roles and permissions to consider for your security team <br/><br/>**TIP**: As soon as roles and permissions are assigned, your security team can get started using the Microsoft 365 Defender portal. To learn more, see [Getting started](mde-plan1-getting-started.md). |
| 5 | [Onboard to Defender for Endpoint](#onboard-to-defender-for-endpoint) | Lists several methods by operating system to onboard to Defender for Endpoint Plan 1 and includes links to more detailed information for each method  |
| 6 | [Configure next-generation protection](#configure-next-generation-protection) | Describes how to configure your next-generation protection settings in Microsoft Intune  |
| 7 | [Configure your attack surface reduction capabilities](#configure-your-attack-surface-reduction-capabilities)        | Lists the types of attack surface reduction capabilities you can configure and includes procedures with links to more resources  |
 
## Review the requirements

The following table lists the basic requirements for Defender for Endpoint Plan 1:<br/><br/>

| Requirement | Description |
|:---|:---|
| Licensing requirements | Defender for Endpoint Plan 1 (standalone, or as part of Microsoft 365 E3 or A3) |
| Browser requirements | Microsoft Edge <br/> Internet Explorer version 11 <br/> Google Chrome |
| Operating systems | Windows 11, or Windows 10, version 1709, or later <br/>macOS (the three most recent releases are supported) <br/>iOS <br/>Android OS <br/><br/>Note that the standalone version of Defender for Endpoint Plan 1 does not include server licenses. To onboard servers, you'll require an additional license, such as Microsoft Defender for Servers Plan 1 or Plan 2 (as part of the [Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction)) offering. To learn more. see [Defender for Endpoint onboarding Windows Server](onboard-windows-server.md). |
| Datacenter | One of the following datacenter locations: <br/>- European Union <br/>- United Kingdom <br/>- United States |


## Plan your deployment

When you plan your deployment, you can choose from several different architectures and deployment methods. Every organization is unique, so you have several options to consider, as listed in the following table: <br/><br/>

| Method | Description |
|:---|:---|
| [Intune](/mem/intune/fundamentals/what-is-intune)  | Use Intune to manage endpoints in a cloud native environment |
| [Intune](/mem/intune/fundamentals/what-is-intune) and [Configuration Manager](/mem/configmgr/core/understand/introduction)  | Use Intune and Configuration Manager to manage endpoints and workloads that span an on-premises and cloud environment |
| [Configuration Manager](/mem/configmgr/core/understand/introduction) | Use Configuration Manager to protect on-premises endpoints with the cloud-based power of Defender for Endpoint |
| Local script downloaded from the Microsoft 365 Defender Portal | Use local scripts on endpoints to run a pilot or onboard just a few devices |

To learn more about your deployment options, see [Plan your Defender for Endpoint deployment](deployment-strategy.md). And, download the following poster: 

[:::image type="content" source="../../media/defender-endpoint/mde-deployment-strategy.png" alt-text="Deployment strategy poster thumbnail":::](https://download.microsoft.com/download/5/6/0/5609001f-b8ae-412f-89eb-643976f6b79c/mde-deployment-strategy.pdf)

**[Get the deployment poster](https://download.microsoft.com/download/5/6/0/5609001f-b8ae-412f-89eb-643976f6b79c/mde-deployment-strategy.pdf)**

> [!TIP]
> For more detailed information about planning your deployment, see [Plan your Microsoft Defender for Endpoint deployment](deployment-strategy.md).

## Set up your tenant environment

Setting up your tenant environment includes tasks, such as:

- Verifying your licenses
- Configuring your tenant
- Configuring your proxy settings (only if necessary)
- Making sure sensors are working correctly and reporting data to Defender for Endpoint 

These tasks are included in the setup phase for Defender for Endpoint. See [Set up Defender for Endpoint](production-deployment.md).

## Assign roles and permissions

In order to access the Microsoft 365 Defender portal, configure settings for Defender for Endpoint, or perform tasks, such as taking response actions on detected threats, appropriate permissions must be assigned. Defender for Endpoint uses [built-in roles within Azure Active Directory](/azure/active-directory/roles/permissions-reference). 

Microsoft recommends assigning users only the level of permission they need to perform their tasks. You can assign permissions by using basic permissions management, or by using [role-based access control](rbac.md) (RBAC). 

- With basic permissions management, global admins and security admins have full access, whereas security readers read-only access.
- With RBAC, you can set more granular permissions through more roles. For example, you can have security readers, security operators, security admins, endpoint administrators, and more.


The following table describes key roles to consider for Defender for Endpoint in your organization: <br/><br/>

| Role | Description |
|:---|:---|
| Global administrators (also referred to as global admins) <br/><br/> *As a best practice, limit the number of global administrators.* | Global admins can perform all kinds of tasks. The person who signed up your company for Microsoft 365 or for Microsoft Defender for Endpoint Plan 1 is a global administrator by default. <br/><br/> Global admins are able to access/change settings across all Microsoft 365 portals, such as: <br/>- The Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)) <br/>- Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) <br/>- Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com))  |
| Security administrators (also referred to as security admins) | Security admins can perform security operator tasks plus the following tasks: <br/>- Monitor security-related policies <br/>- Manage security threats and alerts <br/>- View reports |
| Security operator | Security operators can perform security reader tasks plus the following tasks: <br/>- View information about detected threats <br/>- Investigate and respond to detected threats  |
| Security reader | Security readers can perform the following tasks: <br/>- View security-related policies across Microsoft 365 services <br/>- View security threats and alerts <br/>- View reports  |


> [!TIP]
> To learn more about roles in Azure Active Directory, see [Assign administrator and non-administrator roles to users with Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal). And, more information about roles for Defender for Endpoint, see [Role-based access control](prepare-deployment.md#role-based-access-control).

## Onboard to Defender for Endpoint

When you're ready to onboard your organization's endpoints, you can choose from several methods, as listed in the following table: <br/><br/>

|Endpoint|Deployment tool|
|---|---|
|**Windows**|[Local script (up to 10 devices)](configure-endpoints-script.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [Microsoft Intune/ Mobile Device Manager](configure-endpoints-mdm.md) <br>   [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) <br> [VDI scripts](configure-endpoints-vdi.md)|
|**macOS**|[Local script](mac-install-manually.md) <br> [Microsoft Intune](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md)|
|**Android**|[Microsoft Intune](android-intune.md)|
|**iOS**|[Microsoft Intune](ios-install.md) <br> [Mobile Application Manager](ios-install-unmanaged.md) |


Then, proceed to configure your next-generation protection and attack surface reduction capabilities.

## Configure next-generation protection

We recommend using [Intune](/mem) to manage your organization's devices and security settings, as shown in the following image:
 
:::image type="content" source="../../media/mde-p1/endpoint-policies.png" alt-text="Endpoint security policies in the Intune portal" lightbox="../../media/mde-p1/endpoint-policies.png":::

To configure your next-generation protection in Intune, follow these steps:

1. Go to the Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

2. Select **Endpoint security** > **Antivirus**, and then select an existing policy. (If you don't have an existing policy, create a new policy.)

3. Set or change your antivirus configuration settings. Need help? Refer to the following resources: <br/>

   - [Settings for Windows 10 Microsoft Defender Antivirus policy in Microsoft Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-windows)
   - [Configure Defender for Endpoint on iOS features](ios-configure-features.md)

4. When you are finished specifying your settings, choose **Review + save**.

## Configure your attack surface reduction capabilities

Attack surface reduction is all about reducing the places and ways your organization is open to attack. Defender for Endpoint Plan 1 includes several features and capabilities to help you reduce your attack surfaces across your endpoints. These features and capabilities are listed in the following table: <br/><br/>

| Feature/capability | Description |
|:---|:---|
| [Attack surface reduction rules](#attack-surface-reduction-rules) | Configure attack surface reduction rules to constrain software-based risky behaviors and help keep your organization safe. Attack surface reduction rules target certain software behaviors, such as<br/>- Launching executable files and scripts that attempt to download or run files <br/>- Running obfuscated or otherwise suspicious scripts <br/>- Performing behaviors that apps don't usually initiate during normal day-to-day work <br/><br/>Such software behaviors are sometimes seen in legitimate applications. However, these behaviors are often considered risky because they are commonly abused by attackers through malware.  |
| [Ransomware mitigation](#ransomware-mitigation) | Set up ransomware mitigation by configuring controlled folder access, which helps protect your organization's valuable data from malicious apps and threats, such as ransomware. | 
| [Device control](#device-control) | Configure device control settings for your organization to allow or block removable devices (such as USB drives). | 
| [Network protection](#network-protection) | Set up network protection to prevent people in your organization from using applications that access dangerous domains or malicious content on the Internet. |
| [Web protection](#web-protection) | Set up web threat protection to protect your organization's devices from phishing sites, exploit sites, and other untrusted or low-reputation sites. Set up web content filtering to track and regulate access to websites based on their content categories (such as Leisure, High bandwidth, Adult content, or Legal liability). |
| [Network firewall](#network-firewall) | Configure your network firewall with rules that determine which network traffic is permitted to come into or go out from your organization's devices. |
| [Application control](#application-control)  | Configure application control rules if you want to allow only trusted applications and processes to run on your Windows devices.    |

### Attack surface reduction rules

Attack surface reduction rules are available on devices running Windows. We recommend using Intune, as shown in the following image:

:::image type="content" source="../../media/mde-p1/mem-asrpolicies.png" alt-text="Attack surface reduction rules in the Intune portal" lightbox="../../media/mde-p1/mem-asrpolicies.png":::

1. Go to the Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

2. Choose **Endpoint security** > **Attack surface reduction** > **+ Create policy**.

3. For **Platform**, select **Windows 10 and later**.

4. For **Profile**, select **Attack surface reduction rules**, and then choose **Create**.

5. On the **Basics** tab, specify a name and description for the policy, and then choose **Next**.

6. On the **Configuration settings** tab, expand **Attack Surface Reduction Rules**.

7. Specify settings for each rule, and then choose **Next**. (For more information about what each rule does, see [Attack surface reduction rules](attack-surface-reduction.md).) 

8. On the **Scope tags** tab, if your organization is using scope tags, choose **+ Select scope tags**, and then select the tags you want to use. Then, choose **Next**. 
   
   To learn more about scope tags, see [Use role-based access control (RBAC) and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).

9. On the **Assignments** tab, specify the users and groups to whom your policy should be applied, and then choose **Next**. (To learn more about assignments, see [Assign user and device profiles in Microsoft Intune](/mem/intune/configuration/device-profile-assign).)

10. On the **Review + create** tab, review the settings, and then choose **Create**.

> [!TIP]
> To learn more about attack surface reduction rules, see the following resources:
> - [Use attack surface reduction rules to prevent malware infection](attack-surface-reduction.md)
> - [View the list of attack surface reduction rules](attack-surface-reduction-rules-reference.md)
> - [Attack surface reduction rules deployment Step 3: Implement ASR rules](attack-surface-reduction-rules-deployment-implement.md)

### Ransomware mitigation

You get ransomware mitigation through [controlled folder access](controlled-folders.md#what-is-controlled-folder-access), which allows only trusted apps to access protected folders on your endpoints. 

We recommend using Intune to configure controlled folder access.

:::image type="content" source="../../media/mde-p1/mem-asrpolicies.png" alt-text="ASR policies in the Intune portal" lightbox="../../media/mde-p1/mem-asrpolicies.png":::

1. Go to the Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in. 

2. Select **Endpoint Security**, and then select **Attack Surface Reduction**.

3. Choose **+ Create Policy**. 

4. For **Platform**, select **Windows 10 and later**, and for **Profile**, select **Attack surface reduction rules**. Then choose **Create**. 

5. On the **Basics** tab, name the policy and add a description. Select **Next**. 

6. On the **Configuration settings** tab, in the **Attack Surface Reduction Rules** section, scroll down to the bottom. In the **Enable folder protection** drop-down, select **Enable**. You can optionally specify these other settings:

   - Next to **List of additional folders that need to be protected**, select the drop-down menu, and then add folders that need to be protected.
   - Next to **List of apps that have access to protected folders**, select the drop-down menu, and then add apps that should have access to protected folders.
   - Next to **Exclude files and paths from attack surface reduction rules**, select the drop-down menu, and then add the files and paths that need to be excluded from attack surface reduction rules.

   Then choose **Next**.

7. On the **Scope tags** tab, if your organization is using scope tags, choose **+ Select scope tags**, and then select the tags you want to use. Then, choose **Next**. 
   
   To learn more about scope tags, see [Use role-based access control (RBAC) and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).

8. On the **Assignments** tab, select **Add all users** and **+ Add all devices**, and then choose **Next**. (You can alternately specify specific groups of users or devices.)

9. On the **Review + create** tab, review the settings for your policy, and then choose **Create**. The policy will be applied to any endpoints that were onboarded to Defender for Endpoint shortly.

### Device control

You can configure Defender for Endpoint to block or allow removable devices and files on removable devices. We recommend using Intune to configure your device control settings.

:::image type="content" source="../../media/mde-p1/mem-admintemplates.png" alt-text="Intune administrative templates" lightbox="../../media/mde-p1/mem-admintemplates.png":::

1. Go to the Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in. 

2. Select **Devices** > **Configuration profiles** > **Create profile**.

3. For **Platform**, select **Windows 10 and later**, and for **Profile type**, select **Templates**. 

   Under **Template name**, select **Administrative Templates**, and then choose **Create**. 

4. On the **Basics** tab, name the policy and add a description. Select **Next**. 

5. On the **Configuration settings** tab, select **All Settings**. Then in the search box, type `Removable` to see all the settings that pertain to removable devices.

6. Select an item in the list, such as **All Removable Storage classes: Deny all access**, to open its flyout pane. The flyout for each setting explains what happens when it is enabled, disabled, or not configured. Select a setting, and then choose **OK**. 

7. Repeat step 6 for each setting that you want to configure. Then choose **Next**.

8. On the **Scope tags** tab, if your organization is using scope tags, choose **+ Select scope tags**, and then select the tags you want to use. Then, choose **Next**. 
   
   To learn more about scope tags, see [Use role-based access control (RBAC) and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).

9. On the **Assignments** tab, select **Add all users** and **+ Add all devices**, and then choose **Next**. (You can alternately specify specific groups of users or devices.)

10. On the **Review + create** tab, review the settings for your policy, and then choose **Create**. The policy will be applied to any endpoints that were onboarded to Defender for Endpoint shortly.

> [!TIP]
> For more information, see [How to control USB devices and other removable media using Microsoft Defender for Endpoint](control-usb-devices-using-intune.md).

### Network protection

With network protection, you can help protect your organization against dangerous domains that might host phishing scams, exploits, and other malicious content on the Internet. We recommend using Intune to turn on network protection.

:::image type="content" source="../../media/mde-p1/mem-endpointprotectionprofile.png" alt-text="Endpoint protection profile in the Intune portal" lightbox="../../media/mde-p1/mem-endpointprotectionprofile.png":::

1. Go to the Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in. 

2. Select **Devices** > **Configuration profiles** > **Create profile**.

3. For **Platform**, select **Windows 10 and later**, and for **Profile type**, select **Templates**. 

   Under **Template name**, select **Endpoint protection**, and then choose **Create**. 

4. On the **Basics** tab, name the policy and add a description. Select **Next**. 

5. On the **Configuration settings** tab, expand **Microsoft Defender Exploit Guard**, and then expand **Network filtering**.

   Set **Network protection** to **Enable**. (You can alternately choose **Audit** to see how network protection will work in your environment at first.)

   Then choose **Next**.

6. On the **Assignments** tab, select **Add all users** and **+ Add all devices**, and then choose **Next**. (You can alternately specify specific groups of users or devices.)

7. On the **Applicability Rules** tab, set up a rule. The profile you are configuring will be applied only to devices that meet the combined criteria you specify. 

   For example, you might choose to assign the policy to endpoints that are running a certain OS edition only.

   Then choose **Next**. 

8. On the **Review + create** tab, review the settings for your policy, and then choose **Create**. The policy will be applied to any endpoints that were onboarded to Defender for Endpoint shortly.

> [!TIP]
> You can use other methods, such as Windows PowerShell or Group Policy, to enable network protection. To learn more, see [Turn on network protection](enable-network-protection.md).

### Web protection

With web protection, you can protect your organization's devices from web threats and unwanted content. Your web protection includes [web threat protection](#configure-web-threat-protection) and [web content filtering](#configure-web-content-filtering). Configure both sets of capabilities. We recommend using Intune to configure your web protection settings.

#### Configure web threat protection

1. Go to the Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)), and sign in.
 
2. Choose **Endpoint security** > **Attack surface reduction**, and then choose **+ Create policy**.

3. Select a platform, such as **Windows 10 and later**, select the **Web protection** profile, and then choose **Create**. 

4. On the **Basics** tab, specify a name and description, and then choose **Next**.

5. On the **Configuration settings** tab, expand **Web Protection**, specify the settings in the following table, and then choose **Next**. <br/><br/>

   | Setting | Recommendation |
   |:---|:---|
   | **Enable network protection** | Set to **Enabled**. Prevents users from visiting malicious sites or domains. <br/><br/>Alternately, you can set network protection to **Audit mode** to see how it will work in your environment. In audit mode, network protection does not prevent users from visiting sites or domains, but it does track detections as events. |
   | **Require SmartScreen for Microsoft Edge Legacy** | Set to **Yes**. Helps protect users from potential phishing scams and malicious software. |
   | **Block malicious site access** | Set to **Yes**. Prevents users from bypassing warnings about potentially malicious sites. |
   | **Block unverified file download** | Set to **Yes**. Prevents users from bypassing the warnings and downloading unverified files. |

6. On the **Scope tags** tab, if your organization is using scope tags, choose **+ Select scope tags**, and then select the tags you want to use. Then, choose **Next**. 
   
   To learn more about scope tags, see [Use role-based access control (RBAC) and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).

7. On the **Assignments** tab, specify the users and devices to receive the web protection policy, and then choose **Next**.

8. On the **Review + create** tab, review your policy settings, and then choose **Create**.

> [!TIP]
> To learn more about web threat protection, see [Protect your organization against web threats](web-threat-protection.md).

#### Configure web content filtering

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)) and sign in.

2. Choose **Settings** > **Endpoints**.

3. Under **Rules**, choose **Web content filtering**, and then choose **+ Add policy**.

4. In the **Add policy** flyout, on the **General** tab, specify a name for your policy, and then choose **Next**.

5. On the **Blocked categories**, select one or more categories that you want to block, and then choose **Next**.

6. On the **Scope** tab, select the device groups you want to receive this policy, and then choose **Next**.

7. On the **Summary** tab, review your policy settings, and then choose **Save**.

> [!TIP]
> To learn more about configuring web content filtering, see [Web content filtering](web-content-filtering.md).

### Network firewall

Network firewall helps reduce the risk of network security threats. Your security team can set rules that determine which traffic is permitted to flow to or from your organization's devices. We recommend using Intune to configure your network firewall. 

:::image type="content" source="../../media/mde-p1/mem-firewallpolicy.png" alt-text="Firewall policy in the Intune portal" lightbox="../../media/mde-p1/mem-firewallpolicy.png":::

To configure basic firewall settings, follow these steps:

1. Go to the Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)), and sign in.

2. Choose **Endpoint security** > **Firewall**, and then choose **+ Create Policy**.

3. Select a platform, such as **Windows 10 and later**, select the **Microsoft Defender Firewall** profile, and then choose **Create**. 

4. On the **Basics** tab, specify a name and description, and then choose **Next**.

5. Expand **Microsoft Defender Firewall**, and then scroll down to the bottom of the list.

6. Set each of the following settings to **Yes**:

   - **Turn on Microsoft Defender Firewall for domain networks** 
   - **Turn on Microsoft Defender Firewall for private networks**
   - **Turn on Microsoft Defender Firewall for public networks**
   
   Review the list of settings under each of domain networks, private networks, and public networks. You can leave them set to **Not configured**, or change them to suit your organization's needs.

   Then choose **Next**.

7. On the **Scope tags** tab, if your organization is using scope tags, choose **+ Select scope tags**, and then select the tags you want to use. Then, choose **Next**. 
   
   To learn more about scope tags, see [Use role-based access control (RBAC) and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).

8. On the **Assignments** tab, select **Add all users** and **+ Add all devices**, and then choose **Next**. (You can alternately specify specific groups of users or devices.)

9. On the **Review + create** tab, review your policy settings, and then choose **Create**.

> [!TIP]
> Firewall settings are detailed and can seem complex. Refer to [Best practices for configuring Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/best-practices-configuring).

### Application control

Windows Defender Application Control (WDAC) helps protect your Windows endpoints by only allowing trusted applications and processes to run. Most organizations used a phased deployment of WDAC. That is, most organizations don't roll out WDAC across all Windows endpoints at first. In fact, depending on whether your organization's Windows endpoints are fully managed, lightly managed, or "Bring Your Own Device" endpoints, you might deploy WDAC on all or some endpoints.

To help with planning your WDAC deployment, see the following resources:

- [Application Control for Windows](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control)

- [Windows Defender Application Control policy design decisions](/windows/security/threat-protection/windows-defender-application-control/understand-windows-defender-application-control-policy-design-decisions)

- [Windows Defender Application Control deployment in different scenarios: types of devices](/windows/security/threat-protection/windows-defender-application-control/types-of-devices)

## Next steps

Now that you have gone through the setup and configuration process, your next step is to get started using Defender for Endpoint. 

- [Get started with Defender for Endpoint Plan 1](mde-plan1-getting-started.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
