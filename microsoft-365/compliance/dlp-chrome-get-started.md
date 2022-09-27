---
title: "Get started with the Microsoft Purview Extension"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- tier1
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
ms.custom: admindeeplinkCOMPLIANCE
search.appverid:
- MET150
description: "Prepare for and deploy the Microsoft Purview Extension."
---

# Get started with Microsoft Purview Extension

Use these procedures to roll out the Microsoft Purview Extension.

## Before you begin

To use Microsoft Purview Extension, the device must be onboarded into endpoint DLP. Review these articles if you are new to DLP or endpoint DLP

- [Learn about Microsoft Purview Extension](dlp-chrome-learn-about.md)
- [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md)
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

- Your org must be licensed for Endpoint DLP
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

#### Roles and Role Groups in preview

There are roles and role groups in preview that you can test out to fine tune your access controls.

Here's a list of applicable roles that are in preview. To learn more about them, see [Roles in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center)

- Information Protection Admin
- Information Protection Analyst
- Information Protection Investigator
- Information Protection Reader

Here's a list of applicable role groups that are in preview. To learn more about the, see [Role groups in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#role-groups-in-the-security--compliance-center)

- Information Protection
- Information Protection Admins
- Information Protection Analysts
- Information Protection Investigators
- Information Protection Readers

### Overall installation workflow

Deploying the extension is a multi-phase process. You can choose to install on one machine at a time, or use Microsoft Endpoint Manager or Group Policy for organization-wide deployments.

1. [Prepare your devices](#prepare-your-devices).
2. [Basic Setup Single Machine Selfhost](#basic-setup-single-machine-selfhost)
3. [Deploy using Microsoft Endpoint Manager](#deploy-using-microsoft-endpoint-manager)
4. [Deploy using Group Policy](#deploy-using-group-policy)
5. [Test the extension](#test-the-extension)
6. [Use the Alerts Management Dashboard to viewing Chrome DLP alerts](#use-the-alerts-management-dashboard-to-viewing-chrome-dlp-alerts)
7. [Viewing Chrome DLP data in activity explorer](#viewing-chrome-dlp-data-in-activity-explorer)

### Prepare infrastructure

If you are rolling out the extension to all your monitored Windows 10 devices, you should remove Google Chrome from the unallowed app and unallowed browser lists. For more information, see [Unallowed browsers](dlp-configure-endpoint-settings.md#unallowed-browsers). If you are only rolling it out to a few devices, you can leave Chrome on the unallowed browser or unallowed app lists. The extension will bypass the restrictions of both lists for those computers where it is installed.

### Prepare your devices

1. Use the procedures in these topics to onboard your devices:
    1. [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)
    1. [Onboarding Windows 10 and Windows 11 devices](device-onboarding-overview.md)
    1. [Configure device proxy and internet connection settings for Information Protection](device-onboarding-configure-proxy.md#configure-device-proxy-and-internet-connection-settings-for-information-protection)

### Basic Setup Single Machine Selfhost

This is the recommended method.

1. Navigate to [Microsoft Purview Extension - Chrome Web Store (google.com)](https://chrome.google.com/webstore/detail/microsoft-compliance-exte/echcggldkblhodogklpincgchnpgcdco).

2. Install the extension using the instructions on the Chrome Web Store page.

### Deploy using Microsoft Endpoint Manager

Use this setup method for organization-wide deployments.

#### Microsoft Endpoint Manager Force Install Steps

Before adding the extension to the list of force-installed extensions, it is important to ingest the Chrome ADMX. Steps for this process in Microsoft Endpoint Manager are documented by Google: [Manage Chrome Browser with Microsoft Intune - Google Chrome Enterprise Help](https://support.google.com/chrome/a/answer/9102677?hl=en#zippy=%2Cstep-ingest-the-chrome-admx-file-into-intune).

 After ingesting the ADMX, the steps below can be followed to create a configuration profile for this extension.

1. Sign in to the Microsoft Endpoint Manager Admin Center (https://endpoint.microsoft.com).

2. Navigate to Configuration Profiles.

3. Select **Create Profile**.

4. Select **Windows 10** as the platform.

5. Select **Custom** as profile type.

6. Select the **Settings** tab.

7. Select **Add**.

8. Enter the following policy information.

    OMA-URI: `./Device/Vendor/MSFT/Policy/Config/Chrome~Policy~googlechrome~Extensions/ExtensionInstallForcelist`<br/>
    Data type: `String`<br/>
    Value: `<enabled/><data id="ExtensionInstallForcelistDesc" value="1&#xF000; echcggldkblhodogklpincgchnpgcdco;https://clients2.google.com/service/update2/crx"/>`

9. Click create.

### Deploy using Group Policy

If you don't want to use Microsoft Endpoint Manager, you can use group policies to deploy the extension across your organization.

#### Adding the Chrome Extension to the ForceInstall List

1. In the Group Policy Management Editor, navigate to your OU.

2. Expand the following path **Computer/User configuration** > **Policies** > **Administrative templates** > **Classic administrative templates** > **Google** > **Google Chrome** > **Extensions**. This path may vary depending on your configuration.

3. Select **Configure the list of force-installed extensions**.

4. Right click and select **Edit**.

5. Select **Enabled**.

6. Select **Show**.

7. Under **Value**, add the following entry: `echcggldkblhodogklpincgchnpgcdco;https://clients2.google.com/service/update2/crx`

8. Select **OK** and then **Apply**.

### Test the Extension

#### Upload to cloud service, or access by unallowed browsers Cloud Egress

1. Create or get a sensitive item and, try to upload a file to one of your organization’s restricted service domains. The sensitive data must match one of our built-in [Sensitive Info Types](sensitive-information-type-entity-definitions.md), or one of your organization’s sensitive information types. You should get a DLP toast notification on the device you are testing from that shows that this action is not allowed when the file is open.

#### Testing other DLP scenarios in Chrome

Now that you’ve removed Chrome from the disallowed browsers/apps list, you can test the scenarios below to confirm the behavior meets your organization’s requirements:

- Copy data from a sensitive item to another document using the Clipboard
  - To test, open a file that is protected against copy to clipboard actions in the Chrome browser and attempt to copy data from the file.
  - Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.
- Print a document
  - To test, open a file that is protected against print actions in the Chrome browser and attempt to print the file.
  - Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.
- Copy to USB Removeable Media
  - To test, try to save the file to a removeable media storage.
  - Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.
- Copy to Network Share
  - To test, try to save the file to a network share.
  - Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.

### Use the Alerts Management Dashboard to viewing Chrome DLP alerts

1. Open the **Data loss prevention** page in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a> and select **Alerts**.

2. Refer to the procedures in [How to configure and view alerts for your DLP policies](dlp-configure-view-alerts-policies.md) to view alerts for your Endpoint DLP policies.

### Viewing Chrome DLP data in activity explorer

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
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](/windows/security/threat-protection/)
- [Onboarding tools and methods for Windows 10 machines](/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
- [Azure AD joined devices](/azure/active-directory/devices/concept-azure-ad-join)
- [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium)
