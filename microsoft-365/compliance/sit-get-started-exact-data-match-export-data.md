---
title: "Export source data for exact data match based sensitive information type"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date:
localization_priority: Normal
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: Learn how to export source data for exact data match based sensitive information type.
ms.custom: seo-marvel-apr2020
---

# Export source data for exact data match based sensitive information type

### Part 1: Set up EDM-based classification

1. [Saving sensitive data in .csv or .tsv format](#save-sensitive-data-in-csv-or-tsv-format)


#### Save sensitive data in .csv or .tsv format

1. Identify the sensitive information you want to use. Export the data to an app, such as Microsoft Excel, and save the file in a text file. The file can be saved in .csv (comma-separated values), .tsv (tab-separated values), or pipe-separated (|) format. The .tsv format is recommended in cases where your data values may included commas, such as street addresses.
The data file can include a maximum of:
   - Up to 100 million rows of sensitive data
   - Up to 32 columns (fields) per data source
   - Up to 5 columns (fields) marked as searchable

2. Structure the sensitive data in the .csv or .tsv file such that the first row includes the names of the fields used for EDM-based classification. In your file you might have field names such as "ssn", "birthdate", "firstname", "lastname". The column header names can't include spaces or underscores. For example, the sample .csv file that we use in this article is named *PatientRecords.csv*, and its columns include *PatientID*, *MRN*, *LastName*, *FirstName*, *SSN*, and more.

3. Pay attention to the format of the sensitive data fields. In particular, fields that may contain commas in their content, for example, a street address that contains the value "Seattle,WA" would be parsed as two separate fields when parsed if the .csv format is selected. To avoid this, use the .tsv format or surrounded the comma containing values by double quotes in the sensitive data table. If comma containing values also contain spaces, you need to create a custom SIT that matches the corresponding format. For example, a SIT that detects multi-word string with commas and spaces in it.

