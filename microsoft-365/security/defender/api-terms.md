---
title: Microsoft 365 Defender APIs license and terms of use
description: Description of the license and terms of use for APIs in Microsoft 365 Defender
keywords: api, apis, license, terms, apis, legal, notices, code of conduct
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---

# Microsoft 365 Defender APIs license and terms of use

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## Official terms

Microsoft 365 Defender APIs are governed by the [Microsoft APIs license and terms of use](https://docs.microsoft.com/legal/microsoft-apis/terms-of-use).

## Legal Notices

Microsoft and any contributors grant you a license to the Microsoft documentation and other content in [this repository](https://github.com/MicrosoftDocs/microsoft-365-docs), under the Creative Commons Attribution 4.0 International Public License. For more information, see the [LICENSE](https://github.com/MicrosoftDocs/microsoft-365-docs/blob/public/LICENSE) file.

Microsoft, Windows, Microsoft Azure and/or other Microsoft products and services referenced in the documentation may be either trademarks or registered trademarks of Microsoft in the United States and/or other countries.

The licenses for this project don't grant you rights to use any Microsoft names, logos, or trademarks. Microsoft's general trademark guidelines can be found at [Microsoft Trademarks](https://go.microsoft.com/fwlink/?LinkID=254653).

Privacy information can be found at [Privacy at Microsoft](https://privacy.microsoft.com).

Microsoft and any contributors reserve all other rights, whether under their respective copyrights, patents, or trademarks, whether by implication, estoppel or otherwise.

## Other restrictions

The advanced hunting API has some [limitations](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/run-advanced-query-api#limitations) on the number of results returned, and the data that can be queried.

1. You can only query data from the past 30 days.
1. The results will include a maximum of 100,000 rows.

### Quotas and resource allocation

The Microsoft 365 Defender APIs have throttling thresholds.

- **Incidents API**: Up to 50 calls per minute or 1500 calls per hour.
- **Advanced Hunting API**: Up to 15 calls per minute, 10 minutes of running time per hour, and 4 hours of running time per day.

The HTTP response status code indicating throttling is `429`.

If your request has been throttled, the response body will indicate the time when you can start making requests again.

## Related articles

- [Microsoft 365 Defender APIs overview](api-overview.md)
- [Supported Microsoft 365 Defender APIs](api-supported.md)
- [Access the Microsoft 365 Defender APIs](api-access.md)
