---
title: Organize and import your existing agreements in SharePoint Agreements
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssathyamoort
ms.date: 02/21/2025
audience: admin
ms.topic: how-to
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to import and organize your agreements in the SharePoint Agreements solution.
---

# Organize and import your existing agreements in SharePoint Agreements

SharePoint Agreements allows you to import your existing agreements effortlessly and gain immediate, valuable insights to help you stay on top of your contractual obligations. During the import process, important details about each agreement, such as the first party, second party, effective date, and expiry date, are automatically detected. This ensures that all relevant information is accurately captured and organized. Once your agreements are imported, you can immediately gain valuable insights into your contracts such as a clear breakdown of your agreements by category, the key players in your agreements, insights, and reminders for agreements that are about to expire.

You can add existing agreements by uploading signed documents. Details about the agreements will be automatically detected after you save.

> [!NOTE]
> To import scanned PDF files and extract data from them, you need to enable the [OCR pay-as-you-go service](/microsoft-365/syntex/ocr-overview).

To import agreements, follow these steps:

1. From the Agreements app in Microsoft Teams, start an import by using either of these two methods.

    - On the **Home** tab, select the **Import a agreements** card.

    - On the **Agreements** tab, select the **Import** button and select **Import signed agreements**.

2. On the **Import signed agreements** dialog, browse to and pick the files that you want to import. The files must be a PDF.

   ![A screenshot of Import signed agreements page.](../../media/content-understanding/agreements-import-dialog.png)

3. Choose the workspace where the agreements should be stored, and then pick the category to which the agreements belong.

4. Select **Next** to upload and process the files to detect fields. This process might take time, and you can come back to review the detected details.

5. To see the list of agreements pending your confirmation, go to the **Agreements** tab, select the **Import** button, and then select **Review pending imports**.

   [![A screenshot of Agreements app showing the pending imports page with one file.](../../media/content-understanding/agreements-pendingImport.png)](../../media/content-understanding/agreements-pendingImport.png#lightbox)

6. The **Pending imports** page opens and shows you the list of all imported agreements that are pending your review.

7. There are three possible states for each pending import:

   |Status  |Description  |
   |---------|---------|
   |Processing    |The file is still being processed. Check back later.         |
   |Action needed    |Details have been detected, and user action is needed for a few mandatory fields.         |
   |Ready to confirm    |All details have been detected, and the file is ready to be reviewed and confirmed.         |

8. For files that are ready to confirm, you can either preview the file by clicking on the file, or select the file and confirm the values with the Confirm button on the action bar. You can confirm multiple files in the ready to confirm status at once.

9. For files that are in *Action needed* status, select the file to preview the file and provide values for mandatory fields. Once all mandatory fields are set, you can confirm the file.

   > [!NOTE]
   > The values in the fields can't be changed later.

10. You can also delete files from the pending imports page. Deleting a file removes it from the workspace.

   > [!NOTE]
   > It might take a few hours for the new agreement to be indexed and show up in the list of agreements.
 
> [!NOTE]
> You can either import a single signed agreement, or import multiple agreements in bulk. Depending on the number of files you imported, the experience to review the detected changes differ.

## Review detected details for a single imported agreement

If you're importing a single file, you can review the detected details immediately in the same flow.

1. Once processing is complete, review the extracted values and confirm if they're correct. If a field isn't applicable, leave it blank.

   [![A screenshot of the agreement page showing the Confirm fields panel.](../../media/content-understanding/agreements-import-fields.png)](../../media/content-understanding/agreements-import-fields.png#lightbox)

   > [!NOTE]
   > The values in the fields can't be changed later.

2. Select **Save** to confirm the import. The imported agreement is visible in the list of agreements.

   > [!NOTE]
   > It might take a few hours for the new agreement to be indexed and show up in the list of agreements.

<br>

<br>

> [!div class="nextstepaction"]
> [See the complete list of help documentation.](agreements-overview.md#help-documentation)
