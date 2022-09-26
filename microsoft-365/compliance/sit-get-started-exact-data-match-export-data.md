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
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: Learn how to export source data for exact data match based sensitive information type.
ms.custom: seo-marvel-apr2020
---

# Export source data for exact data match based sensitive information type

## Applies to

- [New experience](sit-create-edm-sit-unified-ux-workflow.md)
- [Classic experience](sit-create-edm-sit-classic-ux-workflow.md)

The sensitive data table is a text file containing rows of values against which you will be comparing content in your documents to identify sensitive data. These values might be personally identifiable information, product records, or other sensitive data in text form that you want to detect in content and take protective actions on.

Once the data has been exported in one of the supported formats, you can proceed with the creation of an EDM schema.

## Defining your EDM Sensitive type

When defining your EDM sensitive type, one of the most critical decisions is to define which fields will be primary fields. Primary fields need to follow a detectable pattern and be defined as searchable fields (columns) in your EDM schema. Secondary fields do not need to follow any pattern since they will be compared against all the text surrounding matches to the primary fields.

Use these rules to help you decide which columns you should use as primary fields:

- If you must detect sensitive data based on the presence of a single value matching a field in your sensitive data table, regardless of the presence of any other sensitive data surrounding it, that column must be defined as a primary element for an EDM type. 
- If multiple combinations of different fields in your sensitive data table must be detected in content, identify the columns that are common to most such combinations and designate them as primary elements and combinations of the other fields as secondary elements.
- If a column you want to use as a primary field does not follow a detectable pattern, like any text string or follows detectable patterns that would be present somewhere in a large percentage of documents or emails, try to choose other better structured columns as primary elements.

For example, if you have the columns `full name`, `date of birth`, `account number`, and `Social Security Number`, even if the first and last names are the columns that will be common to the different combinations of data you want to detect, such strings don’t follow easily identifiable patterns and may be difficult to define as a sensitive information type. This is because some names might not even start with uppercase, they may be formed by two, three or more words and may even contain numbers or other non-alphabetical characters. Date of birth can be more easily identified, but since every email and most documents will contain at least one date it is also not a good candidate. Social security numbers and account numbers are good candidates for use as primary field.

## Save sensitive data in .csv, .tsv, or pipe-separated format

1. Identify the sensitive information you want to use. Export the data to an app such as Microsoft Excel, and save the file in a text file. The file can be saved in .csv (comma-separated values), .tsv (tab-separated values), or pipe-separated (|) format. The .tsv format is recommended in cases where your data values may include commas, such as street addresses.
The data file can include a maximum of:
   - Up to 100 million rows of sensitive data
   - Up to 32 columns (fields) per data source
   - Up to 5 columns (fields) marked as searchable

2. Structure the sensitive data in the .csv or .tsv file such that the first row includes the names of the fields used for EDM-based classification. In your file you might have field names such as "ssn", "birthdate", "firstname", "lastname". The column header names can't include spaces or underscores. For example, the sample .csv file that we use in this article is named *PatientRecords.csv*, and its columns include *PatientID*, *MRN*, *LastName*, *FirstName*, *SSN*, and more.

3. Pay attention to the format of the sensitive data fields; in particular, fields that may contain commas in their content. For example, a street address that contains the value "Seattle,WA" would be parsed as two separate fields when parsed if the .csv format is selected. To avoid this, use the .tsv format or surrounded the comma containing values by double quotes in the sensitive data table. If comma containing values also contain spaces, you need to create a custom SIT that matches the corresponding format. For example, a SIT that detects multi-word string with commas and spaces in it.

## Next step

- **For new experience**: [Create EDM SIT sample file for the new experience](sit-create-edm-sit-unified-ux-sample-file.md)

or

- **For classic experience**: [Create the schema for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md)

## See also

- [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md#get-started-with-exact-data-match-based-sensitive-information-types)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
