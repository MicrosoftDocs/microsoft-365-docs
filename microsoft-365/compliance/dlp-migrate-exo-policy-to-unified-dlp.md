---
title: "Migrate Exchange Online DLP policies to Compliance center DLP (preview)"
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

# Migrate Exchange Online DLP policies to Compliance center DLP (preview)

[Exchange Online data loss prevention (DLP) policies](https://docs.microsoft.com/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention) are being deprecated. All [DLP functionality](data-loss-prevention-policies.md), including Exchange Online DLP, is offered in the [Microsoft 365 Compliance center](https://compliance.microsoft.com/datalossprevention?viewid=policies). You can use the DLP policy migration wizard to help you bring your Exchange Online DLP policies over to the Compliance center where you'll manage them.

The migration wizard <!--NEED LINK to the wizard in the UI --> works by reading the configuration of your DLP polices in Exchange Online and then creating duplicate polices in the Compliance center. By default the wizard creates the new versions of the polices in **Test** mode, so you can see what impact they'd have in your environment without enforcing any of the actions. Once you're ready to fully transition to the Compliance center versions ***you must***:

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
    1. [Create, Test, and Tune a DLP policy](creat-test-tune-dlp-policy.md)

## Migration

## Testing and validation

## Activate your migrated polices