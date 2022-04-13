---
title: "Use the admin log for data connectors to view status about importing data"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date:
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
description: "Learn how to access and view admin logs for data connectors to get status information for the data imported by the connector."
---

# View admin logs for data connectors

After you create a data connector to import non-Microsoft data to Microsoft 365, you can monitor the daily import status of the connector by downloading the admin logs for the data connector.

## Before you view admin logs

- Auditing must be enabled for your organization to generate and view admin log for your organization. Auditing is enabled by default in Microsoft 365. However, we recommend that you verify auditing status of your organization. For instructions, see [Verify the auditing status for your organization](turn-audit-log-search-on-or-off.md#verify-the-auditing-status-for-your-organization). If you need to enable auditing for your organization, see [Turn on auditing](turn-audit-log-search-on-or-off.md#turn-on-auditing).

- After auditing is turned on, it could take up to 48 hours to generate admin logs for data connectors. We recommend that you enable auditing before you create data connectors.

- After a data connector is created, it can take up to 72 hours to generate admin logs that contain import status summary.

- Admin logs are available for the previous seven days.

## Download admin logs for data connectors

1. Go to <https://compliance.microsoft.com/> and then click **Data connectors**.

2. Click the **My connectors** tab and then select a data connector to display the fly out page, which contains information and properties about the data connector.

3. Under **Admin logs**, click the **Download log** link to open an admin log.

   ![Admins logs displayed on the data connector flyout page.](..\media\Data-connector-admin-logs1.png)

4. View the following import status information in the admin log:

    - **Import completion time**: The timestamp (in UTC) when the connector completed importing data from the data source. The other properties in the admin log contain information about the import that was completed.

    - **Items available from source**: The count of items from the data source that were imported to Microsoft 365 by the data connector.

    - **Items available for import**: The count of items that were available for import by the connector. This count includes the sum of items imported successfully, items partially imported, skipped items, and failed items.

    - **Items imported successfully**: The count of items that were successfully imported to user mailboxes.

    - **Items partially imported**: The count of items that were successfully imported to user mailboxes but that had attachments that were dropped.

    - **Items skipped**: The count of items that were skipped from being imported to user mailboxes due to items being duplicate items.

    - **Items failed**: The count of items that failed to be imported to user mailboxes after due to it errors (for example user mapping errors and item size exceeded errors). Events for user mapping errors are logged once per user.

    - **Failed Item Details**: Includes the following summary:

        - **Item Id**: A unique identifier of the item.

        - **Source User ID**: The user Id in the source application; for example, the user's Slack Id.

        - **M365 User ID**: The user's user principal name in Microsoft 365.

        - **Failure Reason**: Indicates the reason why the connector couldn't import the item.

> [!NOTE]
> If no items are imported on a particular day, the admin log contains the following message: `No items ingested on mm/dd/yyyy.`
