---
title: Get Microsoft Defender for Business servers
description: Find out how to get Microsoft Defender for Business servers, currently in preview.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: none
ms.date: 08/11/2022
ms.collection: 
- SMB
- m365-security
- tier1

ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
---

# How to get Microsoft Defender for Business servers (preview)

Microsoft Defender for Business servers (preview) enables you to onboard a device running Windows Server or Linux Server to Defender for Business or Microsoft 365 Business Premium. When the Microsoft Defender for Business servers license becomes generally available, you'll need one license for each server instance.

Here's how to get Microsoft Defender for Business servers (preview):

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in. 

2. Turn on preview settings. 

   1. In the navigation pane, select **Settings** \> **Endpoints** \> **Advanced features** \> **Preview features**. 
   2. Turn the setting to **On**, and then select **Save preferences**.

3. Turn on the enforcement scope for Windows Server. 

   1. Go to **Settings** \> **Endpoints** \> **Configuration management** \> **Enforcement scope**. 
   2. Select **Use MDE to enforce security configuration settings from MEM**, select  **Windows Server**, and then select **Save**.

4. Proceed to follow the guidance for Windows Server and Linux Server in [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md).

> [!IMPORTANT]
> Microsoft Defender for Business servers is currently in preview. When it becomes generally available (GA), it will be offered as an add-on to Microsoft 365 Business Premium and the standalone version of Defender for Business. At GA, Microsoft Defender for Business servers will be priced at $3 per server instance.

## See also

- [See the trial playbook: Microsoft Defender for Business](trial-playbook-defender-business.md).
- [Use the setup wizard in Microsoft Defender for Business](mdb-use-wizard.md).
- [See the setup and configuration process for Defender for Business](mdb-setup-configuration.md).
- [See how to get help and support for Defender for Business](mdb-get-help.md) (just in case you need help).