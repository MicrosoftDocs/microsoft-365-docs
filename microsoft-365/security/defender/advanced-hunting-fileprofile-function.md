---
title: FileProfile() function in advanced hunting for Microsoft Defender XDR
description: Learn how to use the FileProfile() to enrich information about files in your advanced hunting query results
search.appverid: met150
ms.service: defender-xdr
ms.subservice: adv-hunting
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: reference
ms.date: 02/16/2024
---

# FileProfile()

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft Defender XDR

The `FileProfile()` function is an enrichment function in [advanced hunting](advanced-hunting-overview.md) that adds the following data to files found by the query.

| Column | Data type | Description |
|------------|---------------|-------------|
| `SHA1` | `string` | SHA-1 of the file that the recorded action was applied to |
| `SHA256` | `string` | SHA-256 of the file that the recorded action was applied to |
| `MD5` | `string` | MD5 hash of the file that the recorded action was applied to |
| `FileSize` | `int` | Size of the file in bytes |
| `GlobalPrevalence` | `int` | Number of instances of the entity observed by Microsoft globally |
| `GlobalFirstSeen` | `datetime` | Date and time when the entity was first observed by Microsoft globally |
| `GlobalLastSeen` | `datetime` | Date and time when the entity was last observed by Microsoft globally |
| `Signer` | `string` | Information about the signer of the file |
| `Issuer` | `string` | Information about the issuing certificate authority (CA) |
| `SignerHash` | `string` | Unique hash value identifying the signer |
| `IsCertificateValid` | `boolean` | Whether the certificate used to sign the file is valid |
| `IsRootSignerMicrosoft` | `boolean` | Indicates whether the signer of the root certificate is Microsoft and the file is built in to Windows OS |
| `SignatureState` | `string` | State of the file signature: SignedValid - the file is signed with a valid signature, SignedInvalid - the file is signed but the certificate is invalid, Unsigned - the file isn't signed, Unknown - information about the file can't be retrieved
| `IsExecutable` | `boolean` | Whether the file is a Portable Executable (PE) file |
| `ThreatName` | `string` | Detection name for any malware or other threats found |
| `Publisher` | `string` | Name of the organization that published the file |
| `SoftwareName` | `string` | Name of the software product |
| `ProfileAvailability` | `string` | Indicates the availability status of the profile data for the file: Available - profile was successfully queried and file data returned, Missing - profile was successfully queried but no file info was found, Error - error in querying the file info or maximum allotted time was exceeded before query could be completed, or an empty value - if file ID is invalid or the maximum number of files was reached |




## Syntax

```kusto
invoke FileProfile(x,y)
```

## Arguments

- **x**—file ID column to use: `SHA1`, `SHA256`, `InitiatingProcessSHA1`, or `InitiatingProcessSHA256`; function uses `SHA1` if unspecified
- **y**—limit to the number of records to enrich, 1-1000; function uses 100 if unspecified


> [!TIP]
> Enrichment functions will show supplemental information only when they are available. Availability of information is varied and depends on a lot of factors. Make sure to consider this when using FileProfile() in your queries or in creating custom detections. For best results, we recommend using the FileProfile() function with SHA1.

## Examples

### Project only the SHA1 column and enrich it

```kusto
DeviceFileEvents
| where isnotempty(SHA1) and Timestamp > ago(1d)
| take 10
| project SHA1
| invoke FileProfile()
```

### Enrich the first 500 records and list low-prevalence files

```kusto
DeviceFileEvents
| where ActionType == "FileCreated" and Timestamp > ago(1d)
| project CreatedOn = Timestamp, FileName, FolderPath, SHA1
| invoke FileProfile("SHA1", 500) 
| where GlobalPrevalence < 15
```

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Get more query examples](advanced-hunting-shared-queries.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
