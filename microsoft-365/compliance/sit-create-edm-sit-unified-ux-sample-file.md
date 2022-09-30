---
title: "Create EDM SIT sample file for the new experience"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date:
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
description: Create the sample file to use in the new experience.
ms.custom: seo-marvel-apr2020
---

# Create EDM SIT sample file for the new experience

Creating and making an exact data match (EDM) based sensitive information type (SIT) available is a multi-phase process. They can be used in Microsoft Purview data loss prevention policies, eDiscovery and certain content governance tasks  This article outlines the workflow and links to the procedures for each phase using the classic experience.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Applies to

- New experience

If you want to create an EDM SIT using the classic experience see, [Create EDM SIT classic experience](sit-create-edm-sit-classic-ux-workflow.md).

## Before you begin

- Make sure you've complete the steps in [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md).

## Formatting the sample file

The system will extract the column names from the sample file to create the schema, and will recommend base SITs to map the sample field data to. It must be formatted identically to your source sensitive information table file and should contain synthetic values that are representative of your actual data. The file can be saved in .csv (comma-separated values), .tsv (tab-separated values), or pipe-separated (|) format, but should be the same as your actual source sensitive information table file. The .tsv format is recommended in cases where your data values may included commas, such as street addresses.

- Use about 10-20 rows of data to ensure that the system has enough samples to work with.
- Field values that contain commas must be enclosed in quotes *"*.
- The first row must be the header row and contain column names.
- The file must contain at least one row of data.
- Each row of data must contain the correct number of fields, corresponding to the headers.
- The sample file contain up to 32 columns.
- The sample file can exceed 2.5 MB in size.
- Column (field) names must start with a letter, be at least three characters long, and consist of only alphanumeric characters (A-Z, a-z, 0-9) and can’t include spaces, underscores or other special characters. 

For example, if your actual data looks like this and uses tab delimited (.tsv) format

![image showing a tab separated table with four columns and three rows of data of artificial real data](../media/sit-edm-tsv-actual-file.png)

Then your sample file must have the same column headers, but use synthetic values for the rows, like this

![image showing a tab separated table with four columns and three rows of synthetic representative data](../media/sit-edm-tsv-sample-file.png)

> [!TIP]
> In the new experience, you choose between uploading the sample file or entering the sample file values manually. Either way, we recommend creating the sample file.

## Next step

- **For new experience**: [Create EDM SIT schema and rule package](sit-create-edm-sit-unified-ux-schema-rule-package.md)
