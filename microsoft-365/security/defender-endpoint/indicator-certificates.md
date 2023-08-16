---
title: Create indicators based on certificates
ms.reviewer:
description: Create indicators based on certificates that define the detection, prevention, and exclusion of entities.
keywords: ioc, certificate, certificates, manage, allowed, blocked, block, clean, malicious, file hash, ip address, urls, domain
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Create indicators based on certificates

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

You can create indicators for certificates. Some common use cases include:

- Scenarios when you need to deploy blocking technologies, such as [attack surface reduction rules](attack-surface-reduction.md) and [controlled folder access](controlled-folders.md) but need to allow behaviors from signed applications by adding the certificate in the allow list.
- Blocking the use of a specific signed application across your organization. By creating an indicator to block the certificate of the application, Windows Defender AV will prevent file executions (block and remediate) and the Automated Investigation and Remediation behave the same.

## Before you begin

It's important to understand the following requirements prior to creating indicators for certificates:

- This feature is available if your organization uses Microsoft Defender Antivirus and Cloud-based protection is enabled. For more information, see [Manage cloud-based protection](/windows/security/threat-protection/microsoft-defender-antivirus/deploy-manage-report-microsoft-defender-antivirus).
- The Antimalware client version must be  4.18.1901.x or later.
- Supported on machines on Windows 10, version 1703 or later, Windows Server 2019, Windows Server 2016, Windows Server 2012 R2, and Windows Server 2022.

  > [!NOTE]
  > Windows Server 2016 and Windows Server 2012 R2 will need to be onboarded using the instructions in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016) for this feature to work.

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

## Related articles

- [Create indicators](manage-indicators.md)
- [Create indicators for files](indicator-file.md)
- [Create indicators for IPs and URLs/domains](indicator-ip-domain.md)
- [Manage indicators](indicator-manage.md)
- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
