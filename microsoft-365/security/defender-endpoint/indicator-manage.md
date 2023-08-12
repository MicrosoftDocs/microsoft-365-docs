---
title: Manage indicators
ms.reviewer:
description: Manage indicators for a file hash, IP address, URLs, or domains that define the detection, prevention, and exclusion of entities.
keywords: import, indicator, list, ioc, csv, manage, allowed, blocked, block, clean, malicious, file hash, ip address, urls, domain
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

# Manage indicators

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

1. In the navigation pane, select **Settings** \> **Endpoints** \> **Indicators** (under **Rules**).

2. Select the tab of the entity type you'd like to manage.

3. Update the details of the indicator and click **Save** or click the **Delete** button if you'd like to remove the entity from the list.

## Import a list of IoCs

You can also choose to upload a CSV file that defines the attributes of indicators, the action to be taken, and other details.

Download the sample CSV to know the supported column attributes.

1. In the navigation pane, select **Settings** \> **Endpoints** \> **Indicators** (under **Rules**).

2. Select the tab of the entity type you'd like to import indicators for.

3. Select **Import** \> **Choose file**.

4. Select **Import**. Do this for all the files you'd like to import.

5. Select **Done**.

> [!NOTE]
> Only 500 indicators can be uploaded for each batch. 
>
> Attempting to import indicators with specific categories requires the string to be written in Pascal case convention and only accepts the category list available at the portal.

The following table shows the supported parameters.

Parameter|Type|Description
:---|:---|:---
indicatorType|Enum|Type of the indicator. Possible values are: "FileSha1", "FileSha256", "IpAddress", "DomainName" and "Url". **Required**
indicatorValue|String|Identity of the [Indicator](ti-indicator.md) entity. **Required**
action|Enum|The action that will be taken if the indicator will be discovered in the organization. Possible values are: "Allowed", "Audit", "BlockAndRemediate", "Warn", and "Block". **Required**
title|String|Indicator alert title. **Required**
description|String| Description of the indicator. **Required**
expirationTime|DateTimeOffset|The expiration time of the indicator in the following format YYYY-MM-DDTHH:MM:SS.0Z. The indicator gets deleted if the expiration time passes and whatever happens at the expiration time occurs at the seconds (SS) value. **Optional**
severity|Enum|The severity of the indicator. Possible values are: "Informational", "Low", "Medium" and "High". **Optional**
recommendedActions|String|TI indicator alert recommended actions. **Optional**
rbacGroups|String|Comma-separated list of RBAC groups the indicator would be applied to. **Optional**
category|String|Category of the alert. Examples include: Execution and credential access. **Optional**
mitretechniques|String|MITRE techniques code/id (comma separated). For more information, see [Enterprise tactics](https://attack.mitre.org/tactics/enterprise/). **Optional** It is recommended to add a value in category when a MITRE technique.
GenerateAlert|String|Whether the alert should be generated. Possible Values are: True or False. **Optional**

> [!NOTE]
> Classless Inter-Domain Routing (CIDR) notation for IP addresses is not supported.
For more information, see [Microsoft Defender for Endpoint alert categories are now aligned with MITRE ATT&CK!](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/microsoft-defender-atp-alert-categories-are-now-aligned-with/ba-p/732748).

Watch this video to learn how Microsoft Defender for Endpoint provides multiple ways to add and manage Indicators of compromise (IoCs). 
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4qLVw]

## See also

- [Create indicators](manage-indicators.md)
- [Create indicators for files](indicator-file.md)
- [Create indicators for IPs and URLs/domains](indicator-ip-domain.md)
- [Create indicators based on certificates](indicator-certificates.md)
- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
