---
title: "Get started with Microsoft 365 data loss prevention on-premises scanner (preview)"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 07/21/2020
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
description: "Set up Microsoft 365 Endpoint data loss prevention to monitor file activities and implement protective actions for those file to endpoints."
---

# Get started with data loss prevention on-premises scanner (preview)

This article walks you through two scenarios where you create and modify a DLP policy that uses on-premises as a location.

## Before you begin

### SKU/subscriptions licensing

Before you get started with DLP on-premises scanner, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons. To participate in the preview the admin account that sets up the DLP rules must be assigned one of the following licenses:

- Microsoft 365 E5
- Microsoft 365 E5 Compliance
- Microsoft 365 E5 Information Protection & Governance 
- EMS E5
- Azure Information Protection P2


### Permissions

Data from DLP on-premises scanner can be viewed in [Activity explorer](data-classification-activity-explorer.md). There are four roles that grant permission to activity explorer, the account you use for accessing the data must be a member of any one of them.

- Global administrator
- Compliance administrator
- Security administrator
- Compliance data administrator

### DLP on-premises scanner prerequisites

- AIP scanner implements DLP policy matching and policy enforcement. See [Requirements for installing and deploying the Azure Information Protection unified labeling scanner](https://docs.microsoft.com/en-us/azure/information-protection/deploy-aip-scanner-prereqs).
- Deploy AIP scanner, see [Configuring and installing the Azure Information Protection unified labeling scanner](https://docs.microsoft.com/en-us/azure/information-protection/deploy-aip-scanner-configure-install).
- There must be at least one label and policy published in the tenant, even if all your detection rules are based on sensitive information types only.

## Deploy DLP on-premises scanner

1. Follow the [Configuring and installing the Azure Information Protection unified labeling scanner](https://docs.microsoft.com/azure/information-protection/deploy-aip-scanner-configure-install) to complete scanner installation
    1. Network discovery jobs configuration is optional step. You can skip it and define specific repositories to be scanned in your Content scan job.
    1. You must create Content scan job and specify the repositories that host files that need to be evaluated by the DLP engine.
    1. Enable DLP scan in the created Content scan job, set the Enforce option to Off (unless you want to proceed directly to the DLP enforcement stage).
    1. Add repositories that you would like to scan to the repositories list under the content scan job.


## Understand DLP on-premises scan



2. CREATE POLICY - see NEW TOPIC GENERIC HOW TO CREATE A DLP POLICY
    1. CONDITIONS
    1. ACTIONS
     
    
Parameters to pass

Scope the DLP rules to specific locations if needed. If locations are scoped to “All”, all files scanned by the scanner will be subject to the DLP rule matching and enforcement. 
When specifying the locations, you can use either exclusion or inclusion list. During private preview you cannot set both of them. So, you can either define that the rule is relevant only to paths matching one of the patterns listed in inclusion list or, all files, except the files matching the pattern listed in inclusion list will be subject to DLP rule matching.
For example, if you want to exclude all files with word secret in the path specify *secret* in the exclusion list:
 

GET SCREENSHOT FOR THE ACTIONS

5.	You can define one of the following actions (all are mutually exclusive):
o	Block everyone except content owner, last modifier and the admin (aka “Make private”) – if matched and enforced the action will remove everybody from NTFS / SharePoint permissions on the file level and allow access of the file owner, repository owner (set in the repository setting in content scan job), last modifier (can be identified in SharePoint only) and admin. Scanner account will also be granted FC rights on the file.

o	Block org-wide (public) access. This is achieved by removing Everyone, NT AUTHORITY\Authenticated Users and Domain Users SIDs from the file access. Only users and groups that are explicitly granted rights to the file or parent folder will be able to access the file. 

o	Reset permissions on the file and inherit from parent folder. By default, this action will be executed only if the parent permissions are not less permissive ARE MORE RESTRICTIVE than the permissions on the file. For example if the file access is set to specific user, and the access to the parent folder is set to Domain Users group the permissions will not be reset by this action. 
You can allow rewrite of the permissions regardless of this by setting the “inherit even if the parent permissions are less restrictive” option.

o	Quarantine the file. If the rule with this action is matched the original file is replaced by a txt stub file and copy of original file is moved to the quarantine folder. It’s recommended to ensure that quarantine folder is properly secured, and scanner account must have FC access to this folder. 

## Operating AIP scanner
To start DLP scan of the of the on-premises repositories you should connect to the Azure Information Protection extension in Azure portal https://portal.azure.com/#blade/Microsoft_Azure_InformationProtection/DataClassGroupEditBlade/scannerProfilesBlade and add your repositories to the content scan job that is allocated to the cluster of scanners that will perform the scan.
Verify that you content scan job is assigned to the right cluster. If you still did not create a content scan job create a new one and assign it to the cluster that contains the scanner nodes that run the private preview version:

Verify that the content scan job is set to run without enforcement of the policy.

set the scanner schedule or use the manual **Scan Now** in the protal or run **Start-AIPScan** PowerShell cmdlet

Remember that scanner runs delta scan of the repository by default and files were already scanned in the previous scan cycle will be skipped unless the file was changed or unless you initiated full rescan. Full rescan can be initiated by using **Rescan all files** option in the UI or by running **Start-AIPScan -Reset**.



### Viewing Endpoint DLP alerts in DLP Alerts Management dashboard

1. Open the Data loss prevention page in the Microsoft 365 Compliance center and choose Alerts.

2. Refer to the procedures in [How to configure and view alerts for your DLP policies](dlp-configure-view-alerts-policies.md) to view alerts for your Endpoint DLP policies.


### Viewing Endpoint DLP data in activity explorer

1. Open the [Data classification page](https://compliance.microsoft.com/dataclassification?viewid=overview) for your domain in the Microsoft 365 Compliance center and choose Activity explorer.

2. Refer to the procedures in [Get started with Activity explorer](data-classification-activity-explorer.md) to access and filter all the data for your Endpoint devices.

   > [!div class="mx-imgBorder"]
   > ![activity explorer filter for endpoint devices](../media/endpoint-dlp-4-getting-started-activity-explorer.png)

## Next steps
Now that you have onboarded devices and can view the activity data in Activity explorer, you are ready to move on to your next step where you create DLP policies that protect your sensitive items.

- [Using Endpoint data loss prevention (preview)](endpoint-dlp-using.md)


## Next steps
Now that you have onboarded devices and can view the activity data in Activity explorer, you are ready to move on to your next step where you create DLP policies that protect your sensitive items.

- [Using Endpoint data loss prevention (preview)](endpoint-dlp-using.md)

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
