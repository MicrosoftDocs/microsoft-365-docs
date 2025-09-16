---
title: Monitor the activity status of files processed for autofill and translation
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: karlha
ms.date: 07/28/2025
audience: admin
ms.topic: article
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to monitor the processing status of files in a SharePoint document library.
---

# Monitor the activity status of files processed for autofill and translation

<sup>**Applies to:**  &ensp; &#10003; Autofill columns &ensp; | &ensp; &#10003; Document translation</sup>

You can now view real-time updates on files processed for autofill columns and document translation. This feature lets you:

- See when a file is being processed.
- Check the status of the file: **In progress**, **Completed**, or **Failed**.
- Understand what worked, what didn’t, and why.

You can view the processing status for a [file that is being processed](#monitor-the-status-of-a-file-being-processed), for a [selected file](#monitor-the-status-of-any-file) or for [all files](#monitor-the-status-of-all-files) in a document library.

> [!NOTE]
> For autofill, the **Status** column is hidden by default in the document library view. If you don’t see it, you can unhide it by customizing the library view.

## Prerequisites

- Ensure your SharePoint library has the [autofill columns service](autofill-overview.md) or the [document translation service](translation-overview.md) enabled.

- Ensure you have permission to view or manage the library.

## Monitor the status of a file being processed

When you submit an on-demand request for autofill or translation:

1. A message bar appears at the top of the library, indicating the action is in progress.

    - For autofill:

        ![Screenshot of the message bar showing that the action is in progress for autofill.](../media/content-understanding/processing-status-message-bar-columns.png)

    - For translation:

        ![Screenshot of the message bar showing that the action is in progress for translation.](../media/content-understanding/processing-status-message-bar-translation.png)

2. On the right side of the message bar:

    - For autofill: Select **View autofill status** to open the **Autofill activity** panel.

    - For translation: Select **View translation status** to open the **Translation activity** panel.

3. The [activity panel](#view-the-activity-panel) shows the current action being processed.

4. The message bar disappears once the request is completed or failed.

## Monitor the status of any file

To view the processing status of one or more files:

1. In a SharePoint document library, select the file or files.

    > [!NOTE]
    > If no files or more than 30 files are selected, the activity panel shows the status for the entire library.

2. From the **More options** (**...**) menu either next to the file name or on the command bar:

    - For autofill: Select **Autofill columns** > **View recent activity**.

        ![Screenshot of the More options menu showing Autofill columns and View recent activity.](../media/content-understanding/processing-status-view-recent-activity-columns.png)

    - For translation: Select **Translate** > **View recent activity**.

        ![Screenshot of the More options menu showing Translate and View recent activity.](../media/content-understanding/processing-status-view-recent-activity-translation.png)

3. Depending on the service you selected, the corresponding [activity panel](#view-the-activity-panel) opens.

## Monitor the status of all files

To view the processing status of all files in the library:

1. In a SharePoint document library, on the command bar:

    - For autofill: Select **More options** (**...**) > **Autofill columns** > **View recent activity**.

    - For translation: Select **Translate** > **View recent activity**.

2. Depending on the service you selected, the corresponding [activity panel](#view-the-activity-panel) opens.

## View the activity panel

The activity panel displays a list of file processing events, including:

- File name
- Summary of the action that was performed, or information about why it failed
- Processing status: **In progress**, **Completed**, or **Failed**
- Date and time of the event

    ![Screenshot of the activity panel in a SharePoint library.](../media/content-understanding/processing-status-activity-panel-columns.png)

> [!NOTE]
> If no files or more than 30 files are selected, the activity pane displays the processing status for the entire library, rather than for individual files.

### Filter activity options

By default, the panel shows activity for the last 60 days.

- To filter by date: **Filter** > **Date range**

- To show only failed files: **Filter** > **Failed status**

### Status definitions

| Status       | Description                                                                 |
|--------------|-----------------------------------------------------------------------------|
| In&nbsp;progress  | The service has started processing the file. A timestamp is displayed.           |
| Completed    | The service has finished processing successfully. A description of the completed actions is provided. |
| Failed       | The service has encountered an error. A description of the cause of the failure is provided. |
