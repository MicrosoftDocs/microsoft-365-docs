---
title: Export incidents queue to CSV files
description: Learn about the newly introduced Export button to migrate incidents queue-related data to CSV files
keywords: incident, queue, export, csv
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - m365initiative-m365-defender
  - tier3
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 07/11/2022
---

# Export incidents queue to CSV files

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

The **Export** feature allows you to export the data in the incident queue that is displayed according to the applied filters and time ranges. It's available in the form of a button named **Export**, as displayed in the following screenshot:

:::image type="content" source="../../media/defender/incidents-queue-with-export-button.png" alt-text="Shows the Export button in the Incidents page  of the Microsoft 365 Defender portal":::

When you click the **Export** button, the data is exported to a CSV file. You can apply various filters and time ranges to the incidents queue (not just in the context of exporting the data, but in a generic context). When you select **Export**, whichever filters and/or time ranges are applied to the incidents queue, such data is exported to the CSV file.

Once you export the incidents queue-related data onto the CSV file, you can analyze the data and filter it further, based on your requirements.

For example, for the data on the CSV file, you can apply filters to view the following data:
- Data regarding how many high-severity incidents you had in the last 30 days.
- Data regarding who is your most productive analyst.

> [!NOTE]
> The maximum number of records you can export to a CSV file is 10,000. 

If you have thoughts or suggestions about the new **Export** feature (the **Export** button) for the incident queue, contact Microsoft team or send your feedback through the Microsoft 365 Defender portal.
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
