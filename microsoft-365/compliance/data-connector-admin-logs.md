---
title: "Use the admin log for data connectors to view status about importing data"
description: "Learn how to access and view admin logs for data connectors to get status information for the data imported by the connector."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date:
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier3
- purview-compliance
- data-connectors
search.appverid:
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
---

# View admin logs for data connectors

After you create a data connector to import non-Microsoft data to Microsoft Purview, you can monitor the daily import status of the connector by downloading the admin logs for the data connector.

> [!IMPORTANT]
> Audit logging must be enabled for your organization to view admin log. It is enabled by default for Microsoft 365 and Office 365 organizations, but we strongly recommend that you verify auditing status of your organization. For instructions to check auditing status, please click here. For instructions to turn on auditing manually, please click here. Once auditing is turned on, it could take up to 48 hours to log import events. We strongly recommend enabling auditing before a connector is configured. Once a connector is configured, it could take up to 72 hours to generate logs that contains import status summary.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you view admin logs

- Auditing must be enabled for your organization to generate and view admin log for your organization. Auditing is enabled by default in Microsoft Purview. However, we recommend that you verify auditing status of your organization. For instructions, see [Verify the auditing status for your organization](turn-audit-log-search-on-or-off.md#verify-the-auditing-status-for-your-organization). If you need to enable auditing for your organization, see [Turn on auditing](turn-audit-log-search-on-or-off.md#turn-on-auditing).

- After auditing is turned on, it could take up to 48 hours to generate admin logs for data connectors. We recommend that you enable auditing before you create data connectors.

- After a data connector is created, it can take up to 72 hours to generate admin logs that contain import status summary.

- Admin logs are available for the previous seven days.

## Download admin logs for data connectors

1. Go to <https://compliance.microsoft.com/> and then click **Data connectors**.

2. Click the **My connectors** tab and then select a data connector to display the fly out page, which contains information and properties about the data connector.

3. Under **Admin logs**, click the **Download log** link to open an admin log.

   ![Admins logs displayed on the data connector flyout page.](..\media\Data-connector-admin-logs1.png)

4. View the following import status information in the admin log:

    - **Import completion time**:  timestamp (in UTC)  when connector completes import from data source and all the below events are computed/updated against the import.
    - **Items available from source**: count of items that were downloaded by Connector from data source.
    - **Items available for import**: count of items that were available for import by Connector after fanout. Fanout represents the act of writing a message to all associated participants (sender, receiver etc.).
    - **Items imported successfully**: count of items that were imported successfully by Connector into user mailboxes after fanout.
    - **Items partially imported**: count of items that were imported successfully by Connector into user mailboxes after fanout but had attachments dropped.
    - **Items skipped**: count of items that were skipped from being imported into user mailboxes after fanout due to it being duplicate items.
    - **Items failed**: count of items that failed to be imported into user mailboxes after fanout due to it errors (like user mapping, item size exceeded etc.). Event is logged once per user for user mapping failures.

    > [!NOTE]
    > Items available for import should be a sum of items imported successfully, partially imported, skipped and failed.

    - Summary of Failed item details:
      - **Item id** – unique identifier of the item
      - **Source User ID** – user id at source application
      - **M365 User ID** – User Principal Name in M365
      - **Failure Reason** – indicates the reason why the connector could not import the item

      If there are no items ingested on a particular day, then the message below will be present in the log file:

      No items ingested on date in *mm/dd/yyyy*.

> [!NOTE]
> If no items are imported on a particular day, the admin log contains the following message: `No items ingested on mm/dd/yyyy.`
