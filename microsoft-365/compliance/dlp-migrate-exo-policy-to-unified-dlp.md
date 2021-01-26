---
title: "Migrate Exchange Online data loss prevention policies to Compliance center (preview)"
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
localization_priority: normal
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MET150
description: "Learn how to plan for and migrate your Exchange online data loss prevention policies into Microsoft 365 DLP."
---

# Migrate Exchange Online data loss prevention policies to Compliance center (preview)

[Exchange Online data loss prevention (DLP) policies](https://docs.microsoft.com/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention) are being deprecated. All [DLP functionality](data-loss-prevention-policies.md), including Exchange Online DLP, is offered in the [Microsoft 365 Compliance center](https://compliance.microsoft.com/datalossprevention?viewid=policies). You can use the DLP policy migration wizard to help you bring your Exchange Online DLP policies over to the Compliance center where you'll manage them.

The migration wizard <!--NEED LINK to the wizard in the UI --> works by reading the configuration of your DLP policies in Exchange Online and then creating duplicate policies in the Compliance center. By default the wizard creates the new versions of the policies in **Test** mode, so you can see what impact they'd have in your environment without enforcing any of the actions. Once you're ready to fully transition to the Compliance center versions, ***you must***:

1. Deactivate or delete the source policy in the Exchange Admin Center (EAC).
1. Edit the Compliance center version of the policy and change its status from **Test** to **Enforce**. 

> [!WARNING]
> If you do not delete or deactivate the source policy in the EAC before you set the Compliance center version to **Enforce** both sets of policies will be attempting to enforce actions and you will receive duplicate events. ***This is an unsupported configuration.***


The migration wizard only migrates EXO policies, not Exchange mail flow rules.

## Migration workflow

There are four phases to migrating DLP policies from Exchange into the Unified DLP management console in the Compliance center.  

1. Prepare for migration
    1. evaluate and compare your Exchange Online (EXO) DLP policies and your Compliance Center DLP policies for duplicate functionality
    1. decide which EXO DLP policies you want to bring over exactly as they are- you can use the migration wizard for these
    1. decide which EXO DLP policies you want to consolidate - you'll have to create new policies in the Compliance center
1. Perform the migration - use the wizard
1. Testing and validation -  examine the results
1. Activate the migrated policies

## Before you begin

### Licensing and versions

***WATING ON AAKASH AND ARJUN TO SUPPLY THE ANSWER TO What SKU's, licensing and add-ons will the migration wizard be available in?***

### Permissions

The account that you use to run the migration wizard must have access to both the Exchange Admin Console DLP page (GET LINK) and to the Unified DLP console in the Compliance center.

## Prepare for migration

1. If you are unfamiliar with DLP, the Compliance center DLP console, or the Exchange Admin center DLP console, you should familiarize yourself before attempting a policy migration.
    1. [Exchange Online data loss prevention (DLP) policies](https://docs.microsoft.com/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention)
    1. [Overview of Data Loss Prevention](data-loss-prevention-policies.md)
    1. [Create, Test, and Tune a DLP policy](create-test-tune-dlp-policy.md)
1. Evaluate your Exchange DLP and Compliance center policies by asking these questions:


|Question  |Action  | Migration procedure|
|---------|---------|---------|
|Is the policy still needed?    |If not, delete or deactivate it |don't migrate|
|Does it overlap with any other Exchange or Compliance center DLP policies?     |If yes, can you consolidate the overlapping policies?         |don't use the migration wizard, manually create the consolidated DLP policy in the Compliance center. See, [Create, Test, and Tune a DLP policy](create-test-tune-dlp-policy.md) and [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md)
|Is the Exchange DLP policy tightly scoped and does it have well-defined conditions, actions, inclusions, and exclusions?     |If yes, this is a good candidate to migrate with the wizard, make note of the policy so that you remember to come back to delete it later         | migrate with the wizard|

## Migration

After you have evaluated all your Exchange Online DLP and Compliance center DLP policies for need and compatibility, you can use the migration wizard.

1. Open the [Microsoft 365 Compliance center](https://compliance.microsoft.com/datalossprevention?viewid=policies) DLP console.
2. If there are Exchange DLP policies that can be migrated, a banner will appear at the top of the page letting you know.
3. Choose **Migrate policies** in the banner to open the migration wizard. All the Exchange DLP policies are listed. Previously migrated policies cannot be selected.
4.  Select the policies you want to migrate. You can migrate them individually or in groups. Select **Next**.
5. Review the flyout pane for any warnings or messages. Resolve any issues before proceeding.
6. Select the mode you want the new Compliance center policy created in, **Active**, **Test**, or **Disabled**.  The default is **Test**. Select **Next**.
7.  Review the migration wizard session settings. Select **Next**.
8. Review the migration report.

The migrated policies will now appear in the list of DLP policies in the Compliance center DLP console. 

## Testing and validation

Test and review your policies.

1. Follow the [Test a DLP policy](create-test-tune-dlp-policy.md#test-a-dlp-policy) procedures.
2. Review the events created by the policy in [Activity explorer](data-classification-activity-explorer.md). 

## Activate your migrated policies

Once you are satisfied with how your migrated policies are functioning, you can set them to **Enforce**.

1. Open the Exchange Admin Center DLP console (GET LINK).
2. Deactivate or delete the source policy.
3. Open the [Microsoft 365 Compliance center](https://compliance.microsoft.com/datalossprevention?viewid=policies) DLP console and select the policy you want to make active to edit it.
4. Change the status to **Turn on**.

## Related articles

- [Exchange Online data loss prevention (DLP) policies](https://docs.microsoft.com/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention)
- [Overview of DLP](data-loss-prevention-policies.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Create, Test, and Tune a DLP policy](create-test-tune-dlp-policy.md)
- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md)
- [Exchange Online data loss prevention (DLP) policies](https://docs.microsoft.com/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention)