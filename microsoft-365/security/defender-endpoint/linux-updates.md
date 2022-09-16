---
title: Deploy updates for Microsoft Defender for Endpoint on Linux
ms.reviewer: 
description: Describes how to deploy updates for Microsoft Defender for Endpoint on Linux in enterprise environments.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, updates, deploy
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Deploy updates for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features.

> [!WARNING]
> Each version of Defender for Endpoint on Linux has an expiration date, after which it will no longer continue to protect your device. You must update the product prior to this date. To check the expiration date, run the following command:
> ```bash
> mdatp health --field product_expiration
> ```


Generally available Microsoft Defender for Endpoint capabilities are equivalent regardless update channel used for a deployment (Beta (Insider), Preview (External), Current (Production)).


To update Defender for Endpoint on Linux manually, execute one of the following commands:

## RHEL and variants (CentOS and Oracle Linux)

```bash
sudo yum update mdatp
```

## SLES and variants

```bash
sudo zypper update mdatp
```

## Ubuntu and Debian systems

```bash
sudo apt-get install --only-upgrade mdatp
```

> [!IMPORTANT]
> When integrating Microsoft Defender for Endpoint and Defender for Cloud, the mdatp agent will automatically receive updates by default.
