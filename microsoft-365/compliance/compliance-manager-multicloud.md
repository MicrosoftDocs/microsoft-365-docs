---
title: "Multicloud support in Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/25/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- tier1
search.appverid:
- MOE150
- MET150
description: "Learn how Microsoft Purview Compliance Manager provides multicloud support so you can track and manage compliance for your organization's cloud services."
---

# Multicloud support in Compliance Manager

**In this article:** Learn how Compliance Manager helps you automatically assess and manage compliance across your multicloud environment.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Overview

Compliance Manager now integrates with [Microsoft Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction), which allows you to assess your compliance posture across Microsoft 365, Microsoft Azure, Google Cloud Platform (GCP), and Amazon Web Services (AWS) with resource-level testing and cloud-specific guidance. This new integration provides customers with a single interface in Compliance Manager to help make it easier to manage compliance across the organization’s digital estate.

This integration allows Compliance Manger to track configurations in your organization’s Microsoft Azure environment and detect signals from other services like GCP and AWS, so that you can assess your progress in meeting controls for the regulations you need to comply with. Compliance Manager provides guidance for implementing improvement actions in non-Microsoft services for meeting controls.

The integration with Defender for Cloud surfaces in two contexts within Compliance Manager:

1. [Assessments](compliance-manager-assessments.md): When you create an assessment in Compliance Manager, you’ll select a supported regulation and then choose one or more services to assess. Compliance Manger then provides automatic monitoring of configurations in your selected services to determine whether controls are passing or failing.

1. [Improvement actions](compliance-manager-improvement-actions.md): Using signals from Defender for Cloud, Compliance Manager automatically detects the test status and test result of improvement actions that pertain to Azure and to your non-Microsoft services. With these signals, Compliance Manager automatically tracks the status of actions and resource-level testing details from cloud services like AWS and GCP.

## Supported services

The services listed below can be assessed by Compliance Manager:
- Microsoft 365
- Microsoft Azure cloud services
- Google Cloud Platform
- Amazon Web Services

In addition, Compliance Manager provides a [universal version of regulatory templates](compliance-manager-templates.md#regulations-overview) that allows you to track compliance with any unsupported service through manual implementation and testing.

> [!TIP]
> Compliance Manager has a dedicated selection of connectors to support other non-Microsoft services such as Salesforce and Zoom. Visit [Working with connectors in Compliance Manager](compliance-manager-connectors.md).

## Service subscriptions

When creating assessments, you can select a subscription if the service you choose for the assessment is monitored by Defender for Cloud. Your choice of subscription will affect the evaluation of improvement actions for that service. Learn more about [monitoring assessment progress by service](compliance-manager-assessments.md#assessment-progress-by-service).

If you choose subscriptions that are in scope within Defender for Cloud for a matching regulation, automated test results are pulled from Defender for Cloud and shown in the assessment.

## Supported regulations

View the [list of regulations supported by both Compliance Manager and Defender for Cloud](compliance-manager-cloud-settings.md#standards-supported-by-compliance-manager-and-defender-for-cloud).

## Get started

There are setup steps required before you can start building assessments for your cloud services. Visit [Configure cloud settings](compliance-manager-cloud-settings.md) to get started.

## Resources

- [Quickstart: Set up Microsoft Defender for Cloud](/azure/defender-for-cloud/get-started)