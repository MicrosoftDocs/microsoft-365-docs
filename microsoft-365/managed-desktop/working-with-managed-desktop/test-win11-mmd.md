---
title: Preview and test Windows 11 with Microsoft Managed Desktop
description:  How to get Windows 11 in your environment
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.topic: article
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
---

# Preview and test Windows 11 with Microsoft Managed Desktop

This article explains how to enroll and participate in the Windows 11 compatibility testing program within your Microsoft Managed Desktop environment. For more general information about Windows 11 and Microsoft Managed Desktop, see [Windows 11 and Microsoft Managed Desktop](../intro/win11-overview.md).  

## Add devices to the Windows 11 test group

We've created the device group (**Modern Workplace - Windows 11 Pre-Release Test Devices**) for testing and evaluating Windows 11. Despite "pre-release" in the name, devices in this group receive Windows 11 General Availability builds, and Microsoft Managed Desktop baseline configurations as they become available. They're monitored for reliability issues.

You can use new devices or any existing devices for Windows 11 testing. However, you shouldn't enroll production devices in this group until you’re confident in the test devices' compatibility and overall experience.

## Prioritize applications to submit to the Test Base

Business-critical applications are the best candidates for more validation in a closed Windows 11 environment. We can help you decide on apps for Windows 11 testing based on usage and reliability data. To request our recommendations, follow these steps:

1. Open a new support request with the Microsoft Managed Desktop Service Engineering team. If you need more info on how to file the request, see [Admin support](admin-support.md).
2. Use these values for the fields:
    - Title: Windows 11 Test Base candidates
    - Request type: Request for information
    - Category: Apps
    - Subcategory: Other

## Report issues

If you find Windows 11 compatibility issues with your line-of-business or Microsoft 365 apps, report them to us for investigation and remediation. To report an issue, follow these steps:

1. Open a new support request with the Microsoft Managed Desktop Service Engineering team.
2. Use these values for the fields:
    - Title: Windows 11 compatibility testing
    - Request type: Incident
    - Category: Devices
    - Subcategory: Windows Upgrade/Update

3. Describe the behavior and how severely it would hinder your business in a production environment.

Microsoft Managed Desktop triages and handles Windows 11 issues based on the effect on productivity. When the request is opened, we'll communicate, with customer admins, to ensure issues that block user productivity are resolved before starting broader Windows 11 migrations within any given tenant.
