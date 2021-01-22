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

[Exchange Online data loss prevention (DLP) policies](https://docs.microsoft.com/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention) are being deprecated. All [DLP functionality](data-loss-prevention-policies.md), including Exchange Online DLP, is offered in the [Microsoft 365 Compliance center](https://compliance.microsoft.com/datalossprevention?viewid=policies). You can use the DLP policy migration wizard to help you transition from managing your Exchange DLP policies in the Exchange Admin Center to managing them in the Compliance Center.

The migration wizard only migrates EXO policies, not Exchange mail flow rules.

The migration wizard reads the settings of the EXO DLP policies and then creates them over in the compliance center

The migration wizard does not deactivate or delete the EXO DLP version of a policy.

By default migrated policies are created in test mode. Before you change their status from test to active, you MUST go into the EAC and deactivate them there or else you'll have duplicate DLP policies running simultaneously. This is an unsupported configuration.

## Migration workflow

There are four phases to the EXO to Compliance center DLP policy migration

- prepare for migration
    - evaluate and compare your Exchange Online (EXO) DLP policies and your Compliance Center DLP policies for duplicate functionality
    - decide which EXO DLP policies you want to bring over exactly as they are- you can use the migration wizard for these
    - decide which EXO DLP policies you want to consolidate - you'll have to create new policies in the Compliance center
- migration - use the wizard
- testing and validation -  examine the results
- activate the migrated policies

## Before you begin

licensing
SKU
Permissions

## Prepare for migration

## Migration

## Testing and validation

## Activate your migrated polices