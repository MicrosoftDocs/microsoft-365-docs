---
title: "Get started with Microsoft 365 data loss prevention on-premises scanner"
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

# Get started with data loss prevention on-premises scanner

Microsoft data loss prevention on-premises scanner is part of the Microsoft 365 data loss prevention (DLP) suite of features you can use to discover and protect sensitive items across Microsoft 365 services. For more information about all of Microsoft’s DLP offerings, see [Overview of data loss prevention](data-loss-prevention-policies.md).

DLP on-premises scanner allows you to monitor on-premises data-at-rest in file shares and SharePoint document libraries and folders to detect when sensitive items are used and shared. This gives you the visibility and control you need to ensure that they are used and protected properly, and to help prevent risky behavior that might compromise them. <!--ADD LINKS -->DLP on-premises scanner detects sensitive information by using built-in or custom sensitive information types, sensitivity labels or file properties. 

DLP on-premises scanner relies on a full implementation of Azure Information Protection (AIP) scanner to monitor, label and protect sensitive items. If you aren't familiar with AIP scanner, we strongly recommend familiarizing yourself with it. See these articles:

- [What is Azure Information Protection](https://docs.microsoft.com/en-us/azure/information-protection/what-is-information-protection)
- [What is the Azure Information Protection unified labeling scanner](https://docs.microsoft.com/en-us/azure/information-protection/deploy-aip-scanner)
- [Requirements for installing and deploying the Azure Information Protection unified labeling scanner](https://docs.microsoft.com/en-us/azure/information-protection/deploy-aip-scanner-prereqs)
- [Configuring and installing the Azure Information Protection unified labeling scanner](https://docs.microsoft.com/en-us/azure/information-protection/deploy-aip-scanner-configure-install)


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
    1. Enable DLP scan in the created Content scan job, set the Enforce option to Off (unless you want to proceed directly to the DLP enforcement stage)


2. CREATE POLICY - see NEW TOPIC GENERIC HOW TO CREATE A DLP POLICY
    1. CONDITIONS
    1. ACTIONS

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
