---
title: Test Windows 11 with Microsoft Managed Desktop
description:  How to get Windows 11 in your environment
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
manager: laurawi
ms.topic: article
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Test Windows 11 with Microsoft Managed Desktop

 How to enroll and participate in the Windows 11 compatibility testing program within your Microsoft Managed Desktop environment. For more about Windows 11 and Microsoft Managed Desktop generally, see Windows 11 and Microsoft Managed Desktop {LINK}

## Add devices to the Windows 11 test group

Start by adding devices to the device group (**\[Modern Workplace\] Windows 11 Pre-Release Test Devices**) created for testing and evaluating Windows 11. Devices in this group get new Windows 11 builds and Microsoft Managed Desktop baseline configurations as they become available, and are monitored for reliability issues.

You can choose any of your existing or new devices for Windows 11 testing, but you shouldn't enroll production devices in this group due to the elevated risk of defects or compatibility issues in pre-release builds. Prior device group assignments are removed upon assignment to this group.

To enroll your devices in the pre-release test group :

1. Open a new service request with Severity C with the Microsoft Managed Desktop Service Engineering team. For more info on how to do this, see 
2. Use “Windows 11 Compatibility Enrollment” as the request title.
3. In the description field, list the serial numbers of the devices that you want to use for Windows 11 testing.
4. Note which, if any, of the specified devices aren't yet deployed in your Microsoft Managed Desktop tenant.

## Prioritize applications to submit to Test Base

Business-critical applications are the best candidates for additional validation in a closed Windows 11 environment. We can help you prioritize apps for Windows 11 testing based on usage and reliability data. To request our recommendations, follow these steps:

1. Open a new service request of Severity C with the Microsoft Managed Desktop Service Engineering team.
2. Use “Windows 11 Test Base Candidates” as the request title.

## Report issues

If you encounter Windows 11 compatibility issues with your line-of-business or Microsoft 365 apps, report them to us for investigation and remediation. To report an issue, follow these steps:

1. Open a new service request of Severity C with the Microsoft Managed Desktop Service Engineering team.
2. Use “Windows 11 Compatibility Testing” as the request title.
3. Describe the behavior and how severely it would hinder your business in a production environment.

Microsoft Managed Desktop triages and handles issues with pre-release builds based on productivity impact. While our service description doesn't cover issues with pre-release builds, we'll confer with customer admins to ensure that issues that block user productivity are resolved prior to starting migration within any given tenant.