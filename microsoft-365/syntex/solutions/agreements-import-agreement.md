---
title: Import an agreement in SharePoint Agreements
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssathyamoort
ms.date: 12/10/2024
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to import an agreement in the SharePoint Agreements solution.
---

# Import an agreement in SharePoint Agreements

You can add existing agreements by uploading signed documents. Select a file to be imported as a signed agreement. Details about the agreement will be automatically detected after you save.

> [!NOTE]
> To import scanned PDF files and extract data from them, you need to enable the [OCR pay-as-you-go service](/microsoft-365/syntex/ocr-overview).

To import an agreement, follow these steps:

1. From the Agreements app in Microsoft Teams, start an import by using either of these two methods.

    - On the **Home** tab, select the **Import an agreement** card.

    - On the **Agreements** tab, select the **Import** button.

2. On the **Import signed agreements** page, browse to and pick the file that you want to import. The file must be a PDF.

   ![A screenshot of Import signed agreements page.](../../media/content-understanding/agreements-import-dialog.png)

3. Choose the workspace where the agreement should be stored, and then pick the category to which the agreement belongs.

4. Select **Next** to process the file and detect fields.

5. Once processing is complete, review the extracted values and confirm if they're correct. If a field isn't applicable, leave it blank.

   ![A screenshot of the agreement page showing the Confirm fields panel.](../../media/content-understanding/agreements-import-fields.png)

   > [!NOTE]
   > The values in the fields can't be changed later.

6. Select **Save** to confirm the import. The imported agreement will be visible in the list of agreements.

   > [!NOTE]
   > It might take a few hours for the new agreement to be indexed and show up in the list of agreements.

<br>

> [!div class="nextstepaction"]
> [See the complete list of help documentation.](agreements-overview.md#help-documentation)
