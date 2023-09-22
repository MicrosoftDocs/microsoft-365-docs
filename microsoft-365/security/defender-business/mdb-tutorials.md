---
title: Tutorials and simulations in Microsoft Defender for Business
description: Learn about several tutorials to help you get started using Defender for Business.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.reviewer: efratka, nehabha, yaelbenari
ms.date: 01/26/2023
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- tier1
---

# Tutorials and simulations in Microsoft Defender for Business

This article describes some scenarios to try and several tutorials and simulations that are available for Defender for Business. These resources show how Defender for Business can work for your company.


## Try these scenarios

The following table summarizes several scenarios to try with Defender for Business.

| Scenario  | Description  |
|---------|---------|
| Onboard devices using a local script     | In Defender for Business, you can onboard Windows and Mac devices by using a script that you download and run on each device. The script creates a trust with Azure Active Directory (Azure AD), if that trust doesn't already exist; enrolls the device with Microsoft Intune, if you have Intune; and onboards the device to Defender for Business. To learn more, see [Onboard devices to Defender for Business](mdb-onboard-devices.md).         |
| Onboard devices using Intune     | If you were already using Intune before getting Defender for Business, you can continue to use Intune admin center to onboard devices. Try onboarding your Windows, Mac, iOS, and Android devices with Microsoft Intune. To learn more, see [Device enrollment in Microsoft Intune](/mem/intune/enrollment/device-enrollment).        |
| Edit security policies     | If you're managing your security policies in Defender for Business, use the **Device configuration** page to view and edit your policies. Defender for Business comes with default policies that use recommended settings to secure your company's devices as soon as they're onboarded. You can keep the default policies, edit them, and define your own policies to suit your business needs. To learn more, see [View or edit policies in Defender for Business](mdb-view-edit-policies.md).        |
| Run a simulated attack   | Several tutorials and simulations are available in Defender for Business. These tutorials and simulations show how the threat-protection features of Defender for Business can work for your company. You can also use a simulated attack as a training exercise for your team. To try the tutorials, see [Recommended tutorials for Defender for Business](#recommended-tutorials-for-defender-for-business).         |
| View incidents in Microsoft 365 Lighthouse     | If you're a [Microsoft Cloud Solution Provider](/partner-center/enrolling-in-the-csp-program) using Microsoft 365 Lighthouse, you can view incidents across your customers' tenants in your Microsoft 365 Lighthouse portal. To learn more, see [Microsoft 365 Lighthouse and Defender for Business](mdb-lighthouse-integration.md).       |


## Recommended tutorials for Defender for Business

The following table describes the recommended tutorials for Defender for Business customers.

| Tutorial  | Description  |
|---------|---------|
| **Document Drops Backdoor**     | Simulate an attack that introduces file-based malware on a test device. The tutorial describes how to use the simulation file and what to watch for in the Microsoft 365 Defender portal. <p>This tutorial requires that Microsoft Word is installed on your test device.   |
| **Live Response**     | Learn how to use basic and advanced commands with Live Response. Learn how to locate a suspicious file, remediate the file, and gather information on a device.   |
| **Microsoft Defender Vulnerability Management(core scenarios)**     | Learn about Defender Vulnerability Management through three scenarios:<br/>1. Reduce your company's threat and vulnerability exposure.<br/>2. Request a remediation.<br/>3. Create an exception for security recommendations.<br/><br/>Defender Vulnerability Management uses a risk-based approach to the discovery, prioritization, and remediation of endpoint vulnerabilities and misconfigurations.      |

Each tutorial includes a walkthrough document that explains the scenario, how it works, and what to do.

> [!TIP]
> You'll see references to Microsoft Defender for Endpoint in the walkthrough documents. The tutorials listed in this article can be used with either Defender for Endpoint or Defender for Business.

## How to access the tutorials

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, under **Endpoints**, choose **Tutorials**.

3. Choose one of the following tutorials:

   - **Document Drops Backdoor**
   - **Live Response**
   - **Microsoft Defender Vulnerability Management (core scenarios)**

## Next steps

- [Manage devices in Defender for Business](mdb-manage-devices.md)
- [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md)
- [Respond to and mitigate threats in Defender for Business](mdb-respond-mitigate-threats.md)
- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)