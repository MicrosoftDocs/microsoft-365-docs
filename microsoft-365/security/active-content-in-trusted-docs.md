---
title: "Manage active content in Office documents for IT admins"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: tutorial
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- M365-security-compliance
search.appverid:
- MET150
description: "Admins can learn how to create policies to block active content in Office documents"
---

# Manage active content in Office documents for IT admins

IT admins can create policies that control different security settings for Office documents in an organization. These settings can include blocking macros, restricting ActiveX, restricting Office add-ins, and other functionality when users open Office docs. This collection of functionality is called _active content_. Attackers can use active content to deliver malware.  

Users can configure their own security and privacy settings in the Office Trust Center in their Office apps at **File** \> **Options** \> **Trust Center**.

> [!IMPORTANT]
> **Starting in July 2021, admin policies now override user-set policies for running active content in trusted documents.** Your users might run into issues when they try to use active content in trusted documents if you've implemented policies to block them. Blocking active content helps improve an organization's security posture, but it could affect worker productivity. If you choose to block active content in trusted documents, consider how to inform your employees.

## What is a trusted document?

Trusted documents are Office documents that open without any security prompts for macros, ActiveX controls and other types of active content in the document. The document will not open in Protected View or Application Guard. When users open a Trusted Document, and all active content will be enabled. Even if the document contains new active content or updates to existing active content, users won't receive any security prompts the next time they open the document.

Because of this behavior, users should clearly trust documents only if they trust the document source.

If an admin blocks active content by using a policy, or if they set a Trust Center setting that blocks active content, the the active content will remain blocked.

For more information, see the following articles:

- [Trusted documents](https://support.microsoft.com/topic/trusted-documents-cf872bd8-47ec-4c02-baa5-1fdba1a11b53)
- [Add, remove, or change a trusted location](https://support.microsoft.com/topic/add-remove-or-change-a-trusted-location-7ee1cdc2-483e-4cbb-bcb3-4e7c67147fb4)
- [Active content types in your files](https://support.microsoft.com/topic/active-content-types-in-your-files-b7ff2e8a-4055-47d4-8c7d-541e19f62bea)

## Configure trusted document settings in Office policies

Admins have many ways to configure Office in an organization. For example:

- **Office policies in Intune**: [Policies for Office apps](/mem/intune/apps/app-office-policies)
- **Office cloud policy service**: [Overview of the Office cloud policy service for Microsoft 365 Apps for enterprise](/DeployOffice/overview-office-cloud-policy-service)
- **Group policy**: [Administrative Template files (ADMX/ADML) and Office Customization Tool for Microsoft 365 Apps for enterprise, Office 2019, and Office 2016](https://www.microsoft.com/download/details.aspx?id=49030)

