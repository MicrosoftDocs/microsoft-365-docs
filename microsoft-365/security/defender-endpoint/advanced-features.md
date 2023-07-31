---
title: Configure advanced features in Microsoft Defender for Endpoint
description: Turn on advanced features such as block file in Microsoft Defender for Endpoint.
ms.service: microsoft-365-security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 07/11/2023
---

# Configure advanced features in Defender for Endpoint

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-advancedfeats-abovefoldlink)

Depending on the Microsoft security products that you use, some advanced features might be available for you to integrate Defender for Endpoint with.

## Enable advanced features

1. Log in to [Microsoft 365 Defender](https://go.microsoft.com/fwlink/p/?linkid=2077139) using an account with the Security administrator or Global administrator role assigned.

2. In the navigation pane, select **Settings** \> **Endpoints** \> **Advanced features**.

3. Select the advanced feature you want to configure and toggle the setting between **On** and **Off**.

4. Select **Save preferences**.

Use the following advanced features to get better protected from potentially malicious files and gain better insight during security investigations.

## Live response

> [!NOTE]
> Live response requires **Automated investigation** to be turned on before you can enable it in the advanced settings section in the Microsoft Defender for Endpoint portal.

Turn on this feature so that users with the appropriate permissions can start a live response session on devices.

For more information about role assignments, see [Create and manage roles](user-roles.md).

## Live response for servers

Turn on this feature so that users with the appropriate permissions can start a live response session on servers.

For more information about role assignments, see [Create and manage roles](user-roles.md).

## Live response unsigned script execution

Enabling this feature allows you to run unsigned scripts in a live response session.

## Always remediate PUA

Potentially unwanted applications (PUA) are a category of software that can cause your machine to run slowly, display unexpected ads, or at worst, install other software, which might be unexpected or unwanted.

Turn on this feature so that potentially unwanted applications (PUA) are remediated on all devices in your tenant even if PUA protection isn't configured on the devices. This activation of the feature helps to protect users from inadvertently installing unwanted applications on their device. When turned off, remediation is dependent on the device configuration.

## Restrict correlation to within scoped device groups

This configuration can be used for scenarios where local SOC operations would like to limit alert correlations only to device groups that they can access. By turning on this setting, an incident composed of alerts that cross-device groups will no longer be considered a single incident. The local SOC can then take action on the incident because they have access to one of the device groups involved. However, global SOC will see several different incidents by device group instead of one incident. We don't recommend turning on this setting unless doing so outweighs the benefits of incident correlation across the entire organization.

> [!NOTE]
> - Changing this setting impacts future alert correlations only.
>
> - Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

## Enable EDR in block mode

Endpoint detection and response (EDR) in block mode provides protection from malicious artifacts, even when Microsoft Defender Antivirus is running in passive mode. When turned on, EDR in block mode blocks malicious artifacts or behaviors that are detected on a device. EDR in block mode works behind the scenes to remediate malicious artifacts that are detected post breach.

## Autoresolve remediated alerts

For tenants created on or after Windows 10, version 1809, the automated investigation, and remediation capability is configured by default to resolve alerts where the automated analysis result status is "No threats found" or "Remediated". If you don't want to have alerts auto resolved, you'll need to manually turn off the feature.

> [!TIP]
> For tenants created prior to that version, you'll need to manually turn this feature on from the [Advanced features](https://security.microsoft.com//preferences2/integration) page.

> [!NOTE]
>
> - The result of the auto-resolve action may influence the Device risk level calculation which is based on the active alerts found on a device.
> - If a security operations analyst manually sets the status of an alert to "In progress" or "Resolved" the auto-resolve capability will not overwrite it.

## Allow or block file

Blocking is only available if your organization fulfills these requirements:

- Uses Microsoft Defender Antivirus as the active antimalware solution and,
- The cloud-based protection feature is enabled

This feature enables you to block potentially malicious files in your network. Blocking a file will prevent it from being read, written, or executed on devices in your organization.

To turn **Allow or block** files on:

1. In the navigation pane, select **Settings** \> **Endpoints** \> **General** \> **Advanced features** \> **Allow or block file**.

1. Toggle the setting between **On** and **Off**.
 
    :::image type="content" source="../../media/alloworblockfile.png" alt-text="The Endpoints screen" lightbox="../../media/alloworblockfile.png":::

1. Select **Save preferences** at the bottom of the page.

After turning on this feature, you can [block files](respond-file-alerts.md#allow-or-block-file) via the **Add Indicator** tab on a file's profile page.

## Hide potential duplicate device records

By enabling this feature, you can ensure that you're seeing the most accurate information about your devices by hiding potential duplicate device records. There are different reasons duplicate device records might occur, for example, the device discovery capability in Microsoft Defender for Endpoint might scan your network and discover a device that's already onboarded or has recently been offboarded.

This feature will identify potential duplicate devices based on their hostname and last seen time. The duplicate devices will be hidden from multiple experiences in the portal, such as, the Device Inventory, Microsoft Defender Vulnerability Management pages, and Public APIs for machine data, leaving the most accurate device record visible. However, the duplicates will still be visible in global search, advanced hunting, alerts, and incidents pages.

This setting is turned on by default and is applied tenant wide. If you don't want to hide potential duplicate device records, you'll need to manually turn off the feature.

## Custom network indicators

Turning on this feature allows you to create indicators for IP addresses, domains, or URLs, which determine whether they'll be allowed or blocked based on your custom indicator list.

To use this feature, devices must be running Windows 10 version 1709 or later, or Windows 11. They should also have network protection in block mode and version 4.18.1906.3 or later of the antimalware platform [see KB 4052623](https://go.microsoft.com/fwlink/?linkid=2099834).

For more information, see [Manage indicators](manage-indicators.md).

> [!NOTE]
> Network protection leverages reputation services that process requests in locations that might be outside of the location you've selected for your Defender for Endpoint data.

## Tamper protection

During some kinds of cyber attacks, bad actors try to disable security features, such as antivirus protection, on your machines. Bad actors like to disable your security features to get easier access to your data, to install malware, or to otherwise exploit your data, identity, and devices. Tamper protection essentially locks Microsoft Defender Antivirus and prevents your security settings from being changed through apps and methods.

For more information, including how to configure tamper protection, see [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md).

## Show user details

Turn on this feature so that you can see user details stored in Azure Active Directory. Details include a user's picture, name, title, and department information when investigating user account entities. You can find user account information in the following views:

- Alert queue
- Device details page

For more information, see [Investigate a user account](investigate-user.md).

## Skype for Business integration

Enabling the Skype for Business integration gives you the ability to communicate with users using Skype for Business, email, or phone. This activation can be handy when you need to communicate with the user and mitigate risks.

> [!NOTE]
> When a device is being isolated from the network, there's a pop-up where you can choose to enable Outlook and Skype communications which allows communications to the user while they are disconnected from the network. This setting applies to Skype and Outlook communication when devices are in isolation mode.

## Office 365 Threat Intelligence connection

> [!IMPORTANT]
> This setting was used when Microsoft Defender for Office 365 and Microsoft Defender for Endpoint were in different portals previously. After the convergence of security experiences into a unified portal that is now called Microsoft 365 Defender, these settings are irrelevant and don't have any functionality associated with them. You can safely ignore the status of the control until it is removed from the portal.

This feature is only available if you have an active subscription for Office 365 E5 or the Threat Intelligence add-on. For more information, see the [Office 365 E5 product page](https://www.microsoft.com/en-us/microsoft-365/enterprise/office-365-e5?activetab=pivot:overviewtab).

This feature enables you to incorporate data from Microsoft Defender for Office 365 into Microsoft 365 Defender to conduct a comprehensive security investigation across Office 365 mailboxes and Windows devices.

> [!NOTE]
> You'll need to have the appropriate license to enable this feature.

To receive contextual device integration in Office 365 Threat Intelligence, you'll need to enable the Defender for Endpoint settings in the Security & Compliance dashboard. For more information, see [Threat investigation and response](/microsoft-365/security/office-365-security/office-365-ti).

## Endpoint Attack Notifications

[Endpoint Attack Notifications](/security/defender-endpoint/endpoint-attack-notifications) enable Microsoft to actively hunt for critical threats to be prioritized based on urgency and impact over your endpoint data. 

For proactive hunting across the full scope of Microsoft 365 Defender, including threats that span email, collaboration, identity, cloud applications, and endpoints, [learn more](https://aka.ms/DefenderExpertsForHuntingGetStarted) about Microsoft Defender Experts.

## Microsoft Defender for Cloud Apps

Enabling this setting forwards Defender for Endpoint signals to Microsoft Defender for Cloud Apps to provide deeper visibility into cloud application usage. Forwarded data is stored and processed in the same location as your Defender for Cloud Apps data.

> [!NOTE]
> This feature will be available with an E5 license for [Enterprise Mobility + Security](https://www.microsoft.com/cloud-platform/enterprise-mobility-security) on devices running Windows 10, version 1709 (OS Build 16299.1085 with [KB4493441](https://support.microsoft.com/help/4493441)), Windows 10, version 1803 (OS Build 17134.704 with [KB4493464](https://support.microsoft.com/help/4493464)), Windows 10, version 1809 (OS Build 17763.379 with [KB4489899](https://support.microsoft.com/help/4489899)), later Windows 10 versions, or Windows 11.

### Enable the Microsoft Defender for Endpoint integration from the Microsoft Defender for Identity portal

To receive contextual device integration in Microsoft Defender for Identity, you'll also need to enable the feature in the Microsoft Defender for Identity portal.

1. Sign in to the [Microsoft Defender for Identity portal](https://portal.atp.azure.com/) with a Global Administrator or Security Administrator role.

2. Select **Create your instance**.

3. Toggle the Integration setting to **On** and select **Save**.

After completing the integration steps on both portals, you'll be able to see relevant alerts in the device details or user details page.

## Web content filtering

Block access to websites containing unwanted content and track web activity across all domains. To specify the web content categories you want to block, create a [web content filtering policy](https://security.microsoft.com/preferences2/web_content_filtering_policy). Ensure you've network protection in block mode when deploying the [Microsoft Defender for Endpoint security baseline](https://devicemanagement.microsoft.com/#blade/Microsoft_Intune_Workflows/SecurityBaselineSummaryMenu/overview/templateType/2).

## Share endpoint alerts with Microsoft Purview compliance portal

Forwards endpoint security alerts and their triage status to Microsoft Purview compliance portal, allowing you to enhance insider risk management policies with alerts and remediate internal risks before they cause harm. Forwarded data is processed and stored in the same location as your Office 365 data.

After configuring the [Security policy violation indicators](/microsoft-365/compliance/insider-risk-management-settings#indicators) in the insider risk management settings, Defender for Endpoint alerts will be shared with insider risk management for applicable users.

## Authenticated telemetry

You can **Turn on** Authenticated telemetry to prevent spoofing telemetry into your dashboard.

## Microsoft Intune connection

Defender for Endpoint can be integrated with [Microsoft Intune](/intune/what-is-intune) to [enable device risk-based conditional access](/intune/advanced-threat-protection#enable-windows-defender-atp-in-intune). When you [turn on this feature](configure-conditional-access.md), you'll be able to share Defender for Endpoint device information with Intune, enhancing policy enforcement.

> [!IMPORTANT]
> You'll need to enable the integration on both Intune and Defender for Endpoint to use this feature. For more information on specific steps, see [Configure Conditional Access in Defender for Endpoint](configure-conditional-access.md).

This feature is only available if you've the following prerequisites:

- A licensed tenant for Enterprise Mobility + Security E3, and Windows E5 (or Microsoft 365 Enterprise E5)
- An active Microsoft Intune environment, with Intune-managed Windows devices [Azure AD-joined](/azure/active-directory/devices/concept-azure-ad-join/).

### Conditional Access policy

When you enable Intune integration, Intune will automatically create a classic Conditional Access (CA) policy. This classic CA policy is a prerequisite for setting up status reports to Intune. It shouldn't be deleted.

> [!NOTE]
> The classic CA policy created by Intune is distinct from modern [Conditional Access policies](/azure/active-directory/conditional-access/overview/), which are used for configuring endpoints.

## Device discovery

Helps you find unmanaged devices connected to your corporate network without the need for extra appliances or cumbersome process changes. Using onboarded devices, you can find unmanaged devices in your network and assess vulnerabilities and risks. For more information, see [Device discovery](device-discovery.md).

> [!NOTE]
> You can always apply filters to exclude unmanaged devices from the device inventory list. You can also use the onboarding status column on API queries to filter out unmanaged devices.

## Preview features

Learn about new features in the Defender for Endpoint preview release. Try upcoming features by turning on the preview experience.

You'll have access to upcoming features, which you can provide feedback on to help improve the overall experience before features are generally available.

## Download quarantined files

Backup quarantined files in a secure and compliant location so they can be downloaded directly from quarantine. The **Download file** button will always be available in the file page. This setting is turned on by default. [Learn more about requirements](respond-file-alerts.md#download-quarantined-files)

## Related topics

- [Update data retention settings](data-retention-settings.md)
- [Configure alert notifications](configure-email-notifications.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
