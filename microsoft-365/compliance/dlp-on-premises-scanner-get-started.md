---
title: "Get started with data loss prevention on-premises repositories"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 02/21/2023
audience: ITPro
ms.topic: how-to
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- tier1
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
ms.custom: admindeeplinkCOMPLIANCE
search.appverid: 
- MET150
description: "This article describes the prerequisites and configuration for the Microsoft Purview Data Loss Prevention on-premises repositories."
---

# Get started with the data loss prevention on-premises repositories

This article walks you through the prerequisites and configuration for using the Microsoft Purview Data Loss Prevention on-premises repositories location in a DLP policy.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

### SKU/subscriptions licensing

Before you get started with DLP on-premises repositories, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons. The admin account that sets up the DLP rules must be assigned one of the following licenses:

- Microsoft 365 E5
- Microsoft 365 E5 Compliance
- Microsoft 365 E5 Information Protection & Governance 


For full licensing details, see: [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)

> [!IMPORTANT]
> All users who contribute to the scanned location either by adding files or consuming files need to have a license, not just the scanner user.

### Permissions

Data from DLP can be viewed in [Activity explorer](data-classification-activity-explorer.md). There are four roles that grant permission to activity explorer, the account you use for accessing the data must be a member of any one of them.

- Global administrator
- Compliance administrator
- Security administrator
- Compliance data administrator

#### Roles and Role Groups

There are roles and role groups in preview that you can test out to fine tune your access controls.

Here's a list of applicable roles that are in preview. To learn more about them, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

- Information Protection Admin
- Information Protection Analyst
- Information Protection Investigator
- Information Protection Reader

Here's a list of applicable role groups that are in preview. To learn more about the, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

- Information Protection
- Information Protection Admins
- Information Protection Analysts
- Information Protection Investigators
- Information Protection Readers

### DLP on-premises repositories prerequisites

- The Microsoft Purview information protection scanner implements DLP policy matching and policy enforcement. The scanner is installed as part of the AIP client so your installation must meet all the prerequisites  for AIP, the AIP client, and the AIP unified labeling scanner.
- Deploy the AIP  client and scanner. For more information, see, [Install the AIP unified labeling client](/azure/information-protection/rms-client/install-unifiedlabelingclient-app) and, [Configuring and installing the information protection scanner](deploy-scanner-configure-install.md).
- There must be at least one label and policy published in the tenant, even if all your detection rules are based on sensitive information types only.

## Deploy the DLP on-premises scanner

1. Follow the procedures in [Install the AIP unified labeling client](/azure/information-protection/rms-client/install-unifiedlabelingclient-app). 
2. Follow the procedures in [Configuring and installing the information protection scanner](deploy-scanner-configure-install.md) to complete the scanner installation.
    1. You must create content scan job and specify the repositories that host files that need to be evaluated by the DLP engine.
    2. Enable DLP rules in the created Content scan job, and set the **Enforce** option to **Off**, unless you want to proceed directly to the DLP enforcement stage.
3. Verify that your content scan job is assigned to the right cluster. If you still didn't create a content scan job create a new one and assign it to the cluster that contains the scanner nodes.

4. Connect to the Microsoft Purview compliance portal and add your repositories to the content scan job that will perform the scan.

5. Do one of the following to run your scan:
    1. set the scanner schedule
    1. use the manual **Scan Now** option in the portal
    1. or run **Start-AIPScan** PowerShell cmdlet

   > [!IMPORTANT]
   > Remember that the scanner runs a delta scan of the repository by default and the files that were already scanned in the previous scan cycle will be skipped unless the file was changed or you initiated a full rescan. Full rescan can be initiated by using **Rescan all files** option in the UI or by running **Start-AIPScan-Reset**.

6. Open the [Data loss prevention page](https://compliance.microsoft.com/datalossprevention?viewid=policies) in the Microsoft Purview compliance portal.

7. Choose **Create policy** and create a test DLP policy. See [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) if you need help with creating a policy. Be sure to run it in test until you're comfortable with this feature. Use these parameters for your policy:
    1. Scope the DLP on-premises repositories rule to specific locations if needed. If you scope **locations** to **All**, all files scanned by the scanner will be subject to the DLP rule matching and enforcement.
    1. When specifying the locations, you can use either exclusion or inclusion list. You can either define that the rule is relevant only to paths matching one of the patterns listed in inclusion list or, all files, except the files matching the pattern listed in inclusion list. No local paths are supported. Here are some examples of valid paths:
      - \\\server\share
      - \\\server\share\folder1\subfolderabc
      - \*\\folder1
      - \*secret\*.docx
      - \*secret\*.\*
      - https:// sp2010.local/sites/HR
      - https://\*/HR 
    3. Here are some examples of unacceptable values use:
      - \*
      - \*\\a
      - Aaa
      - c:\
      - C:\test

> [!IMPORTANT]
> The exclusion list takes precedence over the inclusions list.

### Viewing DLP alerts in DLP Alerts Management dashboard

1. Open the [Data loss prevention page](https://compliance.microsoft.com/datalossprevention?viewid=policies) in the Microsoft Purview compliance portal and select **Alerts**.

2. Refer to the procedures in [How to configure and view alerts for your DLP policies](dlp-configure-view-alerts-policies.md) to view alerts for your on-premises DLP policies.

### Viewing DLP data in activity explorer and audit log

> [!NOTE]
> The Information Protection scanner requires that auditing be enabled. In Microsoft 365 auditing is enabled by default.

1. Open the [Data classification page](https://compliance.microsoft.com/dataclassification?viewid=overview) for your domain in the Microsoft Purview compliance portal and select Activity explorer.

2. Refer to the procedures in [Get started with Activity explorer](data-classification-activity-explorer.md) to access and filter all the data for your on-premises scanner locations.

3. Open the [Audit log in the Compliance center](https://security.microsoft.com/auditlogsearch). The DLP rule matches are available in Audit log UI or accessible by [Search-UnifiedAuditLog](/powershell/module/exchange/search-unifiedauditlog) PowerShell 


## Next steps
Now that you've deployed a test policy for DLP on-premises locations and can view the activity data in Activity explorer, you're ready to move on to your next step where you create DLP policies that protect your sensitive items.

- [Using DLP on-premises](dlp-on-premises-scanner-use.md)

## See also

- [Learn about the data loss prevention on-premises repositories](dlp-on-premises-scanner-learn.md)
- [Use the data loss prevention on-premises repositories](dlp-on-premises-scanner-use.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
