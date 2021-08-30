---
title: Create indicators based on certificates
ms.reviewer:
description: Create indicators based on certificates that define the detection, prevention, and exclusion of entities.
keywords: ioc, certificate, certificates, manage, allowed, blocked, block, clean, malicious, file hash, ip address, urls, domain
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Create indicators based on certificates

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

You can create indicators for certificates. Some common use cases include:

- Scenarios when you need to deploy blocking technologies, such as [attack surface reduction rules](attack-surface-reduction.md) and [controlled folder access](controlled-folders.md) but need to allow behaviors from signed applications by adding the certificate in the allow list.
- Blocking the use of a specific signed application across your organization. By creating an indicator to block the certificate of the application, Windows Defender AV will prevent file executions (block and remediate) and the Automated Investigation and Remediation behave the same.

## Before you begin

It's important to understand the following requirements prior to creating indicators for certificates:

- This feature is available if your organization uses Windows Defender Antivirus and Cloud-based protection is enabled. For more information, see [Manage cloud-based protection](/windows/security/threat-protection/microsoft-defender-antivirus/deploy-manage-report-microsoft-defender-antivirus).
- The Antimalware client version must be  4.18.1901.x or later.
- Supported on machines on Windows 10, version 1703 or later, Windows server 2016 and 2019.
- The virus and threat protection definitions must be up to date.
- This feature currently supports entering .CER or .PEM file extensions.

> [!IMPORTANT]
>
> - A valid leaf certificate is a signing certificate that has a valid certification path and must be chained to the Root Certificate Authority (CA) trusted by Microsoft. Alternatively, a custom (self-signed) certificate can be used as long as it's trusted by the client (Root CA certificate is installed under the Local Machine 'Trusted Root Certification Authorities').
> - The children or parent of the allow/block certificate IOCs are not included in the allow/block IoC functionality, only leaf certificates are supported.
> - Microsoft signed certificates cannot be blocked.

## Create an indicator for certificates from the settings page:

> [!IMPORTANT]
> It can take up to 3 hours to create and remove a certificate IoC.

1. In the navigation pane, select **Settings** \> **Endpoints** \> **Indicators** (under **Rules**).

2. Select **Add indicator**.

3. Specify the following details:
   - Indicator - Specify the entity details and define the expiration of the indicator.
   - Action - Specify the action to be taken and provide a description.
   - Scope - Define the scope of the machine group.

4. Review the details in the Summary tab, then click **Save**.

## Related topics

- [Create indicators](manage-indicators.md)
- [Create indicators for files](indicator-file.md)
- [Create indicators for IPs and URLs/domains](indicator-ip-domain.md)
- [Manage indicators](indicator-manage.md)
