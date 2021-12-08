---
title: Tutorials and simulations in Microsoft Defender for Business
description: Learn about several tutorials to help you get started using Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: article
ms.date: 12/08/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Tutorials and simulations in Microsoft Defender for Business

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

If you've just finished setting up Microsoft Defender for Business, you might be wondering where to start to learn about how Defender for Business works. This article describes preview scenarios to try, and several tutorials and simulations that are available for Defender for Business. These resources are designed to help you see how Defender for Business can work for your company.

## Try these preview scenarios

The following table summarizes several scenarios to try during the preview of Defender for Business. 
<br/><br/>


| Scenario  | Description  |
|---------|---------|
| Onboard devices using a local script     | In Defender for Business, you can onboard Windows 10 and 11 devices using a script that you download and run on each device. The script creates a trust with Azure Active Directory (Azure AD) and enrolls the device with Microsoft Intune. To learn more, see [Onboard a device using a local script in Defender for Business](mdb-onboard-devices.md#onboard-a-device-using-a-local-script-in-defender-for-business).         |
| Onboard devices using Microsoft Intune     | If you were already using Microsoft Intune before getting Defender for Endpoint, you can use Microsoft Intune to onboard devices. Try onboarding macOS, iOS, Linux, and Android devices with Microsoft Intune. To learn more, see [Device enrollment in Microsoft Intune](/mem/intune/enrollment/device-enrollment).        |
| Edit security policies and settings     | If you're managing your security policies and settings in Defender for Business, use the **Device configuration** page to view and edit your policies. To learn more, see [View or edit policies in Microsoft Defender for Business](mdb-view-edit-policies.md).        |
| Execute a simulated attack   | Several tutorials and simulations are available in Defender for Business. These tutorials and simulations are designed to show you firsthand how the threat protection features of Defender for Business can work for your company. To try one or more of the tutorials, see [Recommended tutorials for Microsoft Defender for Business](#recommended-tutorials-for-defender-for-business).         |
| View incidents in Microsoft 365 Lighthouse     | If you are a Microsoft partner using Microsoft 365 Lighthouse, you can view incidents across your customers' tenants in your Microsoft 365 Lighthouse portal. To learn more, see [Microsoft 365 Lighthouse and Microsoft Defender for Business](mdb-lighthouse-integration.md).       |


## Recommended tutorials for Defender for Business

The following table describes the recommended tutorials for Defender for Business customers:
<br/><br/>


| Tutorial  | Description  |
|---------|---------|
| **Document drops backdoor**     | Simulate an attack that introduces file-based malware on a test device. The tutorial describes how to get and use the simulation file, and what to watch for in the Microsoft 365 Defender portal. <br/><br/>This tutorial requires Microsoft Word to be installed on your test device.   |
| **Live Response tutorial**     | Learn how to use basic and advanced commands with Live Response. Learn how to locate a suspicious file, remediate the file, and gather information on a device.   |
| **Threat & Vulnerability Management (core scenarios)**     | Learn about threat and vulnerability management through three scenarios: <br/><br/>1. Reduce your organization’s threat and vulnerability exposure. <br/>2. Request a remediation. <br/>3. Create an exception for security recommendations. <br/><br/> Threat and vulnerability management uses a risk-based approach to the discovery, prioritization, and remediation of endpoint vulnerabilities and misconfigurations.      |

Each tutorial includes a walkthrough document that explains the scenario, how it works, and what to do.

> [!TIP]
> You'll see references to Microsoft Defender for Endpoint in the walkthrough documents. The tutorials listed in this article can be used with either Defender for Endpoint or Defender for Business.

## How to access the tutorials

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, under **Endpoints**, choose **Tutorials**.

3. Choose one of the following tutorials:

   - **Document drops backdoor**
   - **Live Response tutorial**
   - **Threat & Vulnerability Management (core scenarios)**

## Next steps

- [Manage devices in Microsoft Defender for Business](mdb-manage-devices.md)

- [View and manage incidents in Microsoft Defender for Business](mdb-view-manage-incidents.md)

- [Respond to and mitigate threats in Microsoft Defender for Business](mdb-respond-mitigate-threats.md)

- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)