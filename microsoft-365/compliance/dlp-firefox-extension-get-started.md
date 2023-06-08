---
title: "Get started with the Microsoft Purview extension for Firefox"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 09/09/2019
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- tier2
- purview-compliance
- m365solution-mip
- m365initiative-compliance
ms.custom: admindeeplinkCOMPLIANCE
search.appverid:
- MET150
description: "Prepare for and deploy the Microsoft Purview extension for Firefox."
---

# Get started with the Microsoft Purview extension for Firefox

Use these procedures to roll out the Microsoft Purview extension for Firefox.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

To use the Microsoft Purview extension for Firefox, the device must be onboarded into endpoint DLP. Review these articles if you are new to DLP or endpoint DLP

- [Learn about Microsoft Purview extension for Firefox](dlp-firefox-extension-learn.md)
- [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
- [Learn about endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)
- [Onboarding tools and methods for Windows 10 devices](device-onboarding-overview.md)
- [Configure device proxy and internet connection settings for Information Protection](device-onboarding-configure-proxy.md#configure-device-proxy-and-internet-connection-settings-for-information-protection)
- [Using Endpoint data loss prevention](endpoint-dlp-using.md)

### SKU/subscriptions licensing

Before you get started, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons. To access and use Endpoint DLP functionality, you must have one of these subscriptions or add-ons.

- Microsoft 365 E5
- Microsoft 365 A5 (EDU)
- Microsoft 365 E5 compliance
- Microsoft 365 A5 compliance
- Microsoft 365 E5 information protection and governance
- Microsoft 365 A5 information protection and governance

For detailed licensing guidance, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection).

- Your organization must be licensed for Endpoint DLP
- Your devices must be running Windows 10 x64 build 1809 or later.
- The device must have Antimalware Client Version is 4.18.2202.x or later. Check your current version by opening **Windows Security** app, select the **Settings** icon, and then select **About**.


### Permissions

Data from Endpoint DLP can be viewed in [Activity explorer](data-classification-activity-explorer.md). There are seven roles that grant permission to activity explorer, the account you use for accessing the data must be a member of any one of them.

- Global admin
- Compliance admin
- Security admin
- Compliance data admin
- Global reader
- Security reader
- Reports reader

#### Roles and Role Groups

There are roles and role groups that you can use to fine tune your access controls.

Here's a list of applicable roles. To learn more about them, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

- Information Protection Admin
- Information Protection Analyst
- Information Protection Investigator
- Information Protection Reader

Here's a list of applicable role groups. To learn more about these role groups, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

- Information Protection
- Information Protection Admins
- Information Protection Analysts
- Information Protection Investigators
- Information Protection Readers

### Overall installation workflow

Deploying the extension is a multi-phase process. You can choose to install on one machine at a time, or use Microsoft Intune or Group Policy for organization-wide deployments.

1. [Prepare your devices](#prepare-your-devices).
2. [Basic Setup Single Machine Selfhost](#basic-setup-single-machine-selfhost)
3. [Deploy using Microsoft Intune](#deploy-using-microsoft-intune)
4. [Deploy using Group Policy](#deploy-using-group-policy)
5. [Test the extension](#test-the-extension)
6. [Use the Alerts Management Dashboard to view Firefox DLP alerts](#use-the-alerts-management-dashboard-to-view-firefox-dlp-alerts)
7. [Viewing Firefox DLP data in activity explorer](#viewing-firefox-dlp-data-in-activity-explorer)

### Prepare infrastructure

If you are rolling out the extension to all your monitored Windows 10 devices, you should remove Mozilla Firefox from the unallowed app and unallowed browser lists. For more information, see [Unallowed browsers](dlp-configure-endpoint-settings.md#unallowed-browsers). If you are only rolling it out to a few devices, you can leave Firefox on the unallowed browser or unallowed app lists. The extension will bypass the restrictions of both lists for those computers where it is installed.

### Prepare your devices

1. Use the procedures in these topics to onboard your devices:
    1. [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)
    1. [Onboarding Windows 10 and Windows 11 devices](device-onboarding-overview.md)
    1. [Configure device proxy and internet connection settings for Information Protection](device-onboarding-configure-proxy.md#configure-device-proxy-and-internet-connection-settings-for-information-protection)

### Basic Setup Single Machine Selfhost

This is the recommended method.

1. Download the initial [XPI file](https://firefoxdlp.blob.core.windows.net/packages-prod/prod-1.1.0.210.xpi).

2. Locate the extension in your file explorer and drag the file into an open Mozilla Firefox window.

3. Confirm the installation.

### Deploy using Microsoft Intune

Use this setup method for organization-wide deployments.

#### Microsoft Intune Force Install Steps

Before adding the extension to the list of force-installed extensions, it is important to ingest the Firefox ADMX. Steps for this process in Microsoft Intune are documented below. Before beginning these steps, please ensure you have downloaded the latest Firefox ADMX from the [Firefox GitHub](https://github.com/mozilla/policy-templates/releases).

After ingesting the ADMX, the steps below can be followed to create a configuration profile for this extension.

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Navigate to Configuration Profiles.

3. Select **Create Profile**.

4. Select **Windows 10** as the platform.

5. Select **Custom** as profile type.

6. Select the **Settings** tab.

7. Select **Add**.

8. Enter the following policy information.

    OMA-URI: `./Device/Vendor/MSFT/Policy/Config/Firefox~Policy~firefox~Extensions/ExtensionSettings`<br/>
    Data type: `String`<br/>
    Value: `<enabled/><data id="ExtensionSettings" value='{ 
                "microsoft.defender.browser_extension.native_message_host@microsoft.com": { 
                    "installation_mode": "force_installed", 
                    "install_url": “https://firefoxdlp.blob.core.windows.net/packages-prod/prod-1.1.0.210.xpi”,
                    “updates_disabled”: false 
                } 
            }'/> `

9.  Note: It is critical that updates_disabled is set to false so that the extension can automatically update over time. 

10. Click create.

### Deploy using Group Policy

If you don't want to use Microsoft Intune, you can use group policies to deploy the extension across your organization.

#### Adding the Firefox extension to the ForceInstall List

1. In the Group Policy Management Editor, navigate to your OU.

2. Expand the following path **Computer/User configuration** > **Policies** > **Administrative templates** > **Classic administrative templates** > **Firefox** > **Extensions**. This path may vary depending on your configuration.

3. Select **Extensions to install**.

4. Right click and select **Edit**.

5. Select **Enabled**.

6. Select **Show**.

7. Under **Value**, add the following entry: `https://firefoxdlp.blob.core.windows.net/packages-prod/prod-1.1.0.210.xpi`

8. Select **OK** and then **Apply**.

### Test the extension

#### Upload to cloud service, or access by unallowed browsers Cloud Egress

1. Create or get a sensitive item and, try to upload a file to one of your organization’s restricted service domains. The sensitive data must match one of our built-in [Sensitive Info Types](sensitive-information-type-entity-definitions.md), or one of your organization’s sensitive information types. You should get a DLP toast notification on the device you are testing from that shows that this action is not allowed when the file is open.

#### Testing other DLP scenarios in Firefox

Now that you’ve removed Firefox from the disallowed browsers/apps list, you can test the scenarios below to confirm the behavior meets your organization’s requirements:

- Copy data from a sensitive item to another document using the Clipboard
  - To test, open a file that is protected against copy to clipboard actions in the Firefox browser and attempt to copy data from the file.
  - Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.
- Print a document
  - To test, open a file that is protected against print actions in the Firefox browser and attempt to print the file.
  - Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.
- Copy to USB Removeable Media
  - To test, try to save the file to a removeable media storage.
  - Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.
- Copy to Network Share
  - To test, try to save the file to a network share.
  - Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.

### Use the Alerts Management Dashboard to view Firefox DLP alerts

1. Open the **Data loss prevention** page in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a> and select **Alerts**.

2. Refer to the procedures in [How to configure and view alerts for your DLP policies](dlp-configure-view-alerts-policies.md) to view alerts for your Endpoint DLP policies.

### Viewing Firefox DLP data in activity explorer

1. Open the [Data classification page](https://compliance.microsoft.com/dataclassification?viewid=overview) for your domain in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a> and choose **Activity explorer**.

2. Refer to the procedures in [Get started with Activity explorer](data-classification-activity-explorer.md) to access and filter all the data for your Endpoint devices.

   > [!div class="mx-imgBorder"]
   > ![activity explorer filter for endpoint devices.](../media/endpoint-dlp-4-getting-started-activity-explorer.png)

### Known Issues and Limitations

1. Incognito mode is not supported and must be disabled.

## Next steps

Now that you have onboarded devices and can view the activity data in Activity explorer, you are ready to move on to your next step where you create DLP policies that protect your sensitive items.

- [Using Endpoint data loss prevention](endpoint-dlp-using.md)

## See also

- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Using Endpoint data loss prevention](endpoint-dlp-using.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](/windows/security/threat-protection/)
- [Onboarding tools and methods for Windows 10 machines](/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
- [Azure AD joined devices](/azure/active-directory/devices/concept-azure-ad-join)
- [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium)
