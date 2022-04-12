---
title: Onboard devices to Microsoft Defender for Business
description: Learn about device onboarding options in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 04/12/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# Onboard devices to Microsoft Defender for Business

> [!IMPORTANT]
> Microsoft Defender for Business is rolling out to [Microsoft 365 Business Premium](../../business-premium/index.md) customers, beginning March 1, 2022. Defender for Business as a standalone subscription is in in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. Preview includes an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

With Microsoft Defender for Business, you have several options to choose from for onboarding your company's devices. This article walks you through your options and includes an overview of how onboarding works.

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about Microsoft Defender for Business</a>. We'd love to hear from you!
>

## What to do

1. Select the tab for your operating system (Windows client, Windows Server, macOS, and mobile devices).

2. View your onboarding options for that operating system.

3. See your next steps.

## [**Windows clients**](#tab/WindowsClients)

Choose one of the following options to onboard Windows client devices to Defender for Business:

- [Automatic onboarding](#automatic-onboarding-for-windows-clients) (for devices that are already enrolled in Microsoft Endpoint Manager, which includes Microsoft Intune and Mobile Device Management capabilities)
- [Local script](#local-script-for-windows-clients) (for onboarding devices manually in the Microsoft 365 Defender portal)
- [Microsoft Endpoint Manager](#endpoint-manager-for-windows-clients)

## Automatic onboarding for Windows clients

If Windows devices are already enrolled in Endpoint Manager, Defender for Business will detect those devices while you are in the process of setting up and configuring Defender for Business. You'll be asked if you want to use automatic onboarding for all or some of your Windows devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more devices later.

If you're not asked about automatic onboarding, it's most likely because you don't have devices enrolled in Endpoint Manager yet. In this case, choose either the [local script method](#local-script-for-windows-clients) (recommended), or proceed to [enroll your Windows client devices in Endpoint Manager](#endpoint-manager-for-windows-clients).

> [!TIP]
> We recommend selecting the "all devices enrolled" option. That way, when Windows devices are enrolled in Endpoint Manager later on, they'll be onboarded to Defender for Business automatically. In addition, if you've been managing security policies and settings in Endpoint Manager, we recommend switching to the Microsoft 365 Defender portal to manage your devices, policies, and settings. To learn more, see [Choose where to manage security policies and devices](mdb-configure-security-settings.md#choose-where-to-manage-security-policies-and-devices).

To learn more about automatic onboarding, see step 3 in [Use the wizard to set up Microsoft Defender for Business](mdb-use-wizard.md).


### Local script for Windows clients

You can use a local script to onboard Windows client devices. When you run the onboarding script on a device, it creates a trust with Azure Active Directory (if that trust doesn't already exist), enrolls the device in Microsoft Endpoint Manager (if it isn't already enrolled), and then onboards the device to Defender for Business. 

> [!TIP]
> We recommend onboarding up to 10 devices at a time when you use the local script method.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system, such as **Windows 10 and 11**, and then, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**. We recommend saving the onboarding package to a removable drive.

5. On a Windows device, extract the contents of the configuration package to a location, such as the Desktop folder. You should have a file named `WindowsDefenderATPLocalOnboardingScript.cmd`. 

6. Open Command Prompt as an administrator.

7. Type the location of the script file. For example, if you copied the file to the Desktop folder, you would type: `%userprofile%\Desktop\WindowsDefenderATPLocalOnboardingScript.cmd`, and then press the Enter key (or select **OK**).

8. After the script runs, proceed to [Run a detection test](#running-a-detection-test-on-a-windows-client).

### Endpoint Manager for Windows clients

### Running a detection test on a Windows client

## [**Windows Server**](#tab/WindowsServers)

*The ability to onboard endpoints running Windows Server is currently in preview.*

See LINK.

## [**macOS**](#tab/macOS)

## Local script for macOS

## Endpoint Manager for macOS

## [**mobile devices**](#tab/mobile)

text
