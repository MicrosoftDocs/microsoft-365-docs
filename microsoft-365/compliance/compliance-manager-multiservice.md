---
title: "Multiservice support in Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/01/2023
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
description: "Learn how Microsoft Purview Compliance Manager provides multiservice support so you can track and manage compliance for your organization's cloud services."
---

# Multiservice support in Compliance Manager

**In this article:** Learn how Compliance Manager supports your multicloud environment.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Overview

Compliance Manager now provides multiservice support.  You can use Compliance Manager to track and manage your compliance activities within Microsoft 365, Microsoft Azure, and other cloud services such as Google Cloud Services and Azure Web Services.

Integration with [Microsoft Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) provides signaling to Compliance Manager. This integration allows Compliance Manger to track configurations in your organization’s Microsoft Azure environment so that you can assess your progress in meeting controls for the regulations you need to comply with. Compliance Manager provides guidance for implementing improvement actions in non-Microsoft services for meeting controls and earning points that count toward your overall compliance score.

Compliance Manager supports both Microsoft and non-Microsoft services. This means that you can now use Compliance Manager to build assessments to track and manage your organization’s compliance in the context of both Microsoft services and those of other cloud service providers. Compliance Manager can detect signals from Azure, Google Cloud Services, and Azure Web Services to assess configurations and automatically monitor control status.

This comes in two different contexts:

1. [Assessments](compliance-manager-assessments.md): When you create an assessment in Compliance Manager, you’ll chose one or more applicable services: Microsoft 365, Microsoft Azure, Amazon Web Services, or Google Cloud Platform. Compliance Manger then provides automatic monitoring of configurations in your selected services to determine whether or not controls are passing or failing.

1. [Improvement actions](compliance-manager-improvement-actions.md): Using signals from Defender for Cloud, Compliance Manager automatically detects the implementation status of improvement actions that pertain to your non-Microsoft services. The action’s score breakdown displays implementation status and details based on subscriptions you designate within each non-Microsoft service. The scores you receive for passing grades contrinbute to your in your non-Mic provides improvement actions with implementation guidance for taking actions in services to meet control requirements. Automatic monitoring detects whether actions are implemented correctly. Using signals from Defencer for Cloud, Compliance Manager detects configurations in your non-Microsoft services to determine an improvement action’s test status. When we detect a passing status, you’re awarded points that contribute to control and assessment progress, and increase your overall compliance score.

## Supported services

The services listed below can be assessed by Compliance Manager:
- Microsoft 365
- Microsoft Dynamics 365
- Microsoft Azure cloud services
- Google Cloud Platform
- Amazon Web Services

We’ll soon roll out a selection of data connectors built specifically for Compliance Manager that can support other non-Microsoft services such as Salesforce and Zoom.

## Support levels

You can think of Compliance Manager as providing a continuum of automation and support depending on the service you’re assessing. The degree of automation and personalized guidance  for satisfying controls for a regulation will depending on the service.

The highest level of automation and support are for Microsoft 365 services. Moving along the continuum, the next-highest degree of support is for Azure, for which Compliance Manager provides robust monitoring and guidance, although slightly less so than for Microsoft 365 services. Continuing along the continuum in descending order are non-Microsoft services. At the end of the continuum are assessments built on “universal” templates, which feature the least personalized and detailed guidance for improvement actions and require primarily manual implementation on your part.

## Get started

There are setup steps required before you can start building assessments for your cloud services. Visit [Configure cloud settings](compliance-manager-cloud-settings.md) to get started.

## Resources

- [Quickstart: Set up Microsoft Defender for Cloud](/azure/defender-for-cloud/get-started)