---
title: "Get started with the Google Chrome extension for endpoint data loss prevention (preview)"
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
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
search.appverid: 
- MET150
description: "Prepare for and deploy the Google Chrome extension for endpoint data loss prevention."
---

# Get started with the Google Chrome extension for endpoint data loss prevention (preview)

[Endpoint data loss prevention](endpoint-dlp-learn-about.md) (Endpoint DLP) extends the activity monitoring and protection capabilities of data loss prevention (DLP) to sensitive items that are on Windows 10 devices. When devices are onboarded into the Microsoft 365 compliance solutions, the information about what users are doing with sensitive items is made visible in [activity explorer](data-classification-activity-explorer.md) and you can enforce protective actions on those items via [DLP policies](create-test-tune-dlp-policy.md).

Once the Google Chrome browser extension is installed you can monitor activities and enforce DLP policy restrictions on sensitive items through Chrome.

## Before you begin

To use the Google Chrome extension the device must be onboarded into endpoint DLP. Review these articles if you are new to DLP or endpoint DLP

- [Overview of data loss prevention](data-loss-prevention-policies.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md)
- [Learn about endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)
- [Onboarding tools and methods for Windows 10 devices](dlp-configure-endpoints.md)
- [Configure device proxy and internet connection settings for Endpoint DLP](endpoint-dlp-configure-proxy.md)
- [Using Endpoint data loss prevention](endpoint-dlp-using.md)

### SKU/subscriptions licensing

Before you get started, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons. To access and use Endpoint DLP functionality, you must have one of these subscriptions or add-ons.

- Microsoft 365 E5
- Microsoft 365 A5 (EDU)
- Microsoft 365 E5 compliance
- Microsoft 365 A5 compliance
- Microsoft 365 E5 information protection and governance
- Microsoft 365 A5 information protection and governance

For detailed licensing guidance, see [Microsoft 365 licensing guidance for security & compliance](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection).

### Permissions

Data from Endpoint DLP can be viewed in [Activity explorer](data-classification-activity-explorer.md). There are four roles that grant permission to activity explorer, the account you use for accessing the data must be a member of any one of them.

- Global admin
- Compliance admin
- Security admin
- Compliance data admin
- Global reader
- Security reader
- Reports reader

### Prepare your devices

1. Use the procedures in these topics to onboard your devices:
    1. [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)
    1. [Onboarding tools and methods for Windows 10 devices](dlp-configure-endpoints.md)
    1. [Configure device proxy and internet connection settings for Endpoint DLP](endpoint-dlp-configure-proxy.md)

### Basic Setup (Single Machine Selfhost) - Recommended 


#### Enabling Required Registry Key via PowerShell

1.	Run the following script in PowerShell as an administrator: Get-Item -path "HKLM:\SOFTWARE\Microsoft\Windows Defender\Miscellaneous Configuration" | New-ItemProperty -Name DlpDisableBrowserCache -Value 0 -Force
Install the Extension
1.	Navigate to Microsoft Data Loss Prevention (BETA) - Chrome Web Store (google.com).
2.	Install the extension.

#### Intune Setup (Organization Wide) - Optional 

##### Enabling Required Registry Key via Intune

1.	Create a PowerShell script with the following contents:
Get-Item -path "HKLM:\SOFTWARE\Microsoft\Windows Defender\Miscellaneous Configuration" | New-ItemProperty -Name DlpDisableBrowserCache -Value 0 -Force
2.	Sign-in to the Microsoft Endpoint Manager Admin Center (https://endpoint.microsoft.com)
3.	Navigate to Devices > Scripts and click Add.
4.	Browse to the location of the script created when prompted.
5.	Select the following settings:
a.	Run this script using the logged-on credentials: YES
b.	Enforce script signature check: NO
c.	Run script in 64-bit PowerShell Host: YES
6.	Select the proper device groups and apply the policy.

#### Intune Force Install Steps

Before adding the Microsoft DLP Chrome extension to the list of force-installed extensions, it is important to ingest the Chrome ADMX. Steps for this process in Intune are documented by Google: Manage Chrome Browser with Microsoft Intune - Google Chrome Enterprise Help. After ingesting the ADMX, the steps below can be followed to create a configuration profile for this extension.

1.	Sign-in to the Microsoft Endpoint Manager Admin Center (https://endpoint.microsoft.com)
2.	Navigate to Configuration Profiles.
3.	Click Create Profile.
4.	Choose Windows 10 as the platform.
5.	Choose Custom as Profile type
6.	Click the Settings tab
7.	Click Add
8.	Enter the following policy information and click create.
OMA-URI: ./Device/Vendor/MSFT/Policy/Config/Chrome~Policy~googlechrome~Extensions/ExtensionInstallForcelist
Data type: String
Value: <enabled/><data id=”ExtensionInstallForcelistDesc” value=”1&#xF000; echcggldkblhodogklpincgchnpgcdco;https://clients2.google.com/service/update2/crx″/>

9.	Click create.

#### Group Policy  Setup (Organization Wide) - Optional

#### Import the Chrome ADMX

Your devices must be manageable via Group Policy, and all Chrome ADMX’s needed will need to be imported into the Group Policy Central Store. Please see the following Microsoft documentation on How to create and manage the Central Store for Group Policy Administrative Templates in Windows.

Enabling Required Registry Key via Powershell

1.	Create a PowerShell script with the following contents:
Get-Item -path "HKLM:\SOFTWARE\Microsoft\Windows Defender\Miscellaneous Configuration" | New-ItemProperty -Name DlpDisableBrowserCache -Value 0 -Force
2.	Open the Group Policy Management Console and navigate to your organizational unit (OU).
3.	Right-click and select "Create a GPO in this domain and Link it here." When prompted, assign a descriptive name to this GPO (e.g., DLP Chrome Immediate PowerShell Script).
4.	After creating the GPO, right click and select Edit. This will take you to the Group Policy Object.
5.	Navigate to Computer Configuration > Preferences > Control Panel Settings > Scheduled Tasks.
6.	Right-click on the blank area under ‘Scheduled Tasks’ and click New > Immediate Task (At least Windows 7)
7.	Give the task a name & description.
8.	Choose the corresponding account to run the immediate task (e.g., NT Authority)
9.	Select Run with highest privileges.
10.	Configure the policy for Windows 10.
11.	In the Actions tab, choose the action ‘Start a program’
12.	Enter the path to the Program/Script created in Step 1.
13.	Click Apply.

#### Adding the Chrome Extension to the ForceInstall List

1.	In the Group Policy Management Editor, navigate to your OU.
2.	Expand the following path “Computer/User configuration > Policies > Administrative templates > Classic administrative templates > Google > Google Chrome > Extensions” (may vary depending on configuration).
3.	Select “Configure the list of force-installed extensions.”
4.	Right click and select Edit.
5.	Check the ‘Enabled’ radio button.
6.	Click ‘Show’.
7.	Under ‘Value’, add the following entry: echcggldkblhodogklpincgchnpgcdco;https://clients2.google.com/service/update2/crx
8.	Click ‘OK’ and Click ‘Apply’

#### Testing the Extension

1.	Upload to cloud service, or access by unallowed browsers Cloud Egress  
To test when detection and protection of sensitive data when its uploaded to a service domain, try to upload a file to one of your organization’s restricted service domains with a file that has sensitive data. The sensitive data must match one of our built in Sensitive Info Types (see more info at https://aka.ms/SensitiveInfoTypes), and/or one of your organization’s sensitive information types. 
Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.

#### Testing other DLP scenarios in Chrome 

Now that you’ve unblocked Chrome as an app that’s allowed to access sensitive data when it adheres to your organization’s policy, you can test the scenarios below to confirm the behavior meets your organization’s requirements:
2.	Copy data from a sensitive document to another document using the Clipboard
To test the copy to clipboard block, simply open a file that is protected against copy to clipboard actions in the Chrome browser and attempt to copy data from the file.
Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.
3.	Print a document
To test the print block, simply open a file that is protected against print actions in the Chrome browser and attempt to print the file.
Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.
4.	Copy to USB Removeable Media
To test the save to removeable media block, try to save the file to a removeable media storage.
Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.
5.	Copy to Network Share
To test the save to removeable media block, try to save the file to a network share.
Expected Result: A DLP toast notification showing that this action is not allowed when the file is open.




### scenario Onboarding devices



### scenario With devices onboarded into Microsoft Defender for Endpoint

In this scenario, 

### Viewing Chrome DLP alerts in DLP Alerts Management dashboard

1. Open the Data loss prevention page in the Microsoft 365 Compliance center and choose Alerts.

2. Refer to the procedures in [How to configure and view alerts for your DLP policies](dlp-configure-view-alerts-policies.md) to view alerts for your Endpoint DLP policies.


### Viewing Chrome DLP data in activity explorer

1. Open the [Data classification page](https://compliance.microsoft.com/dataclassification?viewid=overview) for your domain in the Microsoft 365 Compliance center and choose Activity explorer.

2. Refer to the procedures in [Get started with Activity explorer](data-classification-activity-explorer.md) to access and filter all the data for your Endpoint devices.

   > [!div class="mx-imgBorder"]
   > ![activity explorer filter for endpoint devices](../media/endpoint-dlp-4-getting-started-activity-explorer.png)

## Next steps
Now that you have onboarded devices and can view the activity data in Activity explorer, you are ready to move on to your next step where you create DLP policies that protect your sensitive items.

- [Using Endpoint data loss prevention](endpoint-dlp-using.md)

## See also

- [Learn about Endpoint data loss prevention ](endpoint-dlp-learn-about.md)
- [Using Endpoint data loss prevention ](endpoint-dlp-using.md)
- [Overview of data loss prevention](data-loss-prevention-policies.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/)
- [Onboarding tools and methods for Windows 10 machines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
- [Azure AD joined devices](https://docs.microsoft.com/azure/active-directory/devices/concept-azure-ad-join)
- [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium)
