---
title: "Migrate Exchange Online DLP policies to Microsoft Purview compliance portal"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- SPO_Content
search.appverid:
- MET150
description: "Learn how to plan for and migrate your Exchange online data loss prevention policies into DLP."
---

# Migrate Exchange Online data loss prevention policies to Microsoft Purview compliance portal

[Exchange Online data loss prevention (DLP) policies](/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention) are being deprecated. [Much richer DLP functionality](dlp-learn-about-dlp.md), including Exchange Online DLP, is offered in the [Microsoft Purview compliance portal](https://compliance.microsoft.com/datalossprevention?viewid=policies). You can use the DLP policy migration wizard to help you bring your Exchange Online DLP policies over to the compliance portal where you'll manage them.

The migration wizard works by reading the configuration of your DLP policies in Exchange and then creating duplicate policies in the compliance portal. By default the wizard creates the new versions of the policies in **Test** mode, so you can see what impact they'd have in your environment without enforcing any of the actions. Once you're ready to fully transition to the compliance portal versions, ***you must***:

1. Deactivate or delete the source policy in the Exchange Admin Center (EAC).
1. Edit the compliance portal version of the policy and change its status from **Test** to **Enforce**.

> [!WARNING]
> If you do not delete or deactivate the source policy in the EAC before you set the Compliance center version to **Enforce** both sets of policies will be attempting to enforce actions and you will receive duplicate events. ***This is an unsupported configuration.***

The migration wizard only migrates EXO policies and associated mail flow rules. Standalone Exchange mail flow rules aren't migrated.

## Migration workflow

There are four phases to migrating DLP policies from Exchange into the Unified DLP management console in the compliance portal.

1. Prepare for migration
    1. Evaluate and compare your Exchange Online (EXO) DLP policies and your compliance portal DLP policies for duplicate functionality.
    1. Decide which EXO DLP policies you want to bring over exactly as they are, you can use the wizard to migrate these.
    1. Decide which EXO DLP policies you want to consolidate and consolidate them in the Exchange admin center, then use the migration wizard to bring them over into the compliance portal.
1. Perform the migration - use the wizard
1. Testing and validation -  examine the results
1. Activate the migrated policies

## Before you begin

### Licensing and versions

Before you get started with migrating DLP policies, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons.

To access and use the policy migration wizard, you must have one of these subscriptions or add-ons

- Microsoft 365 E3
- Microsoft 365 E5
- Microsoft 365 A5 (EDU)
- Microsoft 365 E5 compliance
- Microsoft 365 A5 compliance
- Microsoft 365 E5 information protection and governance
- Microsoft 365 A5 information protection and governance

For a detailed list of DLP licensing requirements, see [Microsoft 365 Licensing guidance for security & compliance, data loss prevention](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection)

### Permissions

The account that you use to run the migration wizard must have access to both the Exchange Admin Console DLP page and to the Unified DLP console in the compliance portal.

## Prepare for migration

1. If you're unfamiliar with DLP, the compliance portal DLP console, or the Exchange Admin center DLP console, you should familiarize yourself before attempting a policy migration.
    1. [Exchange Online data loss prevention (DLP) policies](/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention)
    1. [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
    1. [Create, Test, and Tune a DLP policy](create-test-tune-dlp-policy.md)
1. Evaluate your Exchange DLP and compliance portal policies by asking these questions:

|Question|Action|Migration procedure|
|---|---|---|
|Is the policy still needed?|If not, delete or deactivate it|don't migrate|
|Does it overlap with any other Exchange or compliance portal DLP policies?|If yes, can you consolidate the overlapping policies?|- If it overlaps with another Exchange policy, manually create the consolidated DLP policy in the Exchange Admin center, then use the migration wizard. </br> - If it overlaps with an existing compliance portal policy, you can modify the existing compliance portal policy to match, don't migrate the Exchange version|
|Is the Exchange DLP policy tightly scoped and does it have well-defined conditions, actions, inclusions, and exclusions?|If yes, it's a good candidate to migrate with the wizard, make note of the policy so that you remember to come back to delete it later|migrate with the wizard|

## Migration

After you've evaluated all your Exchange and compliance portal DLP policies for need and compatibility, you can use the migration wizard.

1. Open the [Microsoft Purview compliance portal](https://compliance.microsoft.com/datalossprevention?viewid=policies) DLP console.
2. If there are Exchange DLP policies that can be migrated, a banner will appear at the top of the page letting you know.
3. Choose **Migrate policies** in the banner to open the migration wizard. All the Exchange DLP policies are listed. Previously migrated policies can't be selected.
4. Select the policies you want to migrate. You can migrate them individually, or in groups using a phased approach or all at once. Select **Next**.
5. Review the flyout pane for any warnings or messages. Resolve any issues before proceeding.
6. Select the mode you want the new compliance portal policy created in, **Active**, **Test**, or **Disabled**.  The default is **Test**. Select **Next**.
7. If desired, you can create more policies that are based on the Exchange DLP policies for other unified DLP locations. This will result in one new unified DLP policy for the migrated Exchange policy and one new unified DLP policy for any other locations that you pick here.

> [!IMPORTANT]
> Any Exchange DLP policy conditions and actions that are not supported by other DLP locations, like Devices, SharePoint, OneDrive, On-premises, MCAS or Teams chat and channel messages will be dropped from the additional policy. Also, there is pre-work that must be done for the other locations. See:
>- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
>- [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)
>- [Using Endpoint data loss prevention](endpoint-dlp-using.md)
>- [Learn about the data loss prevention on-premises scanner](dlp-on-premises-scanner-learn.md)
>- [Get started with the data loss prevention on-premises scanner](dlp-on-premises-scanner-get-started.md)
>- [Use the Microsoft Purview data loss prevention on-premises scanner](dlp-on-premises-scanner-use.md)
>- [Use data loss prevention policies for non-Microsoft cloud apps](dlp-use-policies-non-microsoft-cloud-apps.md)
 
8. Review the migration wizard session settings. Select **Next**.
9. Review the migration report. Pay attention to any failures involving Exchange mail flow rules. You can fix them and remigrate the associated policies.

The migrated policies will now appear in the list of DLP policies in the compliance portal DLP console.

## Common errors and mitigation

|Error message|Reason|Mitigation/Recommended steps|
|---|---|---|
|A compliance policy with name `<Name of the policy>` already exists in scenario(s) `Dlp`.|It's likely that this policy migration was done earlier and then reattempted in the same session|Refresh the session to update the list of policies available for migration. All previously migrated policies should be in the `Already migrated` state.|
|A compliance policy with name `<Name of the policy>` already exists in scenario(s) `Hold`.|A retention policy with the same name exists in the same tenant.|- Rename the DLP policy in EAC to a different name. </br> - Retry the migration for the impacted policy.|
|`DLP-group@contoso.com` can't be used as a value for the Shared By condition because it's a distribution group or mail-enabled security group. Use Shared by Member of predicate to detect activities by members of certain groups.|Transport rules allow groups to be used in the `sender is` condition but unified DLP doesn't allow it.|Update the transport rule to remove all group email addresses from the `sender is` condition and add the group to the `sender is a member of` condition if necessary. Retry the migration for the impacted policy|
|Couldn't find recipient `DLP-group@contoso.com`. If newly created, retry the operation after sometime. If deleted or expired please reset with valid values and try again.|It's likely that the group address used in `sender is a member of` or `recipient is a member of` condition is expired or invalid.|- Remove/replace all the invalid group email addresses in the transport rule in Exchange admin center. </br> - Retry the migration for the impacted policy.|
|The value specified in `FromMemberOf` predicate must be mail enabled security group.|Transport rules allow individual users to be used in the `sender is a member of` condition but unified DLP doesn't allow it.|- Update the transport rule to remove all individual user email addresses from the `sender is a member of` condition and add the users to the `sender is` condition if necessary. </br> - Retry the migration for the impacted policy.|
|The value specified in `SentToMemberOf` predicate must be mail enabled security group.|Transport rules allow individual users to be used under the `recipient is a member of` condition but unified DLP doesn't allow it.|- Update the transport rule to remove all individual user email addresses from the `recipient is a member of` condition and add the users to the `recipient is` condition if necessary. </br> - Retry the migration for the impacted policy.|
|Using the `<Name of condition>` parameter is supported only for Exchange. Either remove this parameter or turn on only Exchange location.|It's likely that another policy with the same name exists in compliance portal with other locations like SPO/ODB/Teams for which the mentioned condition isn't supported.|Rename the DLP policy in Exchange admin center and retry the migration.|

## Testing and validation <!--PRATEEK AND AAKASH TO PROVIDE A LIST OF SUPPORTED PREDICATES AND KNOWN ISSUES BEFORE PUBLISHING-->

Test and review your policies.

1. Follow the [Test a DLP policy](create-test-tune-dlp-policy.md#test-a-dlp-policy) procedures.
2. Review the events created by the policy in [Activity explorer](data-classification-activity-explorer.md).

## Review the policy matches between Exchange Admin Center DLP and Microsoft Purview Unified DLP

To ensure that the migrated policies behave as expected, you can export the reports from both admin centers and do a comparison of the policy matches.

1. Connect to [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).
2. Export the [EAC DLP report](/powershell/module/exchange/get-maildetaildlppolicyreport). You can copy this cmdlet and insert the appropriate values:

   ```powershell
   Get-MailDetailDlpPolicyReport -StartDate <dd/mm/yyyy -EndDate <dd/mm/yyyy> -PageSize 5000 | select Date, MessageId, DlpPolicy, TransportRule -Unique | Export-CSV <"C:\path\filename.csv">
   ```

3. Export the [Unified DLP report](/powershell/module/exchange/get-dlpdetailreport). You can copy this cmdlet and insert the appropriate values:

   ```powershell
   Get-DlpDetailReport -StartDate <dd/mm/yyyy> -EndDate <dd/mm/yyyy> -PageSize 5000 | select Date, Location, DlpCompliancePolicy, DlpComplianceRule -Unique | Export-CSV <"C:\path\filename.csv">
   ```

## Activate your migrated policies

Once you're satisfied with how your migrated policies are functioning, you can set them to **Enforce**.

1. Open the Exchange Admin Center DLP console.
2. Deactivate or delete the source policy.
3. Open the [Microsoft Purview compliance portal](https://compliance.microsoft.com/datalossprevention?viewid=policies) DLP console and select the policy you want to make active to edit it.
4. Change the status to **Turn on**.

## Related articles

- [Exchange Online data loss prevention (DLP) policies](/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Create, Test, and Tune a DLP policy](create-test-tune-dlp-policy.md)
- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md)
- [Exchange Online data loss prevention (DLP) policies](/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention)
