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

<!-- TODD START HERE, COLLAPSE THIS DOWN, COMPARE IT TO THE THE STEPS UNDER ## Save sensitive data in .csv, .tsv or pipe-separated format-->
The sensitive data table is a text file containing rows of values against which you will be comparing content in your documents to identify sensitive data. These values might be personally identifiable information for your customers, product records or any other sensitive data that you have in text form in some data source and whose presence you want to detect in content in your organization to take actions such as protecting it or blocking sharing with external persons. 

You must first obtain a copy of the sensitive data in a format that's useable to EDM.

Before your sensitive data can be hashed and imported into the cloud service, it must be exported from a valid data source. Such sources may be line of business applications, customer relationship management systems, databases, etc., that contain copies of the data you want to protect. 
The data must be in tabular format, with one or more columns representing different aspects of each subject (e.g. an account number, name or other identifiers), and one row representing each subject (e.g. a customer, employee, company, project, etc.). 
When exporting the data, you must use a Unicode-based text file in one of the following formats: 
•	Comma-separated values (CSV). In this format each value is separated by a comma from the next one. If any values may have commas in them, they must be surrounded by single or double quotes. If any value may have single quotes apostrophes or any other forms of the single quote character, that field must be surrounded by double quotes. If any value may have double quotes inside them, the whole field must be surrounded by single quotes. In most of these cases it is easier to use one of the two other formats rather than CSV since it's unlikely the content of the sensitive data will include tab or pipe characters so the chances of there being any ambiguity on where columns begin and end are greatly reduced.
•	Tab-separated values (TSV). In this format each value is separated by Tabulation characters (Unicode character 0009) from the next one. In this format, tab characters are not supported inside any values, but commas, quotes and other characters are supported. 
•	Pipe-separated values. In this format each value is separated by a pipe character ("|"), from the next one. If any values may have pipe characters in them, they must be surrounded by single or double quotes. Commas, quotes, tabs and other characters are supported inside values in this format.
Each row must have the same number of columns, and the first row in the table must have column names (without spaces or underscores in them) separated in the same way as the values in the table.
The table can have up to:
•	100 million rows of sensitive data
•	32 columns (fields) per data source
•	5 columns (fields) marked as searchable (see Create or Modify a Schema for exact data matching for information on searchable fields)
Once the data has been exported in one of the supported formats, you can proceed with the creation of an EDM schema, before hashing and uploading your sensitive data. 
 <!-- TODD STOP HERE-->

1. [Saving sensitive data in .csv or .tsv format](#save-sensitive-data-in-csv-or-tsv-format)

## Save sensitive data in .csv, .tsv or pipe-separated format

1. Identify the sensitive information you want to use. Export the data to an app, such as Microsoft Excel, and save the file in a text file. The file can be saved in .csv (comma-separated values), .tsv (tab-separated values), or pipe-separated (|) format. The .tsv format is recommended in cases where your data values may included commas, such as street addresses.
The data file can include a maximum of:
   - Up to 100 million rows of sensitive data
   - Up to 32 columns (fields) per data source
   - Up to 5 columns (fields) marked as searchable

2. Structure the sensitive data in the .csv or .tsv file such that the first row includes the names of the fields used for EDM-based classification. In your file you might have field names such as "ssn", "birthdate", "firstname", "lastname". The column header names can't include spaces or underscores. For example, the sample .csv file that we use in this article is named *PatientRecords.csv*, and its columns include *PatientID*, *MRN*, *LastName*, *FirstName*, *SSN*, and more.

3. Pay attention to the format of the sensitive data fields. In particular, fields that may contain commas in their content, for example, a street address that contains the value "Seattle,WA" would be parsed as two separate fields when parsed if the .csv format is selected. To avoid this, use the .tsv format or surrounded the comma containing values by double quotes in the sensitive data table. If comma containing values also contain spaces, you need to create a custom SIT that matches the corresponding format. For example, a SIT that detects multi-word string with commas and spaces in it.

## See also