---
title: Import a term set using SKOS
description: "Learn how to Import a term set using SKOS"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW

---
# Import a term set using SKOS

You can import a term set using the SKOS format. We recommend keeping your import files to less than 20,000 terms. Larger files can increase the time taken for validation and import.

1. In the SharePoint admin center, expand **Content services**, and then click **Term store**.

2. Select the term group where you want to import the term set.

3. In the command bar, click **Import term set**.
 
4.	If you want to download a sample file to use as a template, click **sample-metadata.ttl** to get a sample file that uses the SKOS format.
 
5.	Create the import file that contains the term sets & terms you wish to import.

6.	Under **File format**, select **SKOS (*.ttl)**.

7.	Click **Browse** and navigate to and add your import file.

8.	Click **Import**. Do not close the panel until the import completes.

On successful import of the file, a success message will be displayed, and the term store will refresh and you can navigate to the newly created term sets.

## See also



  






